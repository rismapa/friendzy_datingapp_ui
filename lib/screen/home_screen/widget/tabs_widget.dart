import 'package:dating_app_ui/model/feed.dart';
import 'package:dating_app_ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TabsWidget extends StatelessWidget {
  const TabsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24.0, left: 16.0, right: 16.0),
            child: Container(
              width: double.infinity,
              height: 44,
              decoration: BoxDecoration(
                color: AppColors.secondary1.withOpacity(.25),
                borderRadius: BorderRadius.circular(16),
              ),
              child: TabBar(
                dividerColor: Colors.transparent,
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                padding: const EdgeInsets.all(4.0),
                tabs: const [
                  Text(
                    "Make Friends",
                    style: TextStyle(
                        fontFamily: "Hellix",
                        color: AppColors.main,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Search Partners",
                    style: TextStyle(
                        fontFamily: "Hellix",
                        color: AppColors.main,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: TabBarView(
              children: [
                SizedBox.expand(
                  child: ListView.builder(
                    itemCount: feedItems.length,
                    itemBuilder: (context, index) {
                      Feed feedItem = feedItems[index];

                      return Padding(
                        padding: const EdgeInsets.only(
                          top: 24,
                          left: 16,
                          right: 16,
                        ),
                        child: Container(
                          height: 350,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(24),
                            ),
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(24),
                                    child: Image.asset(
                                      feedItem.imagePath,
                                      fit: BoxFit.cover,
                                      height: 343,
                                      width: double.infinity,
                                    ),
                                  ),
                                  Container(
                                    height: 343,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      gradient: LinearGradient(
                                        colors: [
                                          AppColors.main.withOpacity(.6),
                                          AppColors.main.withOpacity(.1),
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.center,
                                        stops: const [0.0, 1.0],
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // isi feednya
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            // category
                                            _topicWidget(feedItem),
                                            const SizedBox(
                                              height: 120,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 16, bottom: 16),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  // caption
                                                  _captionWidget(feedItem),
                                                  const SizedBox(
                                                    height: 16,
                                                  ),
                                                  // user
                                                  _profileWidget(feedItem)
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      // buttons
                                      _buttonWidget(),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

                // kedua
                const Center(
                    child: Text(
                  "Tabs 2",
                  style: TextStyle(
                      fontFamily: "Hellix",
                      fontSize: 20,
                      color: Colors.transparent,
                      fontWeight: FontWeight.w500),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buttonWidget() {
    return Container(
      height: 184,
      padding:
          const EdgeInsets.only(left: 10.0, top: 20, right: 8.0, bottom: 20.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.4),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.5), shape: BoxShape.circle),
              child: SvgPicture.asset("assets/svgs/like.svg")),
          Row(
            children: [
              SvgPicture.asset("assets/svgs/divider.svg"),
              const SizedBox(
                width: 7,
              ),
              Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.5),
                      shape: BoxShape.circle),
                  child: SvgPicture.asset("assets/svgs/comment.svg")),
            ],
          ),
          Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.5), shape: BoxShape.circle),
              child: SvgPicture.asset("assets/svgs/more.svg")),
        ],
      ),
    );
  }

  Widget _captionWidget(Feed feedItem) {
    return Text(
      feedItem.caption,
      style: const TextStyle(
          fontFamily: "Hellix",
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
          height: 1.2),
    );
  }

  Widget _profileWidget(Feed feedItem) {
    return Row(
      children: [
        // image
        ClipOval(
          child: Image.asset(
            feedItem.imagePathUser,
            fit: BoxFit.cover,
            height: 40,
            width: 40,
          ),
        ),
        const SizedBox(
          width: 12,
        ),

        // user info
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              feedItem.name,
              style: const TextStyle(
                  fontFamily: "Hellix",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  height: 1.4),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              feedItem.city.toUpperCase(),
              style: const TextStyle(
                  fontFamily: "Hellix",
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  height: .14,
                  letterSpacing: 2),
            ),
          ],
        )
      ],
    );
  }

  Widget _topicWidget(Feed feedItem) {
    return Container(
      margin: const EdgeInsets.all(16),
      width: 120,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(32),
          border: Border.all(
              color: Colors.white.withOpacity(.2),
              strokeAlign: BorderSide.strokeAlignInside,
              width: 1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            feedItem.category.iconPath,
            height: 16,
            width: 16,
          ),
          const SizedBox(
            width: 6,
          ),
          Text(
            feedItem.category.categoryName,
            style: const TextStyle(
              fontFamily: "Hellix",
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
