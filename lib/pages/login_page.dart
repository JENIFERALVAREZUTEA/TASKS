import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tasks/ui/general/colors.dart';
import 'package:tasks/ui/widgets/button_normal_widget.dart';
import 'package:tasks/ui/widgets/general_widget.dart';
import 'package:tasks/ui/widgets/textfield_normal_widget.dart';
import 'package:tasks/ui/widgets/texfield_password_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
            child: Column(
              children: [
                divider30(),
                SvgPicture.asset(
                  "assets/images/login.svg",
                  height: 180.0,
                ),
                divider20(),
                Text(
                  "Iniciar Sesión",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: kBrandPrymaryColor),
                ),
                TextFieldNormalWidget(
                    hintText: "Correo",
                    icon: Icons.email,
                    controller: _emailController),
                divider20(),
                TextFieldPasswordWidget(controller: _passwordController),
                divider10(),

                ButtonNormalWidget(
                  onPressed: () {}),
              ],
            ),
            padding: EdgeInsets.all(16.0)),
      ),
    );
  }
}
