import 'package:flounaelza_app/themes/app_theme.dart';
import 'package:flounaelza_app/utills/widget/forms/label_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import '/utills/helper/validator.dart';
import '/utills/widget/button/primary_button.dart';
import '/utills/widget/forms/text_field_widget.dart';
import '/resources/resources.dart';

import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: GetBuilder<LoginController>(
          init: LoginController(),
          builder: (controller) {
            return FormBuilder(
              key: controller.formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 50),
                    AppImages.imgLogoLogin.image(
                      width: 250,
                      height: 150
                    ),
                    const SizedBox(height: 25),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 24),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.surface,
                        boxShadow: [AppElevation.elevation4px]
                      ),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Welcome Back",
                                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                                  fontSize: 30,
                                  color: AppColors.textColour90,
                                  fontWeight: FontWeight.w700
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 12),
                              Text(
                                "Login to your account",
                                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  color: AppColors.textColour90,
                                  fontWeight: FontWeight.w400
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),
                          const LabelFormWidget(
                            labelText: "Email",
                          ),
                          TextFieldWidget(
                            name: 'email',
                            validator: Validator.required(),
                            keyboardType: TextInputType.text, 
                            hintText: 'Email',
                          ),
                          const SizedBox(height: 16),
                          const LabelFormWidget(
                            labelText: "Password",
                          ),
                          TextFieldWidget(
                            name: 'password',
                            hintText: 'Password',
                            obsecure: controller.isObscure,
                            validator: Validator.required(),
                            keyboardType: TextInputType.text,
                            suffixIcon: IconButton(
                              onPressed: () {
                                controller.isObscure = !controller.isObscure;
                                controller.update();
                              },
                              icon: controller.isObscure
                                ? const Icon(
                                    Icons.visibility_outlined,
                                    color: AppColors.colorSecondary,
                                  )
                                : const Icon(
                                    Icons.visibility_off_outlined,
                                    color: AppColors.colorSecondary,
                                  ),
                            ),
                          ),
                          const SizedBox(height: 50),
                          PrimaryButtonWidget(
                            buttonText: "Sign In", 
                            margin: const EdgeInsets.all(0),
                            onPressed: () async {
                              if (
                                controller.formKey.currentState != null &&
                                controller.formKey.currentState!.saveAndValidate()
                              ){
                                controller.signInWithEmailAndPassword(
                                  controller.formKey.currentState!.fields['username']!.value,
                                  controller.formKey.currentState!.fields['password']!.value,
                                );
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

