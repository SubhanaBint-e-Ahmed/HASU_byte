import 'package:flutter/gestures.dart';


class CustomRichText extends StatelessWidget {
  const CustomRichText(
      {super.key, this.text, this.highlightedText, this.fontSize, this.onTap,  this.textColor,  this.highlightedTextColor});
  final String? text, highlightedText;
  final double? fontSize;
  final VoidCallback? onTap;
  final Color? textColor;
  final Color? highlightedTextColor;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,

        style: context.bodySmall
            ?.copyWith( fontSize: fontSize,color:textColor?? context.grey),
        children: <TextSpan>[
          if (highlightedText != null)
            TextSpan(

              text: " ${highlightedText ?? ''} ",

              style: context.bodyLarge?.copyWith(
                color: highlightedTextColor??context.primary,
                fontSize: fontSize,
                fontWeight: FontWeight.bold,

                decorationColor: context.primary
              ),
              recognizer: onTap == null
                  ? null
                  : (TapGestureRecognizer()..onTap = () => onTap!()),
            ),
        ],
      ),
    );
  }
}
