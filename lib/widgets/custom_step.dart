import 'package:flutter/foundation.dart';
import 'package:myproject_2_flutter/import_helper.dart';
import 'package:myproject_2_flutter/widgets/custom_bottomsheet.dart';

customStep(
    {required BuildContext context,
    required bool isEnabled,
    required TextEditingController searchController,
    ValueListenable<String>? onChanged,
    required SearchAddressType type,
    required Widget child}) {
  return Step(
      title: customText(msg: 'Country'),
// label: customText(msg: 'Select Country'),
      content: InkWell(
        onTap: () {
          customBottomsheet(
              searchController: searchController,
              context: context,
              height: 80.h,
              title: "Country",
              onChanged: (String val) => onChanged,
              type: type);
        },
        child: Container(height: 20.h, width: 80.w, child: child),
      ));
}
