import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myproject_2_client/myproject_2_client.dart';
import 'package:myproject_2_flutter/import_helper.dart';

var societyRegPod = ChangeNotifierProvider((ref) => SocietyRegPod(ref));

class SocietyRegPod extends ChangeNotifier {
  Ref ref;
  SocietyRegPod(this.ref);

  TextEditingController societyNameCtrl = TextEditingController();
  TextEditingController societyRegNoCtrl = TextEditingController();
  TextEditingController complexNameCtrl = TextEditingController();
  TextEditingController totalBlocksCtrl = TextEditingController();
  TextEditingController totalshopCountCtrl = TextEditingController();
  TextEditingController maxFloorEachBlockCtrl = TextEditingController();
  TextEditingController maxRoomEachFloorCtrl = TextEditingController();
  List<String> blocks = [];
  List<String> roomNo = [];
  bool isComplex = false;

  calculateBlocks() {
    List<String> list = [];
    if (totalBlocksCtrl.text.isNotEmpty) {
      for (int i = 0; i < int.parse(totalBlocksCtrl.text); i++) {
        list.add(String.fromCharCode(65 + i));
      }
    }
    blocks = list;
  }

  registerSociety() async {
    // int totalRoom = getTotalRoom();
    Society society = Society(
        socName: societyNameCtrl.text,
        socRegNo: societyRegNoCtrl.text,
        socAddressId: 0,
        totalRoom: 0,
        totalBlock: 0,
        totalShop: 0,
        totalFloor: [0],
        maxRoomsEachFloor: [0],
        latitude: 0.0,
        longitude: 0.0,
        landmark: 'landmark');
    await client.society.addSociety(society);
  }
}
