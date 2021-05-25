import 'package:flutter/material.dart';
import 'package:split_it/modules/theme/app_theme.dart';

class SocialButtonWidget extends StatelessWidget {
  final String imagePath;
  final String label;

  const SocialButtonWidget(
      {Key? key, required this.imagePath, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.fromBorderSide(
          BorderSide(color: AppTheme.colors.border),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 57,
            height: 57,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 16),
                Image.asset(imagePath),
                SizedBox(width: 16),
                Container(
                  width: 1,
                  color: AppTheme.colors.border,
                )
              ],
            ),
          ),
          Expanded(child: Container()),
          Text(label, style: AppTheme.textStyles.button),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
