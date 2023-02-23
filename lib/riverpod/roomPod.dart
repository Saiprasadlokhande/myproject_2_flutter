import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myproject_2_client/myproject_2_client.dart';
import 'package:myproject_2_flutter/import_helper.dart';
import 'package:myproject_2_flutter/model/room_state.dart';

var roomPods = StateNotifierProvider.autoDispose<RoomPod, RoomStateModel>(
    (ref) => RoomPod(ref));

class RoomPod extends StateNotifier<RoomStateModel> {
  Ref ref;
  RoomPod(this.ref) : super(RoomStateModel());

  List<String> blocks = [];
  List<List<Rooms>> blocksWiseRoom = [];

  getSearchedSociety(String text) async {
    List<Society> societyList = [];
    societyList = await client.society.getSociety(keyword: text);
    state = state.copyWith(searchedSocietyList: societyList);
  }

  getRoomsOfSociety() async {
    Society? soc = state.selectedSociety!;
    List<Rooms>? roomList = [];
    roomList = await client.rooms.getAllRooms(socId: soc.id);
    state = state.copyWith(roomList: roomList);
  }

  getBlock() {
    int blockCount = state.selectedSociety!.totalBlock;
    blocks.clear();
    for (int i = 0; i < blockCount; i++) {
      debugPrint(String.fromCharCode(65 + i));
      blocks.add(String.fromCharCode(65 + i));
    }
    getBlockWiseRoom();
  }

  getBlockWiseRoom() {
    blocksWiseRoom = [];
    for (int i = 0; i < blocks.length; i++) {
      List<Rooms> roomList = [];
      for (int j = 0; j < state.selectedSociety!.rooms!.length; j++) {
        if (state.selectedSociety!.rooms![j].room.split('-')[0].trim() ==
            blocks[i]) {
          debugPrint(
              "${state.selectedSociety!.rooms![j].room.split('-')[0]} == ${blocks[i]}");
          roomList.add(state.selectedSociety!.rooms![j]);
        }
      }
      blocksWiseRoom.add(roomList);
    }
    state.blocksWiseRoom = blocksWiseRoom;
  }
}
