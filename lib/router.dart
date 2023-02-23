import 'package:flutter/foundation.dart';
import 'package:myproject_2_flutter/import_helper.dart';
import 'package:myproject_2_flutter/views/IOT/My%20Devices.dart';
import 'package:myproject_2_flutter/views/login&register/login.dart';
import 'package:myproject_2_flutter/views/mobileView/my_home/my_home_view.dart';
import 'package:myproject_2_flutter/views/mobileView/room_registration/searchSociety.dart';
import 'package:myproject_2_flutter/views/mobileView/room_registration/select_room.dart';
import 'package:myproject_2_flutter/views/splashscreen.dart';

const String home = 'home';
const String splashscreen = 'splashscreen';
const String login = 'login';
const String register = 'register';
const String myHome = 'myHome';
const String searchSociety = 'searchSociety';
const String addRoom = 'addRoom';
const String myMaintenanceBook = 'myMaintenanceBook';
const String myIOTDevices = 'myIotDevices';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: splashscreen,
      path: '/',
      builder: (context, state) => const Splashscreen(),
      redirect: (context, state) async {
        print("${sessionManager.signedInUser}");
        final auth = sessionManager.isSignedIn;
        if (auth) {
          return '/$home';
        } else {
          return '/$login';
        }
      },
    ),
    GoRoute(
        name: login,
        path: '/$login',
        builder: (context, state) => const LoginView()),
    GoRoute(
        name: home,
        path: '/$home',
        builder: (context, state) =>
            // const MyHomeView(),
            kIsWeb ? WebViewHomeScreen() : MobileHomeScreen(),
        routes: [
          GoRoute(
              path: searchSociety,
              name: searchSociety,
              builder: (context, state) => SearchSociety(),
              routes: [
                GoRoute(
                    name: addRoom,
                    path: addRoom,
                    builder: (context, state) => SelectRoom()),
              ]),
          GoRoute(
              name: myHome,
              path: myHome,
              builder: (context, state) => const MyHomeView()),
          GoRoute(
              name: myMaintenanceBook,
              path: myMaintenanceBook,
              builder: (context, state) => const MyMaintainanceBook()),
          GoRoute(
              name: myIOTDevices,
              path: myIOTDevices,
              builder: (context, state) => const MyDevices()),
        ]),
  ],
);
