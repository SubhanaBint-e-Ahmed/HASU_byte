// import 'package:flutter/material.dart';
// import 'package:gameapp/core/extensions/build_context_extension.dart';
//
// class GradientBorder extends StatelessWidget {
//   final Widget? widget;
//   final VoidCallback? onTap;
//   final Color? backGroundColor;
//   final double? padding;
//
//   const GradientBorder({this.padding,this.backGroundColor,this.widget, this.onTap, super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap ?? () {},
//       child: Container(
//
//         padding:  EdgeInsets.all(padding??1),
//         decoration: BoxDecoration(
//             gradient: LinearGradient(colors: [
//           context.secondary,
//           const Color(0xff5487E0),
//           context.secondary
//         ])),
//         child: ColoredBox(
//
//           color:backGroundColor?? context.cardColor,
//           child: widget,
//         ),
//       ),
//     );
//   }
// }
