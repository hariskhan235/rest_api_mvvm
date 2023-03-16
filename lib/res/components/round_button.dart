import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
    this.buttonColor = Colors.black,
    this.textColor = Colors.red,
    required this.title,
    required this.onPress,
    this.width = 60,
    this.height = 60,
    this.loading = false,
  });

  final bool loading;
  final Color textColor, buttonColor;
  final String title;
  final double width, height;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Center(
                child: Text(
                  title,
                  style: TextStyle(color: textColor),
                ),
              ),
      ),
    );
  }
}
