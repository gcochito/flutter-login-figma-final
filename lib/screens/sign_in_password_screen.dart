import 'package:flutter/material.dart';
import '../components/app_button.dart';
import '../components/app_text_field.dart';
import '../theme/app_colors.dart';
import 'forgot_password_screen.dart';

class SignInPasswordScreen extends StatelessWidget {
  const SignInPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              const Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 32),
              const AppTextField(
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 16),
              AppButton(
                text: 'Continue',
                onPressed: () {
                  // Finalizar login
                },
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Text("Forgot Password? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()),
                      );
                    },
                    child: const Text(
                      'Reset',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
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
