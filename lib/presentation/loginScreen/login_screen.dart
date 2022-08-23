import 'package:election_app/cour/extensions.dart';
import 'package:election_app/presentation/src/src.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_input_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30.0),
        width: 40.w,
        height: 60.h,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            color: ColorManager.primaryColorLight
        ),
        child: Column(
          children: [
            Text(
              AppStrings.loginTitle,
            textAlign: TextAlign.right,
            style: TextStyle(
                    color: ColorManager.textTitleColor,
                    fontWeight: FontWeight.w700,
                    fontStyle:  FontStyle.normal,
                    fontSize: 14.sp
                ),
            ),
            2.0.h.heightBox,
            CustomInputField(
              keyboardType: TextInputType.name,
              label: AppStrings.userName,
              prefixIcon: AntDesign.user,
              textController: userNameController,
              onSaved: (value){},
              validator: (String? value) {
                return value;
              },
            ),
            16.0.heightBox,
            CustomInputField(
              keyboardType: TextInputType.visiblePassword,
              label: AppStrings.password,
              prefixIcon: Feather.lock,
              textController: passwordController,
              onSaved: (value){},
              validator: (String? value) {
                return value;
              },
            ),
            16.0.heightBox,
            SizedBox(
              width: 300,
              height: 40,
              child: CustomButton(
                text: AppStrings.login,
                onPressed: (){
                  Navigator.pushNamed(context, Routes.settingsScreen);
                },
              ),
            )
          ],
        ),
      ).center,
    );
  }
}
