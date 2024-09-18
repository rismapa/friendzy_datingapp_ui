import 'dart:ui';

import 'package:dating_app_ui/model/discover_user.dart';
import 'package:dating_app_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class DiscoverTile extends StatelessWidget {
  const DiscoverTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 16.0),
        child: SizedBox(
          height: 160,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: discoverItems.length,
            itemBuilder: (context, index) {
              DiscoverUser item = discoverItems[index];

              return Container(
                margin: const EdgeInsets.only(right: 16.0),
                height: 160,
                width: 105,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Stack(
                  children: [
                    // image profile
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          item.imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // gradient image
                    Positioned.fill(
                      child: Container(
                        height: 160,
                        width: 105,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: LinearGradient(
                              colors: [
                                AppColors.main.withOpacity(.2),
                                AppColors.main.withOpacity(.9)
                              ],
                              stops: const [
                                0.0,
                                1.0
                              ],
                              begin: Alignment.center,
                              end: Alignment.bottomCenter),
                        ),
                      ),
                    ),

                    // new label
                    Container(
                      margin: const EdgeInsets.all(6),
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 8),
                      decoration: BoxDecoration(
                          color: AppColors.main,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: AppColors.secondary1,
                              strokeAlign: BorderSide.strokeAlignInside,
                              width: 1)),
                      child: const Text(
                        "NEW",
                        style: TextStyle(
                            fontFamily: "Hellix",
                            fontSize: 11,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            height: 1.25),
                      ),
                    ),

                    // user info
                    Positioned(
                      bottom: 18,
                      left: 15,
                      child: Column(
                        children: [
                          // distance
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 8),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.5),
                              borderRadius: BorderRadius.circular(32),
                              border: Border.all(
                                  color: Colors.white.withOpacity(.2),
                                  strokeAlign: BorderSide.strokeAlignInside,
                                  width: 1),
                            ),
                            child: const Text(
                              "16 km away",
                              style: TextStyle(
                                  fontFamily: "Hellix",
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  height: .11),
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),

                          // name and age
                          const Text(
                            "Halima, 19",
                            style: TextStyle(
                                fontFamily: "Hellix",
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                height: 1.4),
                          ),
                          const SizedBox(
                            height: 7,
                          ),

                          // country
                          const Text(
                            "BERLIN",
                            style: TextStyle(
                                fontFamily: "Hellix",
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                height: .14,
                                letterSpacing: 2),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
