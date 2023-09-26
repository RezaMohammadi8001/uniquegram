import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailFormWidget extends StatefulWidget {
  const EmailFormWidget({super.key});

  @override
  State<EmailFormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<EmailFormWidget> {
  final FocusNode focusNode = FocusNode();
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 44.0.w),
      child: TextFormField(
        focusNode: focusNode,
        style: const TextStyle(color: Colors.white),
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.email,
            color: Colors.white,
          ),
          hintStyle: TextStyle(
            color: Colors.white.withOpacity(0.7),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color(0xffC5C5C5),
              width: 3.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color(0xffF35383),
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
          hintText: 'example@gmail.com',
          contentPadding:
              EdgeInsets.symmetric(vertical: 15.w, horizontal: 15.w),
          labelText: 'Email',
          labelStyle: TextStyle(
            fontFamily: 'GM',
            fontSize: 20,
            color: focusNode.hasFocus ? const Color(0xffF35383) : Colors.white,
          ),
        ),
        onChanged: (value) {},
        
      ),
    );
  }
}
