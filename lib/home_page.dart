import 'package:ebook_app_audio_player/app_colors.dart' as AppColors;
import 'package:ebook_app_audio_player/compent/b_container.dart';
import 'package:ebook_app_audio_player/compent/col_container.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images = [
    {"id": 1, "url": 'assets/slider_sweat.png'},
    {"id": 2, "url": 'assets/img2.png'},
    {"id": 3, "url": 'assets/img3.png'},
    {"id": 4, "url": 'assets/img5.png'},
    {"id": 5, "url": 'assets/img6.png'}
  ];
  List popularBooks = [];
  // ScrollController _scrollController=;
  // TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _tabController=TabController(length: 3, vsync: this)
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: SafeArea(
          child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ImageIcon(
                      AssetImage("assets/menu.png"),
                      size: 24,
                    ),
                    Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(Icons.notifications)
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Popular Books",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 180,
                child: PageView.builder(
                    itemCount: images.length,
                    controller: PageController(viewportFraction: 0.9),
                    itemBuilder: (context, index) {
                      return Container(
                        key: ValueKey(images[index]["id"]),
                        height: 180,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                                image:
                                    AssetImage(images[index]["url"].toString()),
                                fit: BoxFit.fill)),
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: DefaultTabController(
                    initialIndex: 1,
                    length: 3,
                    child: Row(
                      children: [
                        BContainer(color: AppColors.menu1Color, text: 'New'),
                        SizedBox(
                          width: 10,
                        ),
                        BContainer(
                            color: AppColors.menu2Color, text: 'Popular'),
                        SizedBox(
                          width: 10,
                        ),
                        BContainer(
                            color: AppColors.menu3Color, text: 'Trending')
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  ColContainer(
                      image: 'assets/img6.png',
                      text1: '4.5',
                      text2: 'THE WATER CURVE',
                      text3: 'Marts'),
                  ColContainer(
                      image: 'assets/img5.png',
                      text1: '4.0',
                      text2: 'MIND PEACE',
                      text3: 'Marts'),
                  ColContainer(
                      image: 'assets/img3.png',
                      text1: '4.9',
                      text2: 'RELAX',
                      text3: 'Marts'),
                  ColContainer(
                      image: 'assets/img2.png',
                      text1: '4.1',
                      text2: 'RELAX',
                      text3: 'RAKS'),
                  ColContainer(
                      image: 'assets/img4.png',
                      text1: '2.9',
                      text2: 'ROMANTIC',
                      text3: 'ROYALS'),
                  ColContainer(
                      image: 'assets/img3.png',
                      text1: '3.9',
                      text2: 'COOL',
                      text3: 'SUPER'),
                ],
              ),

              //ColContainer()
            ],
          ),
        ),
      )),
    );
  }
}
