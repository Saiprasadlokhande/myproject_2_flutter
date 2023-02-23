import 'package:myproject_2_client/myproject_2_client.dart';
import 'package:myproject_2_flutter/import_helper.dart';

class RoomStateModel {
  List<Society>? searchedSocietyList;
  Society? selectedSociety;
  List<Rooms>? roomList;
  List<List<Rooms>>? blocksWiseRoom;
  RoomStateModel(
      {this.searchedSocietyList,
      this.selectedSociety,
      this.roomList,
      this.blocksWiseRoom});
  copyWith(
      {List<Society>? searchedSocietyList,
      List<Rooms>? roomList,
      Society? selectedSociety,
      List<List<Rooms>>? blocksWiseRoom,
      TextEditingController? searchSocietyController}) {
    return RoomStateModel(
      searchedSocietyList: searchedSocietyList ?? this.searchedSocietyList,
      roomList: roomList ?? this.roomList,
      blocksWiseRoom: blocksWiseRoom ?? this.blocksWiseRoom,
      selectedSociety: selectedSociety ?? this.selectedSociety,
    );
  }
}
