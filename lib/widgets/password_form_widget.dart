import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordFormWidget extends StatefulWidget {
  const PasswordFormWidget({super.key, required this.passwordFormKey});
  final GlobalKey<FormState> passwordFormKey;

  @override
  State<PasswordFormWidget> createState() => _PasswordFormWidgetState();
}

class _PasswordFormWidgetState extends State<PasswordFormWidget> {
  final FocusNode focusNode = FocusNode();
  bool isValid = false;
  bool obscureText = true;
  @override
  void initState() {
    focusNode.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.passwordFormKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 44.0.w),
        child: TextFormField(
          focusNode: focusNode,
          style: const TextStyle(color: Colors.white),
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
              icon: const Icon(
                Icons.remove_red_eye_outlined,
                color: Colors.white,
              ),
            ),
            prefixIcon: const Icon(
              Icons.lock,
              color: Colors.white,
            ),
            hintStyle: TextStyle(
              color: Colors.white.withOpacity(0.7),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: isValid ? Colors.green : const Color(0xffC5C5C5),
                width: 3.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: isValid ? Colors.green : const Color(0xffF35383),
                width: 3.0,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Colors.red,
                width: 3.0,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Colors.red,
                width: 3.0,
              ),
            ),
            hintText: 'Please enter you password here',
            contentPadding:
                EdgeInsets.symmetric(vertical: 15.w, horizontal: 15.w),
            labelText: 'Password',
            labelStyle: TextStyle(
              fontFamily: 'GM',
              fontSize: 20,
              color: _detectTextColor(focusNode, isValid),
            ),
          ),
          obscureText: obscureText,
          onChanged: (value) {
            if (value.length < 8) {
              setState(() {
                isValid = false;
              });
            } else {
              setState(() {
                isValid = true;
              });
            }
          },
          validator: (value) {
            if (value != null && value.length < 8) {
              return 'password is very short';
            } else {
              return null;
            }
          },
          obscuringCharacter: '*',
        ),
      ),
    );
  }

  Color _detectTextColor(FocusNode focusNode, bool valid) {
    if (focusNode.hasFocus && !valid) {
      return const Color(0xffF35383);
    }
    if (focusNode.hasFocus && valid) {
      return Colors.green;
    }
    if (!focusNode.hasFocus && valid) {
      return Colors.green;
    }
    return const Color(0xffC5C5C5);
  }
}
