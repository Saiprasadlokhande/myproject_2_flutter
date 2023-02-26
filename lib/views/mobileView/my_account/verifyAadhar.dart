import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myproject_2_flutter/import_helper.dart';
import 'package:myproject_2_flutter/widgets/custom_textfield.dart';

class VerifyAadhar extends StatefulHookConsumerWidget {
  const VerifyAadhar({Key? key}) : super(key: key);

  @override
  ConsumerState<VerifyAadhar> createState() => _VerifyAadharState();
}

class _VerifyAadharState extends ConsumerState<VerifyAadhar> {
  TextEditingController otpCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customText(
              msg: "An Otp has been sent you on your registered mobile number.",
              fontSize: 16.sp),
          SizedBox(
            height: 3.h,
          ),
          CustomTextField(
            controller: otpCtrl,
            enabled: true,
            maxLength: 6,
            inputType: TextInputType.number,
            hint: "______",
          )
        ],
      ),
    );
  }
}
