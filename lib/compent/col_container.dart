import 'package:flutter/material.dart';
import 'package:ebook_app_audio_player/app_colors.dart' as AppColors;

class ColContainer extends StatelessWidget {
  String image, text1, text2, text3;
  ColContainer(
      {required this.image,
      required this.text1,
      required this.text2,
      required this.text3});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
          height: MediaQuery.sizeOf(context).height * .17,
          child: Card(
            elevation: 6,
            child: Container(
              height: MediaQuery.sizeOf(context).height * .17,
              width: MediaQuery.sizeOf(context).width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.background),
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.8,
                    width: MediaQuery.sizeOf(context).width * 0.25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: AppColors.starColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              text1,
                              style: TextStyle(
                                  fontSize: 15, color: AppColors.menu2Color),
                            ),
                          ],
                        ),
                        Text(
                          text2,
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          text3,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w100),
                        ),
                        Container(
                          height: 30,
                          width: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColors.loveColor),
                          child: Center(
                              child: Text(
                            'Love',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
