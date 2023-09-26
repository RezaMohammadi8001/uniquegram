import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 44.0.w),
      child: TextFormField(
        style: const TextStyle(color: Colors.white),
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.remove_red_eye_outlined,
              color: Colors.white,
            ),
          ),
          prefixIcon: const Icon(
            Icons.lock,
            color: Colors.white,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 3.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
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
          labelStyle: const TextStyle(
            fontFamily: 'GM',
            fontSize: 20,
          ),
        ),
        onChanged: (value) {},
        obscuringCharacter: '*',
        validator: (value) {
          if (value != null && value.length < 8) {
            return 'password is very short';
          } else {
            return null;
          }
        },
      ),
    );
  }
}
