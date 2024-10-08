import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'data/local/storage/storage_constants.dart';
import 'feature/auth/auth_controller.dart';

class Initializer {
  static Future<void> init() async {
    try {
      _initScreenPreference();
      await GetStorage.init(StorageName.STORAGE_NAME);
      await Get.putAsync<FlutterSecureStorage>(() async {
        return const FlutterSecureStorage();
      });
      Get.put<AuthController>(AuthController());
    } catch (err) {
      rethrow;
    }
  }

  static void _initScreenPreference() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
