import 'package:dating_app_ui/screen/maps_screen/widget/discover_tile.dart';
import 'package:dating_app_ui/utils/colors.dart';
import 'package:dating_app_ui/widgets/button_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MapsScreen extends StatefulWidget {
  const MapsScreen({super.key});

  @override
  State<MapsScreen> createState() => _MapsScreenState();
}

class _MapsScreenState extends State<MapsScreen> {
  List<String> country = ["Germany", "Spain", "Italia"];
  String? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            // top
            _topBarWidget(),

            const DiscoverTile(),
          ],
        ),
      )),
    );
  }

  Widget _topBarWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // location and discover
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Row(
                children: [
                  Column(
                    children: [
                      // location
                      DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          icon: SvgPicture.asset("assets/svgs/dropdown.svg"),
                          focusColor: AppColors.secondary1,
                          value: selectedCountry,
                          hint: const Text(
                            "Country",
                            style: TextStyle(
                                fontFamily: "Hellix",
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.black,
                                height: 1.35),
                          ),
                          items: country
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                            "assets/svgs/location.svg"),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          e,
                                          style: const TextStyle(
                                              fontFamily: "Hellix",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.black,
                                              height: 1.35),
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                          onChanged: (String? value) {
                            setState(() {
                              selectedCountry = value;
                            });
                          },
                        ),
                      ),

                      // discover
                      const Text(
                        "Discover",
                        style: TextStyle(
                            fontFamily: "Hellix",
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: AppColors.black,
                            height: 1.25),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),

        // search and setting
        const Padding(
          padding: EdgeInsets.only(
            right: 16.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ButtonTopWidget(
                iconPath: "assets/svgs/search.svg",
              ),
              SizedBox(
                width: 16,
              ),
              ButtonTopWidget(iconPath: "assets/svgs/setting.svg")
            ],
          ),
        )
      ],
    );
  }
}
