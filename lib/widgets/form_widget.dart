import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 44.0, vertical: 10.0),
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
              const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
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
