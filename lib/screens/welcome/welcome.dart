import 'package:flutter/material.dart';
import 'package:sub_scheduler/components/primary_btn.dart';
import 'package:sub_scheduler/components/secondary_btn.dart';
import 'package:sub_scheduler/constants.dart';
import 'package:sub_scheduler/screens/welcome/components/bloc_no_icon_params.dart';
import 'package:sub_scheduler/screens/welcome/components/bloc_params.dart';
import 'package:sub_scheduler/screens/welcome/components/bloc_with_icon.dart';

import 'components/bloc_no_icon.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: size.width,
        height: size.height,
        color: kGray80,
        child: Column(
          children: [
            Expanded(
                child: Stack(
              children: [
                // Logo
                Positioned(
                  width: size.width,
                  height: 20,
                  top: 60,
                  child: const Center(
                    child: Text(
                      "TRACKIZER",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: kSubtitle,
                        color: kWhite,
                      ),
                    ),
                  ),
                ),
                //Light
                Positioned(
                    width: 200,
                    height: 200,
                    top: 250,
                    right: -50,
                    child: Transform(
                      transform: Matrix4.skew(0.25, 0.25),
                      child: Container(
                        decoration: BoxDecoration(
                            color: kAccentPri100,
                            boxShadow: [
                              BoxShadow(
                                  color: kAccentPri100.withOpacity(0.075),
                                  blurRadius: 12,
                                  offset: const Offset(0, 8),
                                  spreadRadius: 50,
                                  blurStyle: BlurStyle.normal),
                            ],
                            gradient: RadialGradient(
                              center: Alignment.center,
                              focal: Alignment.center,
                              focalRadius: 1,
                              stops: const [0.4325, 1],
                              radius: 1.5,
                              colors: [kWhite.withOpacity(0.0), kAccentPri100],
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(999))),
                      ),
                    )),

                // Images
                Positioned(
                  width: 288,
                  height: 219,
                  top: 120,
                  left: -230,
                  child: Image.asset("assets/images/welcome_image.png"),
                ),
                Positioned(
                  width: 288,
                  height: 219,
                  top: 250,
                  left: size.width - 80,
                  child: Transform.rotate(
                      angle: -41.66,
                      child: Image.asset("assets/images/welcome_image.png")),
                ),

                // My Rounded blocs
                BlocWithIcon(params: blocParams['spotify']!),
                BlocWithIcon(params: blocParams['youtube']!),
                BlocWithIcon(params: blocParams['i_cloud']!),
                BlocWithIcon(params: blocParams['netflix']!),

                BlocNoIcon(params: blocsNoIcon[0]),
                BlocNoIcon(params: blocsNoIcon[1]),
                BlocNoIcon(params: blocsNoIcon[2]),
                BlocNoIcon(params: blocsNoIcon[3]),
                BlocNoIcon(params: blocsNoIcon[4]),

                //Text
                Positioned(
                  width: size.width,
                  bottom: 0,
                  left: 0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.05, vertical: 30),
                    child: const Center(
                      child: Text(
                        "Congue malesuada in ac justo, a tristique leo massa. Arcu leo leo urna risus.",
                        style: TextStyle(
                          fontSize: kBodyMedium,
                          color: kWhite,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            )),

            //Buttons
            SizedBox(
              width: size.width,
              child: Column(
                children: [
                  PrimaryBtn(press: () {}, text: "Get Started"),
                  const SizedBox(height: 6),
                  SecondaryBtn(press: () {}, text: "I have an account"),
                  const SizedBox(height: 25)
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
