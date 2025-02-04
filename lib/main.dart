import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:sprint/presentation/my_app.dart';
import 'package:sprint/presentation/service/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() {
  SupabaseService().init();
  runApp(const MyApp());
}
