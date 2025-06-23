import 'package:permission_handler/permission_handler.dart';

class PermissionService {
  static Future<bool> requestActivityRecognition() async {
    final status = await Permission.activityRecognition.request();
    return status.isGranted;
  }
}
