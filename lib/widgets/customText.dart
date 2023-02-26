import 'package:fluttertoast/fluttertoast.dart';
import 'package:myproject_2_flutter/import_helper.dart';

double defaultFontSize = 12.sp;
double maxWidth = 0.9.w;
FontWeight defaultFontWeight = FontWeight.normal;
TextOverflow defaultOverFlow = TextOverflow.ellipsis;

customTextStyle1({
  double? fontSize,
  Color? color,
  TextOverflow? overFlow,
  FontWeight? fontWeight,
}) {
  return TextStyle(
    fontSize: fontSize ?? defaultFontSize,
    color: color ?? kTitleColor,
    overflow: overFlow ?? defaultOverFlow,
    fontWeight: fontWeight ?? defaultFontWeight,
  );
}

Widget customText({
  required String msg,
  double? fontSize,
  double? width,
  int? maxLines,
  Color? color,
  TextOverflow? overFlow,
  FontWeight? fontWeight,
  double? padding,
}) {
  return Padding(
    padding: EdgeInsets.all(padding ?? 4.0),
    child: Text(
      msg,
      maxLines: maxLines,
      style: customTextStyle1(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        overFlow: overFlow,
      ),
    ),
  );
}

customToast(String msg) {
  return Fluttertoast.showToast(
      msg: msg,
      backgroundColor: kTitleColor,
      textColor: kPrimaryColor,
      toastLength: Toast.LENGTH_LONG);
}
