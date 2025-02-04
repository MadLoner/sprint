import 'package:flutter/material.dart';
import 'package:sprint/presentation/colors/color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  // This widget is the root of your application.
  @override
  State<LoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
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
                    Padding(
                        padding: EdgeInsets.only(
                      bottom: 35,
                    )),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Email',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'New Peninim MT',
                              color: Mycolors.blackgreyColor)
                          )
                        ],
                      )
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 12)),
                    Container(
                      width: MediaQuery.of(context).size.width - 40,
                      decoration: BoxDecoration(
                        color: Mycolors.backColor,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: SizedBox(
                        height: 48,
                        child: Padding(
                            padding: EdgeInsets.only(top: 16, left: 14),
                            child: Text('xyz@gmail.com',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'New Peninim MT',
                                    color: Mycolors.textColor),
                                textAlign: TextAlign.left)),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 26)),
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
                        )),
                    Padding(padding: EdgeInsets.only(bottom: 12)),
                    Container(
                      width: MediaQuery.of(context).size.width - 40,
                      decoration: BoxDecoration(
                        color: Mycolors.backColor,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: SizedBox(
                        height: 48,
                        child: Padding(
                          padding: EdgeInsets.only(top: 16, left: 14),
                          child: Row(
                            children: [
                              Text('.........',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'New Peninim MT',
                                  color: Mycolors.textColor),
                                textAlign: TextAlign.left),
                              SizedBox(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('ds',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'New Peninim MT',
                                        color: Mycolors.blackgreyColor)
                                    )
                                  ],
                                )
                              ),
                            ],
                          ),
                        )
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 16)),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Восстановить',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'New Peninim MT',
                                    color: Mycolors.blackgreyColor))
                        ],
                      )
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 24)),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Mycolors.blueColor
                      ),
                      child: SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Войти',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'New Peninim MT',
                                    color: Mycolors.whiteColor),
                                textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                    ),
                  ],
                  // flutter run --no-enable-impeller
                ))),
            Padding(
                padding: EdgeInsets.only(bottom: 50, top: 229),
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Вы впервый?',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'New Peninim MT',
                              color: Mycolors.textColor),
                          textAlign: TextAlign.center),
                      Text('Создать пользователя',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'New Peninim MT',
                              color: Mycolors.blackgreyColor),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
