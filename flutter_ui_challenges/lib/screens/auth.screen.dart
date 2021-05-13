import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_challenges/constants/layout.dart';
import 'package:flutter_ui_challenges/widgets/default_layout.dart';
import 'package:get/get.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      background: Image.asset(
        'assets/images/auth_bg.png',
        height: Get.height,
        width: Get.width,
        fit: BoxFit.fill,
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.all(spacing),
        child: Column(
          children: [
            Spacer(flex: 2),

            // Logo
            SvgPicture.asset(
              'assets/icons/logo.svg',
              width: Get.width * 0.2,
            ),

            SizedBox(height: spacing),

            // Title & Slogan
            Text(
              "Flash",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 36,
                height: 1,
              ),
            ),
            Text(
              "GYM",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w900,
                fontSize: 48,
                height: 1,
              ),
            ),
            Text(
              "Get in shape quickly",
              style: TextStyle(
                color: Colors.white,
                height: 1,
              ),
            ),

            Spacer(),

            // Sign Up & Login
            SizedBox(
              width: Get.width * 0.5,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(borderRadius * 2),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor.withOpacity(0.88)),
                ),
                child: Text(
                  "Sign Up",
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ),
            SizedBox(height: spacing),
            SizedBox(
              width: Get.width * 0.5,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Theme.of(context).scaffoldBackgroundColor.withOpacity(0.5)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(borderRadius * 2),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.white12),
                ),
                child: Text(
                  "Login",
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ),

            Spacer(),
          ],
        ),
      ),
    );
  }
}
