import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myproject_2_flutter/import_helper.dart';
import 'package:myproject_2_flutter/widgets/custom_textfield.dart';

class MyAccount extends StatefulHookConsumerWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  ConsumerState<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends ConsumerState<MyAccount> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(milliseconds: 200),
      () {
        ref.read(userPod.notifier).assignMyInfo();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var userPods = ref.read(userPod);
    var userPodNotifier = ref.read(userPod.notifier);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        title: customTile(),
      ),
      body: Container(
        width: 100.w,
        height: 100.h,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          shrinkWrap: true,
          children: [
            SizedBox(
              width: 100.w,
              height: 10.h,
              child: Center(
                child: CircleAvatar(
                  maxRadius: 5.h,
                  backgroundImage: NetworkImage(
                      sessionManager.signedInUser!.imageUrl!
                          .replaceAll("http://localhost:8080", "$baseUrl"),
                      scale: 50),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            CustomTextField(
              width: 100.w,
              enabled: true,
              label: "Name",
              controller: userPodNotifier.nameCtrl,
            ),
            CustomTextField(
              width: 100.w,
              enabled: true,
              label: "Email",
              controller: userPodNotifier.emailCtrl,
            ),
            SizedBox(
              height: 2.h,
            ),
            CustomTextField(
              width: 100.w,
              enabled: true,
              label: "Aadhaar Number",
              maxLength: 12,
              inputType: const TextInputType.numberWithOptions(decimal: false),
              controller: userPodNotifier.aadharNoCtrl,
            ),
            SizedBox(
              height: 2.h,
            ),
            InkWell(
              onTap: () async {
                print("pressed");

                if (userPodNotifier.aadharNoCtrl.text.isNotEmpty) {
                  RegExp exp = RegExp(r'^[2-9]{1}[0-9]{3}[0-9]{4}[0-9]{4}$');
                  bool val = exp.hasMatch(userPodNotifier.aadharNoCtrl.text);
                  if (val) {
                    bool value = await userPodNotifier.aadharVerification();
                    if (value) {
                      customToast("OTP Sent");
                      router.pushNamed(verifyAadhaar);
                    } else {
                      customToast("Something went wrong");
                    }
                  } else {
                    customToast("Invalid Aadhaar Number");
                  }
                } else {
                  customToast("Invalid Aadhaar Number");
                }
                FocusScope.of(context).unfocus();
              },
              child: IgnorePointer(
                child: ActionButton(
                    title: "Verify",
                    onTap: () async {
                      print("pressed2");
                    }),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            CustomTextField(
              width: 100.w,
              enabled: true,
              label: "Mobile Number",
              controller: userPodNotifier.mobileCtrl,
            ),
            SizedBox(
              height: 2.h,
            ),
            CustomTextField(
              width: 100.w,
              enabled: true,
              label: "Date of Birth",
              controller: userPodNotifier.dobCtrl,
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ActionButton(
                    title: "Save",
                    onTap: () async {
                      bool val = await userPodNotifier.updateMyInfo();
                      if (val) {
                        customToast(Global.localisation.en!.common!.success!);
                      } else {
                        customToast(Global.localisation.en!.common!.failed!);
                      }
                    }),
                ActionButton(title: "Cancel", onTap: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}
