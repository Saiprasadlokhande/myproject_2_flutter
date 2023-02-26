import 'package:myproject_2_flutter/import_helper.dart';

Widget customTile() {
  return ConstrainedBox(
    constraints: BoxConstraints(
      maxWidth: 80.w,
      minWidth: 40.w,
    ),
    child: Row(
      children: [
        CircleAvatar(
          maxRadius: 15,
          backgroundImage: NetworkImage(
              sessionManager.signedInUser!.imageUrl!
                  .replaceAll("http://localhost:8080", "$baseUrl"),
              scale: 50),
        ),
        SizedBox(
          width: 2.w,
        ),
        customText(
            msg: sessionManager.signedInUser!.fullName!, fontSize: 10.sp),
      ],
    ),
  );
}

Widget circularIcon(
    {required String msg, required IconData icon, VoidCallback? onTap}) {
  return GestureDetector(
    onTap: onTap ?? () {},
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        circleIcon(icon),
        SizedBox(
          height: 1.h,
        ),
        customText(msg: msg, fontSize: 8.sp)
      ],
    ),
  );
}

Widget circleIcon(IconData icon) {
  return Container(
    width: 17.w,
    height: 7.h,
    padding: const EdgeInsets.all(4),
    decoration:
        const BoxDecoration(color: kLightPrimaryColor, shape: BoxShape.circle),
    child: Center(
      child: Icon(icon, color: kFontColor, size: 15.sp),
    ),
  );
}

Widget circleImg({String? image, double? width, double? height}) {
  return Container(
    width: width ?? 17.w,
    height: height ?? 7.h,
    padding: const EdgeInsets.all(4),
    decoration:
        const BoxDecoration(color: kLightPrimaryColor, shape: BoxShape.circle),
    child: Center(
      child: CachedNetworkImage(
        imageUrl: image!,
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    ),
  );
}

Widget customBoxTile(
    {bool iconInLead = false,
    required String title,
    required String subtitle,
    IconData? icon,
    double? radius,
    bool showColor = true,
    double? fontSize,
    double? subtitleFontSize,
    FontWeight? fontWeight,
    Function()? onTap}) {
  return InkWell(
    onTap: onTap ?? () {},
    child: Container(
      width: 90.w,
      height: 10.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 25),
          border: Border.all(color: kTitleColor, width: 1),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: iconInLead
                  ? [
                      showColor ? kFontColor : Colors.transparent,
                      Colors.transparent
                    ]
                  : [
                      Colors.transparent,
                      showColor ? kFontColor : Colors.transparent
                    ],
              stops: iconInLead ? [0.0, 0.5] : [0.5, 1.0])),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (iconInLead) Icon(icon, color: kTitleColor, size: 18.sp),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: iconInLead
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                customText(
                    msg: title,
                    color: kFontColor,
                    fontSize: fontSize,
                    fontWeight: fontWeight),
                customText(
                    msg: subtitle,
                    color: kSubtitleColor,
                    fontSize: subtitleFontSize ?? 8.sp),
              ],
            ),
            if (!iconInLead) Icon(icon, color: kTitleColor, size: 18.sp),
          ],
        ),
      ),
    ),
  );
}

Widget receiptCard({
  String? name,
  String? roomNo,
  String? date,
  bool paymentModeIsOnline = false,
  String? maintainanceAmount,
  String? finalAmount,
  String? vehicleCharge,
  String? penalty,
  bool status = false,
}) {
  return Container(
    height: 30.h,
    width: 100.w,
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: kTitleColor, width: 1),
        gradient: LinearGradient(
            colors: status
                ? [Colors.transparent, kFontColor]
                : [Colors.transparent, Colors.red],
            stops: [0.4, 1.0],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight)),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customText(msg: name!),
        customText(
            msg: '${Global.localisation.en!.maintainance!.roomNo}: ${roomNo!}',
            fontSize: 8.sp),
        customText(
            msg:
                '${Global.localisation.en!.maintainance!.maintenance} ${maintainanceAmount!}',
            fontSize: 8.sp),
        customText(
            msg:
                '${Global.localisation.en!.maintainance!.vehicleCharge}: ${vehicleCharge!}',
            fontSize: 8.sp),
        customText(
            msg:
                '${Global.localisation.en!.maintainance!.penalty}: ${penalty!}',
            fontSize: 8.sp),
        customText(
            msg:
                '${Global.localisation.en!.maintainance!.finalAmount}: ${finalAmount!}',
            fontSize: 8.sp),
        customText(
            msg:
                '${Global.localisation.en!.maintainance!.paid}: ${paymentModeIsOnline ? '${Global.localisation.en!.maintainance!.online}' : '${Global.localisation.en!.maintainance!.cash}'}',
            fontSize: 8.sp),
      ],
    ),
  );
}

customAddTile({Function()? onTap}) {
  return Container(
    height: 15.h,
    width: 90.w,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      border: Border.all(width: 1, color: kTitleColor),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        customText(msg: 'No Data found', fontSize: 16.sp, color: kFontColor),
        customText(msg: 'Tap to add new', fontSize: 12.sp, color: kFontColor),
      ],
    ),
  );
}

// customBottomSheetScrollView(
//     {required TextEditingController controller,
//     required String title,
//     required BuildContext context,
//     required List<SearchAddressModel> list}) {
//   return SizedBox(
//       height: 15.h,
//       width: 80.w,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           customText(msg: 'Select Country'),
//           SizedBox(
//             height: 2.5.h,
//           ),
//           CustomTextField(
//             label: title,
//             controller: controller,
//             width: 60.w,
//             hint: 'Select $title',
//             enabled: true,
//             onTap: () {
//               customBottomsheet(
//                   context: context,
//                   height: 80.h,
//                   title: title,
//                   onTap: () {},
//                   listWidget: SliverAnimatedList(
//                       initialItemCount: list.length,
//                       itemBuilder: (_, i, animate) {
//                         return customBoxTile(
//                             title: list[i].title!, subtitle: '');
//                       }));
//             },
//           )
//         ],
//       ));
// }
