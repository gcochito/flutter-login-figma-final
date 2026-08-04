import 'package:flutter/material.dart';
import '../components/app_button.dart';
import '../components/app_text_field.dart';
import '../components/social_button.dart';
import '../theme/app_colors.dart';
import 'sign_in_password_screen.dart';
import 'create_account_screen.dart';

class SignInEmailScreen extends StatelessWidget {
  const SignInEmailScreen({super.key});

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
              const AppTextField(hintText: 'Email Address'),
              const SizedBox(height: 16),
              AppButton(
                text: 'Continue',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignInPasswordScreen()),
                  );
                },
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Text("Don't have an Account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CreateAccountScreen()),
                      );
                    },
                    child: const Text(
                      'Create One',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              SocialButton(
                text: 'Continue With Apple',
                iconPath: 'assets/images/apple_icon.png',
                onPressed: () {},
              ),
              const SizedBox(height: 12),
              SocialButton(
                text: 'Continue With Google',
                iconPath: 'assets/images/google_icon.png',
                onPressed: () {},
              ),
              const SizedBox(height: 12),
              SocialButton(
                text: 'Continue With Facebook',
                iconPath: 'assets/images/facebook_icon.png',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
