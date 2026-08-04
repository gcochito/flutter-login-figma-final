import 'package:flutter/material.dart';
import '../components/app_button.dart';
import '../theme/app_colors.dart';

class EmailSentScreen extends StatelessWidget {
  const EmailSentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              // Aqui ficaria a imagem do envelope com o aviãozinho
              const Icon(
                Icons.mark_email_read_outlined,
                size: 100,
                color: AppColors.textPrimary,
              ),
              const SizedBox(height: 32),
              const Text(
                'We Sent you an Email to reset your password.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: 160,
                child: AppButton(
                  text: 'Return to Login',
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
