// import 'dart:html';

import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/screens/cadastroPage.dart';
import 'package:code_manga/widgets/input.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:code_manga/widgets/button.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 56, top: 56),
                child: Center(
                  child: Column(
                    children: [
                      const Text(
                        "MANGA",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 37,
                        ),
                      ),
                      Text(
                        "Code",
                        style: GoogleFonts.notoSans(
                          color: kprimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 68,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 29),
                child: Text(
                  "Login",
                  style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: KText,
                  ),
                ),
              ),
              Container(
                // margin: const EdgeInsets.only(left: 29, right: 29),
                margin: EdgeInsets.symmetric(vertical: 29, horizontal: 29),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 25),
                      child: Input(
                        icone: Icons.email_rounded,
                        texto: "Digite seu email",
                        password: false,
                      ),
                    ),
                    Input(
                      icone: Icons.lock,
                      texto: "Digite sua senha",
                      password: true,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 29, bottom: 29),
                      child: Button(
                        text: 'Entrar',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Ainda não possui conta?',
                          style: TextStyle(color: KText),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => cadastro()));
                            },
                            child: Text(
                              'Cadastra-se',
                              style: TextStyle(color: kprimaryColor),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
