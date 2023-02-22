import 'package:myproject_2_flutter/import_helper.dart';

class CustomIcon extends StatefulWidget {
  IconData icon;
  Color? iconColor;
  Function? onTap;
  CustomIcon(
      {Key? key, required this.icon, this.iconColor = kTitleColor, this.onTap})
      : super(key: key);

  @override
  _CustomIconState createState() => _CustomIconState();
}

class _CustomIconState extends State<CustomIcon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: widget.onTap != null ? widget.onTap!() : () {},
        icon: Icon(
          widget.icon,
          color: widget.iconColor,
        ));
  }
}
