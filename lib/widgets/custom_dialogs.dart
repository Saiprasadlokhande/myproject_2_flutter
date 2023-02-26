import 'package:myproject_2_flutter/import_helper.dart';

enum DialogType { confirmRoom }

enum DialogButtonType { YesNo, ConfirmCancel }

class CustomDialog {
  registerRoom(BuildContext context, VoidCallback onTap) {
    return commonDialog(
        context: context,
        type: DialogType.confirmRoom,
        buttonType: DialogButtonType.ConfirmCancel,
        onTap: () => onTap(),
        onCancel: () {
          router.pop(context);
        });
  }

  commonDialog({
    required BuildContext context,
    required DialogType type,
    required DialogButtonType buttonType,
    required GestureTapCallback onTap,
    required GestureTapCallback onCancel,
  }) {
    Widget content = Container();
    String msg = "${Global.localisation.en!.dialogs!.confirmRequest}";
    String positiveBtn = "${Global.localisation.en!.common!.confirm}";
    String negativeBtn = "${Global.localisation.en!.common!.cancel}";
    switch (type) {
      case DialogType.confirmRoom:
        // TODO: Handle this case.
        msg = Global.localisation.en!.dialogs!.registerYourAccountWithThisRoom!;
        content = RegisterRoom(
          title: msg,
          onTap: () => onTap(),
          negativeBtn: negativeBtn,
          onCancel: () => onCancel(),
          positiveBtn: positiveBtn,
        );

        break;
    }
    switch (buttonType) {
      case DialogButtonType.YesNo:
        // TODO: Handle this case.
        positiveBtn = "${Global.localisation.en!.common!.yes}";
        negativeBtn = "${Global.localisation.en!.common!.no}";
        break;
      case DialogButtonType.ConfirmCancel:
        // TODO: Handle this case.
        positiveBtn = "${Global.localisation.en!.common!.confirm}";
        negativeBtn = "${Global.localisation.en!.common!.cancel}";
        break;
    }
    return showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          backgroundColor: kPrimaryColor,
          content: SizedBox(width: 75.w, height: 30.h, child: content),
        );
      },
    );
  }
}

class RegisterRoom extends StatelessWidget {
  String title;
  String positiveBtn;
  String negativeBtn;
  GestureTapCallback onTap;
  GestureTapCallback onCancel;
  RegisterRoom({
    Key? key,
    required this.title,
    required this.positiveBtn,
    required this.negativeBtn,
    required this.onTap,
    required this.onCancel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      width: 75.w,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: customText(
                  msg: title, overFlow: TextOverflow.visible, fontSize: 12.sp)),
          SizedBox(
            height: 5.h,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    width: 25.w,
                    child: GestureDetector(
                        onTap: () {
                          router.pushReplacementNamed(home);
                        },
                        child:
                            ActionButton(title: negativeBtn, onTap: onCancel))),
                SizedBox(
                    width: 25.w,
                    child: GestureDetector(
                        onTap: () => onTap,
                        child: ActionButton(title: positiveBtn, onTap: onTap))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ShowSuccessfulAcknowledgement extends StatelessWidget {
  String msg;
  ShowSuccessfulAcknowledgement({Key? key, required this.msg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        circularIcon(
          msg: "${Global.localisation.en!.common!.success}",
          icon: Icons.done,
        ),
      ],
    ));
  }
}
