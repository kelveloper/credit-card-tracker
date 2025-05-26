import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'shared/theme/app_theme.dart';
import 'features/auth/screens/login_screen.dart';
import 'features/auth/screens/register_screen.dart';
import 'features/dashboard/screens/dashboard_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDxQYxQYxQYxQYxQYxQYxQYxQYxQYxQYxQY",
      authDomain: "creditcardtrackerapp.firebaseapp.com",
      projectId: "creditcardtrackerapp",
      storageBucket: "creditcardtrackerapp.appspot.com",
      messagingSenderId: "123456789012",
      appId: "1:123456789012:web:1234567890123456789012",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Credit Card Tracker',
      theme: AppTheme.lightTheme,
      home: const DashboardScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/dashboard': (context) => const DashboardScreen(),
      },
    );
  }
}
