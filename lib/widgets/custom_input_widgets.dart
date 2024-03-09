import 'package:dawaah/const.dart';
import 'package:flutter/material.dart';

class CustomInputField extends StatefulWidget {
  CustomInputField({
    required this.hintText,
    required this.onChange,
    super.key,
  });

  String hintText;
  Function(double) onChange;

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: screenPadding.copyWith(top: 10, bottom: 10),
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.hintText),
                const Icon(Icons.info_outline_rounded),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: TextField(
              keyboardType: TextInputType.number,
              // textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                hintText: widget.hintText,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
