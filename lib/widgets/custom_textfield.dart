import 'package:myproject_2_flutter/import_helper.dart';

class CustomTextFieldBox extends StatelessWidget {
  double? width;
  double? height;
  Widget child;
  Color? color;
  CustomTextFieldBox(
      {Key? key, this.height, this.width, required this.child, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 80.w,
      decoration: BoxDecoration(
          border: Border.all(color: kTitleColor),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: color ?? Colors.transparent),
      child: child,
    );
  }
}

class CustomTextField extends StatelessWidget {
  double? fontSize;
  double? width;
  Color? color;
  TextOverflow? overFlow;
  FontWeight? fontWeight;
  TextEditingController? controller;
  String? label;
  FormFieldValidator? validator;
  String? hint;
  int? maxLength;
  Function()? onTap;
  Widget? suffixIcon;
  ValueChanged<String>? onChanged;
  bool? enabled;
  TextInputType? inputType;
  CustomTextField(
      {Key? key,
      this.fontSize,
      this.inputType,
      this.width,
      this.color,
      this.fontWeight,
      this.overFlow,
      this.hint,
      this.onTap,
      this.label,
      this.controller,
      this.enabled = false,
      this.onChanged,
      this.suffixIcon,
      this.maxLength,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        obscureText: false,
        onTap: onTap,
        onChanged: onChanged ?? (String? val) {},
        enabled: enabled,

        style: const TextStyle(color: kTitleColor),
        validator: validator,
        keyboardType: inputType ?? TextInputType.text,
        maxLength: maxLength,
        decoration: InputDecoration(
            labelText: label,
            counterText: "",
            labelStyle: TextStyle(
              fontSize: fontSize ?? defaultFontSize,
              color: color ?? kTitleColor,
              overflow: overFlow ?? defaultOverFlow,
              fontWeight: fontWeight ?? defaultFontWeight,
            ),
            hintText: hint,
            hintStyle: TextStyle(
              fontSize: fontSize ?? defaultFontSize,
              color: color ?? kTitleColor,
              overflow: overFlow ?? defaultOverFlow,
              fontWeight: fontWeight ?? defaultFontWeight,
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                // color: FlutterFlowTheme.of(context).lineColor,
                color: kTitleColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                // color: FlutterFlowTheme.of(context).lineColor,
                color: kTitleColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                // color: FlutterFlowTheme.of(context).lineColor,
                color: kTitleColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                // color: FlutterFlowTheme.of(context).primaryColor,
                color: kTitleColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                // color: FlutterFlowTheme.of(context).primaryColor,
                color: kTitleColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            filled: true,
            // fillColor: FlutterFlowTheme.of(context).primaryBackground,
            contentPadding: const EdgeInsets.all(16),
            suffixIcon: suffixIcon),

        // style: FlutterFlowTheme.of(context).bodyText1,
      ),
    );
  }
}
