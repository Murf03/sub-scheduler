import 'package:flutter/material.dart';
import '../constants.dart';

class OtherBtn extends StatelessWidget {
  final Function press;
  final String text;
  final Color color;
  const OtherBtn(
      {super.key,
      required this.press,
      required this.text,
      required this.color});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Container(
        height: 48,
        width: width,
        decoration: BoxDecoration(
            border: Border.all(color: kWhite.withOpacity(0.15)),
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(999))),
        child: TextButton(
            onPressed: press(),
            child: Text(
              text,
              style: const TextStyle(
                  color: kWhite,
                  fontSize: kHeadline2,
                  fontWeight: FontWeight.w600),
            )),
      ),
    );
  }
}
