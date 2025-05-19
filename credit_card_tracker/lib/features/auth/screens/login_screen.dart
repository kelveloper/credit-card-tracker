import 'package:flutter/material.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/app_text_field.dart';
import '../../../shared/theme/app_theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 48),
              // Logo
              Center(
                child: Icon(
                  Icons.credit_card,
                  size: 80,
                  color: AppTheme.primaryColor,
                ),
              ),
              const SizedBox(height: 48),
              // Email Field
              AppTextField(
                label: 'Email',
                hint: 'Enter your email',
                keyboardType: TextInputType.emailAddress,
                prefix: const Icon(Icons.email_outlined),
              ),
              const SizedBox(height: 16),
              // Password Field
              AppTextField(
                label: 'Password',
                hint: 'Enter your password',
                obscureText: true,
                prefix: const Icon(Icons.lock_outline),
              ),
              const SizedBox(height: 24),
              // Login Button
              AppButton(
                text: 'Login',
                onPressed: () {
                  // TODO: Implement login
                },
                width: double.infinity,
              ),
              const SizedBox(height: 16),
              // Google Sign In Button
              AppButton(
                text: 'Sign in with Google',
                variant: AppButtonVariant.outline,
                icon: Icons.g_mobiledata,
                onPressed: () {
                  // TODO: Implement Google sign in
                },
                width: double.infinity,
              ),
              const SizedBox(height: 24),
              // Register Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: const Text('Register'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
} 