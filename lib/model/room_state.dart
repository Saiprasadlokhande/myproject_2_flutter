import 'package:myproject_2_client/myproject_2_client.dart';
import 'package:myproject_2_flutter/import_helper.dart';

class RoomStateModel {
  List<Society>? searchedSocietyList;

  RoomStateModel({this.searchedSocietyList});
  copyWith(
      {List<Society>? searchedSocietyList,
      TextEditingController? searchSocietyController}) {
    return RoomStateModel(
      searchedSocietyList: searchedSocietyList ?? this.searchedSocietyList,
    );
  }
}
