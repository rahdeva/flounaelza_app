// ignore_for_file: unused_local_variable

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '/data/remote/endpoint.dart';
import '/model/login_response.dart';
import '/resources/resources.dart';
import '/utills/widget/snackbar/snackbar_widget.dart';
import 'package:permission_handler/permission_handler.dart';
import '/feature/auth/auth_controller.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final AuthController authController = AuthController.find;
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  final GlobalKey<FormBuilderState> forgotFormKey = GlobalKey<FormBuilderState>();

  bool isObscure = true;

  @override
  Future<void> onReady() async {
    super.onReady();
    await Permission.storage.request();
  }

  void signInWithEmailAndPassword(
    String emailInput,
    String passwordInput,
  ) async {
    final Dio dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 3),
        headers: {
          "Content-Type": 'application/json',
          // "sugoiiyabai": "k/WUgI/f6vxwpeu9SKdm5ddijsqA7nmkraedjUoLvN7BBVN8PIVul1sVV2Jhpj+5"
        }
      ),
    );

    LoginResponse? loginResponse;

    try {
      final loginData = await dio.post(
        BaseUrl.login,
        data: {
          "username": emailInput,
          "password": passwordInput,
        }
      );
      debugPrint('User Info: ${loginData.data}');
      loginResponse = LoginResponse.fromJson(loginData.data);
      await authController.saveAuthData(
        user: loginResponse.data!,
        token: loginResponse.data!.accessToken ?? '',
      );
      authController.setAuth();
    } on DioException catch (error) {
      SnackbarWidget.defaultSnackbar(
        icon: const Icon(
          Icons.cancel,
          color: AppColors.red,
        ),
        subtitle: "Username atau Password salah",
        title: "Login Gagal!"
      );
      debugPrint(error.toString());
    }
  }
}
