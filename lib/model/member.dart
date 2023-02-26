import 'package:myproject_2_client/myproject_2_client.dart';
import 'package:serverpod_auth_client/module.dart';

class RoomMember {
  UserInfo? userInfo;
  Members? myInfo;
  List<Members?>? members;
  List<UserRoom?>? myRoom;

  RoomMember({this.myInfo, this.userInfo, this.members, this.myRoom});

  RoomMember copyWith({
    UserInfo? userInfo,
    Members? myInfo,
    List<Members?>? members,
    List<UserRoom?>? myRoom,
  }) {
    return RoomMember(
        userInfo: userInfo ?? this.userInfo,
        myInfo: myInfo ?? this.myInfo,
        members: members ?? this.members,
        myRoom: myRoom ?? this.myRoom);
  }
}
