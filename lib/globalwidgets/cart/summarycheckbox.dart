import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SummaryRowWithCheckbox extends StatelessWidget {
  final String label;
  final bool value;
  final ValueChanged<bool?> onChanged;

  const SummaryRowWithCheckbox({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        Checkbox(
          value: value,
          onChanged: onChanged,
          activeColor: Colors.black54, // Green fill color
          checkColor: Colors.white, // White tick (checkmark)
        ),
      ],
    );
  }
}
