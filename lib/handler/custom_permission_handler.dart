import 'package:permission_handler/permission_handler.dart';

enum Permissions { bluetooth }

class CustomPermissionHandler {
  checkPermission(Permissions permission) async {
    switch (permission) {
      case Permissions.bluetooth:
        PermissionStatus status = await Permission.bluetooth.status;
        if (status == PermissionStatus.denied) {
          askPermission(permission);
        } else if (status == PermissionStatus.permanentlyDenied) {
          await openAppSettings();
        } else {
          return true;
        }
    }
  }

  askPermission(Permissions permission) async {
    switch (permission) {
      case Permissions.bluetooth:
        await Permission.bluetooth.request();
        checkPermission(permission);
    }
  }
}
