import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hebrew_to_amharic/app/config/app_colors.dart';
import 'package:hebrew_to_amharic/app/config/app_sizes.dart';
import 'package:hebrew_to_amharic/app/config/app_theme.dart';
import 'package:hebrew_to_amharic/app/routes/app_pages.dart';

import '../controllers/history_page_controller.dart';

class HistoryPageView extends StatefulWidget {
  HistoryPageView({
    Key? key,
    this.isfromHome,
  }) : super(key: key);

  final bool? isfromHome;

  @override
  State<HistoryPageView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HistoryPageView> {
  late HistoryPageController controller;

  @override
  void initState() {
    controller = Get.put(HistoryPageController());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayLighter.withOpacity(0.3),
      body: Column(
        children: [
          Container(
            color: AppColors.primary,
            child: Column(
              children: [
                AppBar(
                  backgroundColor: AppColors.primary,
                  title: Text(
                    "History Page",
                    style: AppTypography.poppins10W400.copyWith(
                      fontSize: AppSizes.font_20,
                      color: Colors.white,
                    ),
                  ),
                  centerTitle: true,
                  elevation: 0, // Remove shadow
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Replace with the actual number of items
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.DETAIL_PAGE);
                    // Handle word detail navigation
                  },
                  child: Card(
                    shadowColor: Colors.white.withOpacity(0.1),
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.sunny,
                        color: AppColors.primary,
                      ),
                      title: Text('Word $index',
                          style: AppTypography.poppins10W400.copyWith(
                            fontSize: AppSizes.font_16,
                            color: AppColors.grayDark,
                            fontWeight: FontWeight.bold,
                          )),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.bookmark_border,
                          size: AppSizes.font_18,
                        ),
                        onPressed: () {
                          // Handle bookmark action
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: AppColors.primary,
              ),
              onPressed: () {
                // Handle clear history action
              },
              child: Text(
                'Clear History',
                style: AppTypography.poppins10W400.copyWith(
                  fontSize: AppSizes.font_16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
