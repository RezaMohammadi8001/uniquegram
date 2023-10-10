import 'package:flutter/material.dart';

class CustomChoiceChip extends StatefulWidget {
  const CustomChoiceChip({super.key, required this.choices});
  final String choices;

  @override
  State<CustomChoiceChip> createState() => _CustomChoiceChipState();
}

class _CustomChoiceChipState extends State<CustomChoiceChip> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      selectedColor: const Color(0xffF35383),
      backgroundColor: const Color(0xFF272B40),
      label: Text(
        widget.choices,
        style: const TextStyle(color: Colors.white),
      ),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: isSelected ? const Color(0xffF35383) : const Color(0xFF272B40),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      selected: isSelected,
      onSelected: (selected) {
        setState(() {
          isSelected = selected;
        });
      },
    );
  }
}
