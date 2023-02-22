import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myproject_2_flutter/import_helper.dart';

class Splashscreen extends StatefulHookConsumerWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  ConsumerState<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends ConsumerState<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      width: 100.w,
      height: 100.h,
      child: Center(
        child: customText(msg: 'Splash Screen'),
      ),
    );
  }
}
