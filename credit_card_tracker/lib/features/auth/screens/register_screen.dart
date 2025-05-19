import 'package:flutter/material.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/app_text_field.dart';
import '../../../shared/theme/app_theme.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: const Text('Create Account'),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 24),
              // Name Field
              AppTextField(
                label: 'Name',
                hint: 'Enter your full name',
                prefix: const Icon(Icons.person_outline),
              ),
              const SizedBox(height: 16),
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
              const SizedBox(height: 16),
              // Confirm Password Field
              AppTextField(
                label: 'Confirm Password',
                hint: 'Confirm your password',
                obscureText: true,
                prefix: const Icon(Icons.lock_outline),
              ),
              const SizedBox(height: 24),
              // Register Button
              AppButton(
                text: 'Register',
                onPressed: () {
                  // TODO: Implement registration
                },
                width: double.infinity,
              ),
              const SizedBox(height: 16),
              // Google Sign Up Button
              AppButton(
                text: 'Sign up with Google',
                variant: AppButtonVariant.outline,
                icon: Icons.g_mobiledata,
                onPressed: () {
                  // TODO: Implement Google sign up
                },
                width: double.infinity,
              ),
              const SizedBox(height: 24),
              // Login Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Login'),
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