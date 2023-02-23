import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myproject_2_flutter/import_helper.dart';
import 'package:myproject_2_flutter/riverpod/roomPod.dart';
import 'package:myproject_2_flutter/widgets/custom_textfield.dart';

class SearchSociety extends StatefulHookConsumerWidget {
  const SearchSociety({Key? key}) : super(key: key);

  @override
  ConsumerState<SearchSociety> createState() => _SearchSocietyState();
}

class _SearchSocietyState extends ConsumerState<SearchSociety> {
  TextEditingController searchSocietyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var roomPod = ref.watch(roomPods.notifier);
    var roomModel = ref.watch(roomPods);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leadingWidth: 3.w,
        title: CustomTextField(
          width: 80.w,
          enabled: true,
          controller: searchSocietyController,
          // label: "",
          hint: "Search Society",
          label: "",
          suffixIcon: GestureDetector(
            onTap: () async {
              await roomPod.getSearchedSociety(searchSocietyController.text);
            },
            child: Container(
                width: 5.w,
                height: 5.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimaryColor.withOpacity(0.6)),
                child: Icon(Icons.search, color: kTitleColor, size: 15.sp)),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 2.h),
        color: kPrimaryColor,
        height: 100.h,
        width: 100.w,
        child: ListView.builder(
          itemCount: roomModel.searchedSocietyList == null
              ? 0
              : roomModel.searchedSocietyList!.length,
          shrinkWrap: true,
          itemBuilder: (_, i) {
            return customBoxTile(
                onTap: () {
                  roomModel.selectedSociety = roomModel.searchedSocietyList![i];
                  context.pushNamed(addRoom);
                },
                title: roomModel.searchedSocietyList![i].socName,
                subtitle:
                    roomModel.searchedSocietyList![i].address!.fullAddress);
          },
        ),
      ),
    );
  }
}
