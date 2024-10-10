import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
  const BuildButton({
    super.key,
    required this.newText,
    required this.nextSite,
    required this.icon,
    required this.color,
    required this.textColor,
    required this.textSize,
  });

  final IconData? icon;

  final String newText;
  final void Function()? nextSite;
  final Color color;
  final Color textColor;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextSite,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          children: [
            const Expanded(
              child: SizedBox(),
            ),
            Text(
              newText,
              style: TextStyle(
                  fontSize: textSize,
                  fontWeight: FontWeight.w600,
                  color: textColor),
            ),
            const Expanded(child: SizedBox()),
            Icon(
              icon,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
