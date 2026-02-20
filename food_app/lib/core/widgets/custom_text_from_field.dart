import 'package:flutter/material.dart';


class CustomTextFromField extends StatelessWidget {
  const CustomTextFromField({
    super.key,
    this.hintText,
    this.keyboardType,
    this.validator,
    this.prefixIcon,
    this.readOnly =false,
    this.onTap,
    this.focusNode,
    this.onChanged,
  });
  final String? hintText ;
  final TextInputType? keyboardType ;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final bool readOnly;
  final Function()? onTap;
  final FocusNode? focusNode;
  final Function(String)? onChanged;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      readOnly: readOnly,
      focusNode: focusNode,
      textInputAction: TextInputAction.next,
      onTapOutside: (event){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon : prefixIcon,        
        ),
        validator:validator,
        onChanged: (value) {},
        onTap: onTap,
      );
  }
}