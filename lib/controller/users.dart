// import 'package:firebase_auth/firebase_auth.dart';
import 'dart:convert';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myproject_2_client/myproject_2_client.dart';
import 'package:myproject_2_flutter/import_helper.dart';
import 'package:myproject_2_flutter/model/member.dart';
import 'package:serverpod_auth_client/module.dart';
import 'package:uuid/uuid.dart';

var userPod =
    StateNotifierProvider<UserData, RoomMember>((ref) => UserData(ref));

var getInitData = FutureProvider((ref) async {
  int userId = sessionManager.signedInUser!.id!;
  await ref.watch(userPod.notifier).getMyInfo();
});

var getMyRoomData = FutureProvider.family<RoomMember, int>((ref, id) async {
  await ref.read(userPod.notifier).getMyRoomMembers(id);
  return ref.read(userPod);
});

class UserData extends StateNotifier<RoomMember> {
  Ref ref;
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  UserData(this.ref) : super(RoomMember());

  TextEditingController nameCtrl = TextEditingController();
  TextEditingController dobCtrl = TextEditingController();
  TextEditingController mobileCtrl = TextEditingController();
  TextEditingController aadharNoCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();

  Future getMyInfo() async {
    UserInfo? info = sessionManager.signedInUser;

    List<UserRoom?> userRoom = [];

    Members members = await getMemberDetails();
    userRoom = await client.userRoom.getUserRoom();
    state = state.copyWith(userInfo: info, myRoom: userRoom, myInfo: members);
    return state;
  }

  getMemberDetails() async {
    UserInfo? info = sessionManager.signedInUser;
    Members? member =
        await client.members.getMemberDetailsByUserId(userId: info!.id!);
    if (member == null) {
      await client.members
          .addUserToMember(userId: info.id!)
          .then((value) async => await getMemberDetails());
    } else {
      return member;
    }
  }

  Future getMyRoom() async {
    try {
      List<UserRoom?> userRoom = [];
      userRoom = await client.userRoom.getUserRoom();
      state = state.copyWith(myRoom: userRoom);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future getMyRoomMembers(int roomId) async {
    List<Members?>? members = [];
    members = await client.roomMembers.getUserRoomMembers(roomId: roomId);
    state = state.copyWith(members: members);
  }

  assignMyInfo() {
    Members member = state.myInfo!;
    emailCtrl.text = member.email;
    aadharNoCtrl.text = member.aadharNo;
    mobileCtrl.text = member.mobile;
    nameCtrl.text = member.name;
    dobCtrl.text = member.dob;
  }

  Future<bool> updateMyInfo() async {
    AndroidDeviceInfo androidDeviceInfo = await deviceInfo.androidInfo;
    IosDeviceInfo iOSDeviceInfo = await deviceInfo.iosInfo;
    String? model =
        Platform.isAndroid ? androidDeviceInfo.model : iOSDeviceInfo.model;
    Members member = state.myInfo!;
    member.email = emailCtrl.text;
    member.aadharNo = aadharNoCtrl.text;
    member.mobile = mobileCtrl.text;
    member.name = nameCtrl.text;
    member.dob = dobCtrl.text;
    member.age = 0;
    member.mobileModel = model!;
    bool val = await client.members.updateMembers(member);
    return val;
  }

  String txnId = "";
  Future<bool> aadharVerification() async {
    const uuid = Uuid();
    List<String> list = aadharNoCtrl.text.split('');
    txnId = uuid.v4();
    String url = "https:///otp/2.5/public/${list[0]}/${list[1]}/<asalk/";
    txnId = uuid.v4();
    var body =
        json.encode({'uid': aadharNoCtrl.text, "ac": "public", 'txnId': txnId});
    Dio dio = Dio();
    dio.options.headers = {'Content-type': 'application/json'};
    Response response = await dio.post(
      url,
      data: body,
      options: Options(
        followRedirects: false,
        validateStatus: (status) {
          return true;
        },
      ),
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
