import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:list/app/widgets/button.dart';
import 'package:list/app/widgets/safe_screen.dart';
import 'package:list/app/widgets/text_input.dart';
import 'package:list/core/extensions/size.dart';
import 'package:list/core/routes/app_routes.dart';

import 'controller.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return SafeScreen(
        title: 'LOGIN'.tr,
        child: Column(
          children: [
            SizedBox(
              height: 15.6.hp,
            ),
            TextInput(
              hintText: 'LOGIN__login_hintText'.tr,
            ),
            SizedBox(
              height: 2.0.hp,
            ),
            TextInput(
              hintText: 'LOGIN__password_hintText'.tr,
            ),
            SizedBox(
              height: 4.0.hp,
            ),
            Button(
              text: 'LOGIN'.tr,
              onTap: () {},
            ),
            Spacer(),
            Text('LOGIN__no_account'.tr),
            SizedBox(
              height: 2.0.hp,
            ),
            Button(
              text: 'REGISTER'.tr,
              onTap: () {
                Get.toNamed(Routes.REGISTER);
              },
            ),
            SizedBox(
              height: 2.0.hp,
            ),
          ],
        ));
  }
}
