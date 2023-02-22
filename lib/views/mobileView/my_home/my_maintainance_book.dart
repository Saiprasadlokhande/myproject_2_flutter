import 'package:myproject_2_flutter/import_helper.dart';

class MyMaintainanceBook extends StatefulWidget {
  const MyMaintainanceBook({Key? key}) : super(key: key);

  @override
  State<MyMaintainanceBook> createState() => _MyMaintainanceBookState();
}

class _MyMaintainanceBookState extends State<MyMaintainanceBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                context.pop();
              },
              child: const Icon(Icons.arrow_back_ios, color: kTitleColor)),
          title: customText(msg: 'My Room'),
          backgroundColor: kPrimaryColor,
          elevation: 0),
      body: SizedBox(
        width: 100.w,
        height: 100.h,
        child: ListView.separated(
          itemCount: 5,
          itemBuilder: (_, i) {
            return receiptCard(
                name: 'Saiprasad Lokhande',
                date: DateTime(2022, 11, 22).toString(),
                maintainanceAmount: '200',
                penalty: '100',
                vehicleCharge: '100',
                roomNo: '103',
                finalAmount: '400',
                paymentModeIsOnline: true,
                status: true);
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 5.w,
              // color: kTitleColor,
              // thickness: 1,
            );
          },
        ),
      ),
    );
  }
}
