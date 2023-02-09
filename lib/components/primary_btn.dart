import 'package:flutter/material.dart';
import '../constants.dart';

class PrimaryBtn extends StatelessWidget {
  final Function press;
  final String text;
  const PrimaryBtn({super.key, required this.press, required this.text});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Container(
        height: 48,
        width: width,
        decoration: BoxDecoration(
            border: Border.all(color: kWhite.withOpacity(0.5)),
            color: kAccentPri100,
            boxShadow: const [
              BoxShadow(
                  color: kAccentPri100,
                  blurRadius: 25,
                  offset: Offset(0, 8),
                  spreadRadius: 0.5,
                  blurStyle: BlurStyle.normal),
            ],
            // gradient: RadialGradient(
            //   center: Alignment(0, 1.8),
            //   focal: Alignment.center,
            //   focalRadius: 1,
            //   stops: const [0.4325, 1],
            //   radius: 2.4,
            //   colors: [kWhite.withOpacity(0.0), kAccentPri100],
            // ),
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
