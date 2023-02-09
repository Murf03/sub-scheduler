import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sub_scheduler/screens/welcome/components/bloc_params.dart';

import '../../../constants.dart';

class BlocWithIcon extends StatelessWidget {
  final BlocParams params;

  const BlocWithIcon({super.key, required this.params});

  bool isNetflix() {
    return params.icon == 'assets/images/netflix.png';
  }

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
              borderRadius: BorderRadius.circular(params.borderRad1)),
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
                borderRadius: BorderRadius.circular(params.borderRad2)),
            child: Container(
              width: params.iconContainer,
              height: params.iconContainer,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              alignment: Alignment.center,
              child: isNetflix()
                  ? Transform.rotate(
                      angle: 0.4, child: Image.asset(params.icon))
                  : SvgPicture.asset(
                      params.icon,
                      width: params.iconSize,
                      height: params.iconSize,
                      colorFilter: params.iconColor == Colors.transparent
                          ? null
                          : ColorFilter.mode(params.iconColor, BlendMode.srcIn),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
