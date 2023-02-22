import 'package:myproject_2_client/myproject_2_client.dart';
import 'package:serverpod_auth_client/module.dart';

class RoomMember {
  UserInfo? userInfo;
  List<Members?>? members;
  List<UserRoom?>? myRoom;
  RoomMember({this.userInfo, this.members, this.myRoom});

  copyWith({
    UserInfo? userInfo,
    List<Members?>? members,
    List<UserRoom?>? myRoom,
  }) {
    userInfo = userInfo ?? this.userInfo;
    members = members ?? this.members;
    myRoom = myRoom ?? this.myRoom;
  }
}
