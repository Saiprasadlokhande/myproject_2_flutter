import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myproject_2_flutter/import_helper.dart';
import 'package:myproject_2_flutter/views/splashscreen.dart';

class MobileHomeScreen extends StatefulHookConsumerWidget {
  const MobileHomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<MobileHomeScreen> createState() => _MobileHomeScreenState();
}

class _MobileHomeScreenState extends ConsumerState<MobileHomeScreen> {
  @override
  Widget build(BuildContext context) {
    var userPods = ref.read(userPod);
    AsyncValue data = ref.read(getInitData);

    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: data.when(data: (value) {
          return SizedBox(
            height: 100.h,
            width: 100.w,
            child: NestedScrollView(
                physics: const BouncingScrollPhysics(),
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return [
                    SliverAppBar(
                      expandedHeight: 10.h,
                      backgroundColor: kPrimaryColor,
                      elevation: 0,
                      centerTitle: false,
                      flexibleSpace: FlexibleSpaceBar(
                        collapseMode: CollapseMode.parallax,
                        centerTitle: false,
                        titlePadding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        title: GestureDetector(
                            onTap: () {
                              context.pushNamed(myAccount);
                            },
                            child: customTile()),
                        // background: Padding(
                        //   padding: EdgeInsets.symmetric(
                        //       horizontal: 5.w, vertical: 5.h),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: [
                        //       customText(msg: 'Welcome,', fontSize: 10.sp),
                        //       Column(
                        //         mainAxisAlignment: MainAxisAlignment.start,
                        //         crossAxisAlignment: CrossAxisAlignment.end,
                        //         mainAxisSize: MainAxisSize.min,
                        //         children: [
                        //           SizedBox(
                        //             height: 5.h,
                        //           ),
                        //           customText(
                        //               msg: 'B-09, Shree Pragati Society',
                        //               fontSize: 10.sp),
                        //           customText(
                        //               msg: 'VijayNagar, Kalyan east',
                        //               fontSize: 10.sp),
                        //           customText(msg: ' 421306', fontSize: 10.sp),
                        //         ],
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ),
                      pinned: true,
                      floating: false,
                      automaticallyImplyLeading: true,
                    ),
                  ];
                },
                body: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 75.h,
                  width: 1.w,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 5.h,
                      ),
                      // SizedBox(
                      //   height: 60.h,
                      //   child: GridView(
                      //     physics: const BouncingScrollPhysics(),
                      //     shrinkWrap: true,
                      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      //         crossAxisCount: 3,
                      //         mainAxisSpacing: 2.w,
                      //         crossAxisSpacing: 15.w),
                      //     children: [
                      //       circularIcon(Icons.home),
                      //       circularIcon(Icons.receipt_long),
                      //       circularIcon(Icons.event),
                      //     ],
                      //   ),
                      // ),
                      userPods.myRoom != null
                          ? ListView.builder(
                              itemCount: userPods.myRoom!.length,
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              itemBuilder: (context, i) {
                                return RoomWidget(
                                  i: i,
                                );
                              })
                          : GestureDetector(
                              onTap: () {
                                router.pushNamed(searchSociety);
                              },
                              child: customText(
                                  msg:
                                      "${Global.localisation.en!.errorMsg!.noSocietyRegistered}"))
                    ],
                  ),
                )),
          );
        }, error: (e, stacktrace) {
          return ErrorWidget(e);
        }, loading: () {
          return const Splashscreen();
        }));
  }
}

class RoomWidget extends ConsumerWidget {
  int i;
  RoomWidget({Key? key, required this.i}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    var userPods = ref.watch(userPod);
    return Card(
      color: kPrimaryColor,
      child: Container(
        height: 40.h,
        width: 85.w,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            border: Border.all(color: kTitleColor, width: 0.5),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(msg: userPods.myRoom![i]!.roomDetails!.room),
                customText(
                    msg: userPods
                        .myRoom![i]!.societyDetails!.address!.fullAddress,
                    maxLines: 2)
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                circularIcon(
                    msg: 'My Home',
                    icon: Icons.home,
                    onTap: () {
                      context.goNamed(myHome,
                          params: {"roomId": "${userPods.myRoom![i]!.roomId}"});
                    }),
                circularIcon(
                    msg: 'Maintenance',
                    icon: Icons.receipt_long,
                    onTap: () {
                      context.goNamed(myMaintenanceBook);
                    }),
                circularIcon(msg: 'Events', icon: Icons.event),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                circularIcon(
                    msg: 'My Devices',
                    icon: Icons.home,
                    onTap: () {
                      context.goNamed(myIOTDevices);
                    }),
                circularIcon(
                    msg: 'My Devices',
                    icon: Icons.logout,
                    onTap: () async {
                      await sessionManager.signOut().then((value) =>
                          context.pushReplacementNamed(splashscreen));
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
