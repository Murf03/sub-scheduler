import 'package:flutter/material.dart';

class BlocParams {
  final String icon;
  final Color iconColor;
  final double globalL,
      top,
      left,
      angle,
      borderRad1,
      borderRad2,
      padding,
      iconSize,
      iconContainer;

  BlocParams(
      {required this.padding,
      required this.iconSize,
      required this.iconContainer,
      required this.borderRad1,
      required this.borderRad2,
      required this.icon,
      required this.globalL,
      required this.iconColor,
      required this.left,
      required this.angle,
      required this.top});
}

Map<String, BlocParams> blocParams = {
  "spotify": BlocParams(
      padding: 22,
      iconSize: 75,
      iconContainer: 80,
      borderRad1: 50,
      borderRad2: 43,
      icon: 'assets/icons/spotify.svg',
      globalL: 160,
      iconColor: Colors.green,
      left: 110,
      angle: -0.130,
      top: 315),
  "youtube": BlocParams(
      padding: 20,
      iconSize: 55,
      iconContainer: 65,
      borderRad1: 33,
      borderRad2: 28,
      icon: 'assets/icons/youtube.svg',
      globalL: 120,
      iconColor: Colors.transparent,
      left: 245,
      angle: 0.450,
      top: 115),
  "i_cloud": BlocParams(
      padding: 15,
      iconSize: 40,
      iconContainer: 45,
      borderRad1: 28,
      borderRad2: 20,
      icon: 'assets/icons/i_cloud.svg',
      globalL: 95,
      iconColor: Colors.transparent,
      left: 75,
      angle: 0.430,
      top: 185),
  "netflix": BlocParams(
      padding: 10,
      iconSize: 20,
      iconContainer: 25,
      borderRad1: 18,
      borderRad2: 12,
      icon: 'assets/images/netflix.png',
      globalL: 50,
      iconColor: Colors.transparent,
      left: 125,
      angle: -0.420,
      top: 125),
};
