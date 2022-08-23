import 'package:election_app/presentation/src/src.dart';
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String label;
  final IconData prefixIcon;
  final bool obscureText;
  final FormFieldValidator<String> validator;
  final FormFieldSetter<String> onSaved;
  final TextInputType keyboardType;
  final TextEditingController textController;

  const CustomInputField({
    required this.label,
    required this.prefixIcon,
    required this.validator,
    required this.onSaved,
    required this.keyboardType,
    required this.textController,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.right,
      decoration: const InputDecoration()
          .applyDefaults(Theme.of(context).inputDecorationTheme)
          .copyWith(
            hintText: label,
            prefixIcon: Icon(
              prefixIcon,
              size: 24,
            ),
          ),
      obscureText: obscureText,
      keyboardType: keyboardType,
      controller: textController,
      onSaved: onSaved,
      validator: validator,
    );
  }
//
// @override
// Widget build(BuildContext context) {
//   return TextFormField(
//     textAlign: TextAlign.right,
//     decoration: InputDecoration(
//       filled: true,
//       fillColor: ColorManager.scaffoldColor,
//       contentPadding: const EdgeInsets.all(8),
//       focusedBorder: OutlineInputBorder(
//         borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
//           borderRadius: const BorderRadius.all(Radius.circular(50))
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
//         borderRadius: const BorderRadius.all(Radius.circular(50))
//       ),
//       hintText: label,
//       hintStyle: TextStyle(
//         color: Colors.black.withOpacity(0.5),
//         fontWeight: FontWeight.w500,
//       ),
//       prefixIcon: Icon(
//         prefixIcon,
//         size: 24,
//         color: Colors.grey,
//       ),
//     ),
//     obscureText: obscureText,
//     keyboardType: keyboardType,
//     controller: textController,
//     onSaved: onSaved,
//     validator: validator,
//   );
// }
}
