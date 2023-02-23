import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myproject_2_flutter/import_helper.dart';
import 'package:myproject_2_flutter/riverpod/roomPod.dart';
import 'package:myproject_2_flutter/widgets/custom_appBar.dart';
import 'package:myproject_2_flutter/widgets/custom_textfield.dart';

class SelectRoom extends StatefulHookConsumerWidget {
  SelectRoom({Key? key}) : super(key: key);

  @override
  ConsumerState<SelectRoom> createState() => _SelectRoomState();
}

class _SelectRoomState extends ConsumerState<SelectRoom> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(milliseconds: 200),
      () async {
        ref.read(roomPods.notifier).getBlock();
        // ref.read(roomPods.notifier).getBlockWiseRoom();
        // await ref.read(roomPods.notifier).getRoomsOfSociety();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: "Select Room",
      ),
      body: Container(
        width: 100.w,
        height: 100.h,
        padding: EdgeInsets.only(top: 2.h),
        decoration: const BoxDecoration(color: kPrimaryColor),
        child: ref.read(roomPods).selectedSociety!.rooms!.isEmpty
            ? const Center(child: CircularProgressIndicator(color: kTitleColor))
            : ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: ref.read(roomPods.notifier).blocksWiseRoom.length,
                itemBuilder: (_, i) {
                  return Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        customText(
                            msg:
                                'Block ${ref.read(roomPods.notifier).blocks[i]}'),
                        const Divider(
                          color: kSubtitleColor,
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        GridView.builder(
                            shrinkWrap: true,
                            itemCount: ref
                                .read(roomPods.notifier)
                                .blocksWiseRoom[i]
                                .length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    crossAxisSpacing: 20,
                                    mainAxisSpacing: 20),
                            itemBuilder: (_, p) {
                              return
                                  // ref
                                  //       .read(roomPods)
                                  //       .selectedSociety!
                                  //       .rooms![p]
                                  //       .room
                                  //       .contains(
                                  //           ref.read(roomPods.notifier).blocks[i])
                                  //   ?
                                  CustomTextFieldBox(
                                      child: Center(
                                          child: customText(
                                              msg: ref
                                                  .read(roomPods.notifier)
                                                  .blocksWiseRoom[i][p]
                                                  .room)))
                                  // : SizedBox()
                                  ;
                            })
                      ]);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 2.h,
                  );
                },
              ),
      ),
    );
  }
}
