import 'package:myproject_2_flutter/import_helper.dart';

class CustomAppbar extends StatefulWidget implements PreferredSizeWidget {
  String title;
  Size? size;
  CustomAppbar({Key? key, required this.title, this.size}) : super(key: key);

  @override
  _CustomAppbarState createState() => _CustomAppbarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => size ?? Size(1.w, 7.5.h);
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: customText(msg: widget.title),
      leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: kTitleColor),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
