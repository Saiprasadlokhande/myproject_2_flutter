import 'package:myproject_2_client/myproject_2_client.dart';
import 'package:myproject_2_flutter/import_helper.dart';

class RoomStateModel {
  List<Society>? searchedSocietyList;
  Society? selectedSociety;
  List<Rooms>? roomList;
  List<List<Rooms>>? blocksWiseRoom;
  List<String>? blocks;
  RoomStateModel(
      {this.searchedSocietyList,
      this.selectedSociety,
      this.roomList,
      this.blocks,
      this.blocksWiseRoom});
  copyWith(
      {List<Society>? searchedSocietyList,
      List<Rooms>? roomList,
      Society? selectedSociety,
      List<List<Rooms>>? blocksWiseRoom,
      List<String>? blocks,
      TextEditingController? searchSocietyController}) {
    return RoomStateModel(
      searchedSocietyList: searchedSocietyList ?? this.searchedSocietyList,
      roomList: roomList ?? this.roomList,
      blocks: blocks ?? this.blocks,
      blocksWiseRoom: blocksWiseRoom ?? this.blocksWiseRoom,
      selectedSociety: selectedSociety ?? this.selectedSociety,
    );
  }
}
