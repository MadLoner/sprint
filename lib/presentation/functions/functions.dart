import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:sprint/presentation/pages/home_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:toastification/toastification.dart';

class Functions {
  static Future<void> checkFields(
      String email, String password, BuildContext context) async {
    if ((email.isEmpty && password.isEmpty) ||
        (email.isEmpty || password.isEmpty)) {
      toastification.show(
        context: context,
        title: Text('Ошибка'),
        description: Text('Поля пустые.'),
        type: ToastificationType.error,
        alignment: Alignment.bottomCenter,
        autoCloseDuration: Duration(seconds: 2),
      );
      return;
    }

    if (EmailValidator.validate(email)) {
      toastification.show(
        context: context,
        title: Text('Успешно'),
        description: Text('Электронная почта введена верно.'),
        type: ToastificationType.success,
        alignment: Alignment.bottomCenter,
        autoCloseDuration: Duration(seconds: 2),
      );
      await tryToAuth(email, password, context);
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      toastification.show(
        context: context,
        title: Text('Ошибка'),
        description: Text('Электронная почта введена не верно.'),
        type: ToastificationType.error,
        alignment: Alignment.bottomCenter,
        autoCloseDuration: Duration(seconds: 2),
      );
    }
  }

  static Future<void> tryToAuth(
      String email, String password, BuildContext context) async {
    final supabase = GetIt.I.get<SupabaseClient>();
    final AuthResponse response = await supabase.auth
        .signInWithPassword(email: email, password: password);

    final User? user = response.user;
    if (user != null) {
      toastification.show(
        context: context,
        title: Text('Успешно'),
        description: Text('Welcome, ${user.email}.'),
        type: ToastificationType.success,
        alignment: Alignment.bottomCenter,
        autoCloseDuration: Duration(seconds: 2),
      );
    } else {
      toastification.show(
        context: context,
        title: Text('error'),
        description: Text('error not found'),
        type: ToastificationType.error,
        alignment: Alignment.bottomCenter,
        autoCloseDuration: Duration(seconds: 2),
      );
    }
  }
}
