import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maestroshop/utils/components/rounded_button.dart';
import 'package:maestroshop/utils/components/rounded_input.dart';
import 'package:maestroshop/utils/components/rounded_password_input.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required this.isLogin,
    required this.animationDuration,
    required this.size,
    required this.defaultLoginSize,
  }) : super(key: key);

  final bool isLogin;
  final Duration animationDuration;
  final Size size;
  final double defaultLoginSize;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isLogin ? 1.0 : 0.0,
      duration: animationDuration * 4,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: size.width,
          height: defaultLoginSize,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome Back',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const SizedBox(height: 40),
                SvgPicture.asset('asset/svg/login.svg'),
                const SizedBox(height: 40),
                const RoundedInput(
                  icon: Icons.mail,
                  hint: 'Username',
                ),
                const RoundedPasswordInput(hint: 'Password'),
                const SizedBox(height: 10),
                const RoundedButton(title: 'LOGIN'),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
