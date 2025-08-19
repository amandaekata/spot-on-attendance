import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {super.key,
      this.isPassword = false,
      required this.validator,
      required this.keyboardType,
      required this.controller,
      required this.hintText,
      });
  final TextInputType keyboardType;
  final TextEditingController controller;
  final String? validator;
 final bool isPassword ;
 final String? hintText;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    //isHidden = widget.keyboardType == TextInputType.visiblePassword;
   
    return TextFormField(
      obscureText: widget.isPassword && isHidden,
      
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      validator: (value) => value!.isEmpty ? widget.validator : null,
      decoration:   InputDecoration(
        
       //contentPadding:const  EdgeInsets.only(left: 12, bottom: 18, top: 18),
        hintText: widget.hintText,
        hintStyle: AppTypography.regular.copyWith(
          color: Colors.black.withOpacity(0.5),
        ),
        border: const  OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        
        suffixIcon: widget.isPassword?
         IconButton(onPressed: (){
          setState(() {
            isHidden = !isHidden;
          });
         }, icon: isHidden? const Icon(Icons.visibility_off_outlined):const Icon(Icons.visibility_outlined) ): null,
      )
    );
  }
}
