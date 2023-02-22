// import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myproject_2_client/myproject_2_client.dart';
import 'package:myproject_2_flutter/import_helper.dart';
import 'package:myproject_2_flutter/model/member.dart';
import 'package:serverpod_auth_client/module.dart';

var userPod =
    StateNotifierProvider<UserData, RoomMember>((ref) => UserData(ref));

var getInitData = FutureProvider((ref) async {
  int userId = sessionManager.signedInUser!.id!;
  var futures = await Future.wait([
    ref.read(userPod.notifier).getMyInfo(),
    ref.read(userPod.notifier).getMyInfo(),
    ref.read(userPod.notifier).getMyInfo(),
  ]);
});

class UserData extends StateNotifier<RoomMember> {
  Ref ref;
  UserData(this.ref) : super(RoomMember());

  Future getMyInfo() async {
    UserInfo? info = sessionManager.signedInUser;
    state.userInfo = info;
  }

  Future getMyRoom() async {
    List<UserRoom?>? userRoom = [];
    userRoom = await client.userRoom.getUserRoom();
    state = state.copyWith(myRoom: userRoom);
  }

  Future getMyRoomMembers(int roomId) async {
    List<Members?>? members = [];
    members == await client.roomMembers.getUserRoomMembers(roomId: roomId);
    state = state.copyWith(members: members);
  }
}
