import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

part 'image_picker_state.dart';

class ImagePickerCubit extends Cubit<ImagePickerState> {
  ImagePickerCubit() : super(ImagePickerInitial());
  final ImagePicker imagePicker = ImagePicker();
  XFile? fileImage;

  void pickImage() async {
    fileImage = await imagePicker.pickImage(source: ImageSource.gallery);
    if (fileImage != null) {
      var image = Image.file(
        File(fileImage!.path),
        fit: BoxFit.cover,
      );
      emit(ImagePickerSuccess(image: image));
    }
  }
}
