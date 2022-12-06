import 'package:application/constants/colors.dart';
import 'package:flutter/material.dart';

class ContractDetailRow extends StatelessWidget {
  final title;
  TextInputType inputType;

  ContractDetailRow({required this.title, required this.inputType});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 10),
        SizedBox(
          height: MediaQuery.of(context).size.height / 20,
          width: MediaQuery.of(context).size.width / 1.4,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: TextField(
              keyboardType: inputType,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide:
                      const BorderSide(width: 0, style: BorderStyle.none),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            title,
            textAlign: TextAlign.end,
            style: const TextStyle(
              fontSize: 12,
              color: getColors.dark,
            ),
          ),
        ),
        const SizedBox(width: 6),
      ],
    );
  }
}
