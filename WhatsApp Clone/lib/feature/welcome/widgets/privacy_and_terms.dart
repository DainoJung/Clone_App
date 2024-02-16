import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/common/extension/custom_theme_extension.dart';

class PrivacyAndTerms extends StatelessWidget {
  const PrivacyAndTerms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'Read our',
          style: TextStyle(
            fontSize: 20,
            color: context.theme.greyColor,
            height: 1.5,
          ),
          children: [
            TextSpan(
              text: 'Privacy Policy',
              style: TextStyle(
                color: context.theme.blueColor,
              ),
            ),
            const TextSpan(
              text: 'Tap "Agree and countinue to accept the',
            ),
            TextSpan(
              text: 'Terms of service',
              style: TextStyle(
                color: context.theme.blueColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
