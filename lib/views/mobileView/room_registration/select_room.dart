import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myproject_2_flutter/import_helper.dart';
import 'package:myproject_2_flutter/riverpod/roomPod.dart';
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
        // roomPodNotifier.getBlockWiseRoom();
        // await roomPodNotifier.getRoomsOfSociety();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var roomPod = ref.watch(roomPods);
    var roomPodNotifier = ref.watch(roomPods.notifier);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        title:
            customText(msg: Global.localisation.en!.mySociety!.searchSociety!),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: kTitleColor),
            onPressed: () {
              roomPodNotifier.clearAll();
              Navigator.pop(context);
            }),
      ),
      body: Container(
        width: 100.w,
        height: 100.h,
        padding: EdgeInsets.only(top: 2.h),
        decoration: const BoxDecoration(color: kPrimaryColor),
        child: roomPod.selectedSociety!.rooms!.isEmpty || roomPod.blocks == null
            ? const Center(child: CircularProgressIndicator(color: kTitleColor))
            : ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: roomPod.blocks!.length,
                itemBuilder: (_, i) {
                  return Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        customText(msg: 'Block ${roomPod.blocks![i]}'),
                        const Divider(
                          color: kSubtitleColor,
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        GridView.builder(
                            shrinkWrap: true,
                            itemCount: roomPod.blocksWiseRoom![i].length,
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
                                  //           roomPodNotifier.blocks[i])
                                  //   ?
                                  GestureDetector(
                                onTap: () async {
                                  showDialog(
                                      context: context,
                                      builder: (_) {
                                        return AlertDialog(
                                          content: SizedBox(
                                            height: 30.h,
                                            width: 75.w,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                customText(
                                                    msg: Global
                                                        .localisation
                                                        .en!
                                                        .dialogs!
                                                        .registerYourAccountWithThisRoom!,
                                                    overFlow:
                                                        TextOverflow.visible,
                                                    fontSize: 12.sp,
                                                    color: kPrimaryColor),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                Expanded(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      SizedBox(
                                                          width: 25.w,
                                                          child: InkWell(
                                                            onTap: () {
                                                              router.pop();
                                                            },
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                color:
                                                                    kFontColor,
                                                              ),
                                                              // width: 40.w,
                                                              // height: 5.h,
                                                              constraints:
                                                                  BoxConstraints(
                                                                      maxWidth:
                                                                          40.w,
                                                                      maxHeight:
                                                                          5.h),
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(4),
                                                              child: Center(
                                                                  child: customText(
                                                                      msg:
                                                                          "${Global.localisation.en!.common!.cancel}",
                                                                      color:
                                                                          kPrimaryColor)),
                                                            ),
                                                          )),
                                                      SizedBox(
                                                          width: 25.w,
                                                          child: InkWell(
                                                            onTap: () async {
                                                              bool val = await client
                                                                  .userRoom
                                                                  .sendRequestToJoinRoom(
                                                                      roomId: ref
                                                                          .read(
                                                                              roomPods)
                                                                          .blocksWiseRoom![
                                                                              i]
                                                                              [
                                                                              p]
                                                                          .id!);

                                                              customToast(val
                                                                  ? Global
                                                                      .localisation
                                                                      .en!
                                                                      .common!
                                                                      .success!
                                                                  : Global
                                                                      .localisation
                                                                      .en!
                                                                      .common!
                                                                      .failed!);
                                                              if (val) {
                                                                router
                                                                    .pushReplacementNamed(
                                                                        home);
                                                              }
                                                            },
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                color:
                                                                    kFontColor,
                                                              ),
                                                              // width: 40.w,
                                                              // height: 5.h,
                                                              constraints:
                                                                  BoxConstraints(
                                                                      maxWidth:
                                                                          40.w,
                                                                      maxHeight:
                                                                          5.h),
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(4),
                                                              child: Center(
                                                                  child: customText(
                                                                      msg:
                                                                          "${Global.localisation.en!.common!.confirm}",
                                                                      color:
                                                                          kPrimaryColor)),
                                                            ),
                                                          )),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      });
                                },
                                child: CustomTextFieldBox(
                                    child: Center(
                                        child: customText(
                                            msg: ref
                                                .read(roomPods)
                                                .blocksWiseRoom![i][p]
                                                .room))),
                              )
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
