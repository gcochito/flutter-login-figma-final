import 'package:flutter/material.dart';
import '../components/app_button.dart';
import '../components/app_text_field.dart';
import '../components/app_back_button.dart';
import '../theme/app_colors.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const AppBackButton(),
              const SizedBox(height: 20),
              const Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 32),
              const AppTextField(hintText: 'Firstname'),
              const SizedBox(height: 16),
              const AppTextField(hintText: 'Lastname'),
              const SizedBox(height: 16),
              const AppTextField(hintText: 'Email Address'),
              const SizedBox(height: 16),
              const AppTextField(
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 40),
              AppButton(
                text: 'Continue',
                onPressed: () {
                  // Lógica de criação de conta
                },
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Text("Forgot Password? "),
                  GestureDetector(
                    onTap: () {},
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
