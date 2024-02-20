import 'package:carousel_slider/carousel_slider.dart';
import 'package:floating_draggable_widget/floating_draggable_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/widget/container_gradient.dart';
import '../../gen/assets.gen.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<Widget> imageSliders = [
    Assets.image.imageCr1.image(height: Get.height, width: Get.width * 0.8),
    Assets.image.imageCr1.image(height: Get.height, width: Get.width * 0.8),
    Assets.image.imageCr1.image(height: Get.height, width: Get.width * 0.8),
    Assets.image.imageCr1.image(height: Get.height, width: Get.width * 0.8),
  ];
  final List<Widget> imageSliders2 = [
    Assets.image.imageJtp1.image(height: 300, width: 100),
    Assets.image.imageJtp2.image(height: 300, width: 100),
    Assets.image.imageJtp3.image(height: 300, width: 100),
    Assets.image.imageJtp2.image(height: 300, width: 100),
  ];

  @override
  Widget build(BuildContext context) {
    return FloatingDraggableWidget(
        floatingWidget: FloatingActionButton(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          elevation: 0,
          mini: true,
          onPressed: () {},
          child: Assets.image.imageJackardHelpcenter
              .image(height: 130, width: 130),
        ),
        floatingWidgetHeight: 90,
        floatingWidgetWidth: 90,
        dx: 300,
        dy: 700,
        onDeleteWidget: () {
          debugPrint('Widget deleted');
        },
        mainScreenWidget: Scaffold(
          
          body: Stack(
            children: [
              containerGradient3,
              ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0, left: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Assets.image.imageJackpassTextlogo
                            .image(height: 100, width: 150),
                        Row(
                          children: [
                            Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: <Color>[
                                      Color(0xffFE5F5F),
                                      Color(0xffFC9842),
                                      Color(0xffFC9842)
                                    ],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 1,
                                      blurRadius: 0,
                                      offset: const Offset(0, 6),
                                    ),
                                  ],
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  child: Assets.image.iconHistory
                                      .image(width: 20, height: 20),
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: <Color>[
                                      Color(0xffFE5F5F),
                                      Color(0xffFC9842),
                                      Color(0xffFC9842)
                                    ],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 1,
                                      blurRadius: 0,
                                      offset: const Offset(0, 6),
                                    ),
                                  ],
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  child: Assets.image.iconNotification
                                      .image(width: 20, height: 20),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Assets.image.iconUser
                                .image(width: 45, height: 45)),
                        SizedBox(
                          width: 120,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Good Morning,",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text("Good Guest",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 20.0),
                    child: Container(
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: const Border(
                            left: BorderSide(
                                width: 10.0, color: Colors.redAccent),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 0,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Balance Account"),
                                Text("0,-"),
                              ],
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: Padding(
                                padding: const EdgeInsets.only(top: 0.0),
                                child: containerGradient4,
                              ),
                            ),
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: SizedBox(
                      width: Get.width,
                      height: 100,
                      child: CarouselSlider(
                      
                        options: CarouselOptions(
                            viewportFraction: 0.9,
                            aspectRatio: 2.0,
                            enlargeCenterPage: false,
                            enableInfiniteScroll: false,
                            pauseAutoPlayInFiniteScroll: true,
                            initialPage: 1,
                            autoPlay: false,
                            scrollPhysics: const BouncingScrollPhysics()),
                        items: imageSliders,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: SizedBox(
                      // width: Get.width,
                      height: 300,
                      child: CarouselSlider(
                        options: CarouselOptions(
                            viewportFraction: 0.9,
                            aspectRatio: 2.0,
                            enlargeCenterPage: false,
                            enableInfiniteScroll: false,
                            pauseAutoPlayInFiniteScroll: true,
                            initialPage: 1,
                            autoPlay: false,
                            scrollPhysics: const BouncingScrollPhysics()),
                        items: imageSliders2,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
