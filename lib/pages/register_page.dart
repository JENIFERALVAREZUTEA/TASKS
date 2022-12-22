import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:tasks/ui/general/colors.dart';

import 'package:tasks/ui/widgets/button_custom_widget.dart';

import 'package:tasks/ui/widgets/general_widget.dart';

import 'package:tasks/ui/widgets/textfield_normal_widget.dart';

import 'package:tasks/ui/widgets/texfield_password_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _fullnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            divider30(),
            SvgPicture.asset(
              "assets/images/register.svg",
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
                hintText: "Nombre Completo",
                icon: Icons.email,
                controller: _fullnameController),
            TextFieldNormalWidget(
                hintText: "Correo",
                icon: Icons.email,
                controller: _emailController),
            divider20(),
            TextFieldPasswordWidget(controller: _passwordController),
            divider10(),
            ButtonCustomWidget(
                text: "Registrate", color: kBrandPrymaryColor, icon: "check"),
          ]),
        ),
      ),
    );
  }
}
