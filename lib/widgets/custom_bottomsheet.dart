import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myproject_2_flutter/controller/admin_controller/address_pod.dart';
import 'package:myproject_2_flutter/import_helper.dart';
import 'package:myproject_2_flutter/widgets/custom_textfield.dart';

customBottomsheet(
    {required TextEditingController searchController,
    required BuildContext context,
    required double height,
    required String title,
    ValueChanged<String>? onChanged,
    required SearchAddressType type}) {
  TextEditingController controller = TextEditingController();
  return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) {
        return StatefulBuilder(builder: (context, state) {
          return SearchedWidgetAdmin(
            type: type,
            height: height,
            title: title,
            searchController: searchController,
            onChanged: onChanged,
            list: Consumer(builder: (context, ref, child) {
              var address = ref.watch(addressPod);
              return CustomScrollView(
                slivers: [
                  SliverAppBar(
                    floating: true,
                    pinned: true,
                    snap: false,
                    backgroundColor: kPrimaryColor,
                    title: customText(msg: '${title} List'),
                    bottom: AppBar(
                      backgroundColor: kPrimaryColor,
                      elevation: 0,
                      centerTitle: true,
                      leadingWidth: 0,
                      toolbarHeight: 8.h,
                      leading: const SizedBox(),
                      actions: [
                        IconButton(
                            onPressed: () async {
                              if (searchController.text.isNotEmpty) {
                                await address.getAddressEntity(
                                    type: type,
                                    text: searchController.text.trim());
                              }
                            },
                            icon: const Icon(
                              Icons.search,
                              color: kTitleColor,
                            )),
                        IconButton(
                            onPressed: () async {
                              if (searchController.text.isNotEmpty) {
                                await address.addAddressEntity(
                                  type: type,
                                  text: searchController.text.trim(),
                                );
                              }
                            },
                            icon: const Icon(
                              Icons.add,
                              color: kTitleColor,
                            )),
                      ],
                      title: CustomTextField(
                        controller: searchController,
                        label: title,
                        enabled: true,
                        color: kTitleColor,
                        onChanged: onChanged,
                      ),
                    ),
                  ),
                  SliverAnimatedList(
                      initialItemCount: address.searchAddressList.length,
                      itemBuilder: (_, i, animate) {
                        return customText(
                            msg: '${address.searchAddressList[i].title}');
                      })
                ],
              );
            }),
          );
        });
      });
}

class SearchedWidgetAdmin extends StatefulHookConsumerWidget {
  SearchAddressType type;
  TextEditingController searchController;
  double height;
  String title;
  ValueChanged<String>? onChanged;
  Widget list;
  SearchedWidgetAdmin(
      {Key? key,
      required this.type,
      required this.searchController,
      required this.height,
      required this.title,
      required this.list,
      this.onChanged})
      : super(key: key);

  @override
  ConsumerState<SearchedWidgetAdmin> createState() =>
      _SearchedWidgetAdminState();
}

class _SearchedWidgetAdminState extends ConsumerState<SearchedWidgetAdmin> {
  @override
  Widget build(BuildContext context) {
    var address = ref.watch(addressPod);
    return Container(
      height: 80.h,
      width: 100.w,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      constraints: BoxConstraints(
        maxHeight: 80.h,
      ),
      child: widget.list,
    );
  }
}
