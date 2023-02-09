import 'package:flutter/material.dart';
import 'package:sub_scheduler/screens/welcome/components/bloc_no_icon_params.dart';

import '../../../constants.dart';

class BlocNoIcon extends StatelessWidget {
  final BlocNoIconParams params;

  const BlocNoIcon({super.key, required this.params});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: params.globalL,
      height: params.globalL,
      top: params.top,
      left: params.left,
      child: Transform(
        transform: Matrix4.rotationZ(params.angle),
        child: Container(
          width: params.globalL,
          height: params.globalL,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 0.5,
                  color: kWlcmBlocBorder.withOpacity(0.1),
                  spreadRadius: 0.25,
                  offset: const Offset(0.5, 0.5),
                )
              ],
              color: kGray60.withOpacity(0.5),
              borderRadius: BorderRadius.circular(params.border1)),
          child: Container(
            width: params.globalL - params.padding,
            height: params.globalL - params.padding,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1.5,
                    color: kWlcmBlocBorder.withOpacity(0.125),
                    spreadRadius: 0.15,
                    offset: const Offset(0.5, 0.5),
                  )
                ],
                border: Border.all(
                    width: 3, color: kWlcmBlocBorder.withOpacity(0.2)),
                color: kGray60.withOpacity(0.1),
                borderRadius: BorderRadius.circular(params.border2)),
          ),
        ),
      ),
    );
  }
}
