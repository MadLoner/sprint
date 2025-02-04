import 'package:flutter/material.dart';
import 'package:sprint/presentation/colors/color.dart';
import 'package:sprint/presentation/functions/functions.dart';
import 'package:sprint/presentation/widgets/my_button.dart';
import 'package:sprint/presentation/widgets/text_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  // This widget is the root of your application.
  @override
  State<LoginPage> createState() => _MyLoginPageState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _MyLoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20, top: 121, right: 20),
                child: SizedBox(
                  child: Column(
                    children: [
                      Text(
                        'Привет!',
                        style: TextStyle(
                            fontSize: 32,
                            fontFamily: 'New Peninim MT',
                            color: Mycolors.blackgreyColor),
                        textAlign: TextAlign.center,
                      ),
                      Padding(padding: EdgeInsets.only(top: 8)),
                      SizedBox(
                        width: 315,
                        child: Text(
                            'Заполните Свои Данные Или Продолжите Через Социальные Медиа',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'New Peninim MT',
                                color: Mycolors.grayColor),
                            textAlign: TextAlign.center),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Email',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'New Peninim MT',
                                  color: Mycolors.blackgreyColor),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      TextInput(
                        hint: 'xyz@gmail.com',
                        controller: emailController,
                        isPassword: false,
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Пароль',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'New Peninim MT',
                                    color: Mycolors.blackgreyColor))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      TextInput(
                        hint: '********',
                        controller: passwordController,
                        isPassword: true,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Восстановить',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'New Peninim MT',
                                  color: Mycolors.textColor,
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      MyButton(
                        title: 'Войти',
                        color: Mycolors.blueColor,
                        onTap: () => Functions.checkFields(emailController.text,
                            passwordController.text, context),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 209,
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Вы впервые?',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'New Peninim MT',
                            color: Mycolors.textColor),
                        textAlign: TextAlign.center),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Создать пользователя',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'New Peninim MT',
                            color: Mycolors.blackgreyColor),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
