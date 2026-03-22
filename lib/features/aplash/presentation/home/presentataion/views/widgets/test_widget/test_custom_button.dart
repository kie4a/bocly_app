// import 'package:app/core/utils/styles.dart';
// import 'package:flutter/material.dart';

// class CustomButton extends StatelessWidget {
//   const CustomButton({
//     super.key,
//     required this.backgroundColor,
//     required this.textColor,
//     this.borderRadius,
//     required this.textbuttom,
//     this.fontSzie,
//     this.onPressed,
//   });

//   final Color backgroundColor;
//   final Color textColor;
//   final BorderRadius? borderRadius;
//   final String textbuttom;
//   final double? fontSzie;
//   final VoidCallback? onPressed;

//   @override
//   Widget build(BuildContext context) {
//     final radius = borderRadius ?? BorderRadius.circular(12);

//     return SizedBox(
//       height: 48,
//       child: TextButton(
//         style: ButtonStyle(
//           backgroundColor: WidgetStatePropertyAll(backgroundColor),
//           overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
//             if (states.contains(WidgetState.pressed)) {
//               return Colors.black.withOpacity(0.12);
//             }
//             if (states.contains(WidgetState.hovered)) {
//               return Colors.black.withOpacity(0.06);
//             }
//             return null;
//           }),
//           shape: WidgetStatePropertyAll(
//             RoundedRectangleBorder(
//               borderRadius: radius,
//             ),
//           ),
//         ),
//         onPressed: onPressed,
//         child: Text(
//           textbuttom,
//           style: Styles.textStyle18.copyWith(
//             color: textColor,
//             fontWeight: FontWeight.w900,
//             fontSize: fontSzie,
//           ),
//         ),
//       ),
//     );
//   }
// }


