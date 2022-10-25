import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class TextFieldWidget extends StatefulWidget {
  String hinttext;
  TextFieldWidget({super.key, required this.hinttext});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool isPas = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return Validator();
        }
      },
      textInputAction: TextInputAction.next,
      keyboardType: TextType(),
      obscureText: widget.hinttext == 'Create your new password...' ||
              widget.hinttext == 'Enter your password...'
          ? !isPas
          : isPas,
      decoration: InputDecoration(
        suffixIcon: widget.hinttext == 'Create your new password...' ||
                widget.hinttext == 'Enter your password...'
            ? IconButton(
                onPressed: () {
                  setState(() {
                    setState(() {
                      isPas = !isPas;
                    });
                  });
                },
                icon: isPas
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
              )
            : const SizedBox(),
        border: const OutlineInputBorder(),
        hintText: widget.hinttext,
        hintStyle: GoogleFonts.familjenGrotesk(
          textStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
            color: MyColors.C_6A6975,
          ),
        ),
      ),
    );
  }

  Validator() {
    if (widget.hinttext == 'Create your new password...' ||
        widget.hinttext == 'Enter your password...') {
      return "Please enter your password";
    }
    if (widget.hinttext == 'Enter your full name...') {
      return 'Please enter your full name';
    }
    if (widget.hinttext == 'Enter your phone number...' ||
        widget.hinttext == '+998 __ ___ __ __') {
      return 'Please enter your phone number';
    }
  }

  TextType() {
    if (widget.hinttext == 'Create your new password...') {
      return TextInputType.visiblePassword;
    }
    if (widget.hinttext == 'Enter your full name...') {
      return TextInputType.text;
    }
    if (widget.hinttext == 'Enter your phone number...') {
      return TextInputType.phone;
    }
    if (widget.hinttext == '+998 __ ___ __ __') {
      return TextInputType.phone;
    }
  }
}
