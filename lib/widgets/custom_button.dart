import 'package:myproject_2_flutter/import_helper.dart';

class ActionButton extends StatefulWidget {
  GestureTapCallback onTap;
  Color? bgColor;
  Color? fontColor;

  String title;
  ActionButton(
      {Key? key,
      required this.title,
      required this.onTap,
      this.bgColor,
      this.fontColor});

  @override
  _ActionButtonState createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widget.bgColor ?? kFontColor,
        ),
        // width: 40.w,
        // height: 5.h,
        constraints: BoxConstraints(maxWidth: 40.w, maxHeight: 5.h),
        padding: const EdgeInsets.all(4),
        child: Center(
            child: customText(
                msg: widget.title, color: widget.fontColor ?? kPrimaryColor)),
      ),
    );
  }
}

class CancelButton extends StatelessWidget {
  String? title;
  VoidCallback? onTap;
  CancelButton({Key? key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ??
          () {
            Navigator.pop(context);
          },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kButton1Color,
        ),
        constraints: BoxConstraints(maxWidth: 40.w, maxHeight: 5.h),
        padding: const EdgeInsets.all(4),
        child: Center(
            child: customText(msg: title ?? 'Cancel', color: kTitleColor)),
      ),
    );
  }
}
