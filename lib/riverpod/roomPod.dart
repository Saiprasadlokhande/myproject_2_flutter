import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myproject_2_client/myproject_2_client.dart';
import 'package:myproject_2_flutter/import_helper.dart';
import 'package:myproject_2_flutter/model/room_state.dart';

var roomPods = StateNotifierProvider.autoDispose<RoomPod, RoomStateModel>(
    (ref) => RoomPod(ref));

class RoomPod extends StateNotifier<RoomStateModel> {
  Ref ref;
  RoomPod(this.ref) : super(RoomStateModel());

  getSearchedSociety(String text) async {
    List<Society> societyList = [];
    societyList = await client.society.getSociety(keyword: text);
    state = state.copyWith(searchedSocietyList: societyList);
  }
}
