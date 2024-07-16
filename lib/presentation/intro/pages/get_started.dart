import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/configs/assets/images.dart';
import 'package:spotify/core/configs/assets/vectors.dart';
import 'package:spotify/core/configs/theme/colors.dart';
import 'package:spotify/presentation/choosemode/pages/choosemode.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      AppImages.bgimg1,
                    ),
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(Colors.black38, BlendMode.darken))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  SvgPicture.asset(AppVectors.logo),
                  const Spacer(),
                  const Text(
                    "Enjoy listening to music",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      height: 50,
                      width: size.width * 0.76,
                      child: const Text(
                        "Your journey to musical bliss starts here. Explore a world of sound with curated playlists, personalized recommendations, and seamless streaming. Let the music elevate your every moment.",
                        style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  BasicAppButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ChooseMode(),
                            ));
                      },
                      title: "Get Started")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
