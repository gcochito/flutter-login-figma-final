import 'package:flutter/material.dart';
import '../components/app_button.dart';
import '../components/app_text_field.dart';
import '../components/app_back_button.dart';
import '../theme/app_colors.dart';
import 'email_sent_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
              const SizedBox(height: 20),
              const AppBackButton(),
              const SizedBox(height: 20),
              const Text(
                'Forgot Password',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 32),
              const AppTextField(hintText: 'Enter Email address'),
              const SizedBox(height: 24),
              AppButton(
                text: 'Continue',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const EmailSentScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
