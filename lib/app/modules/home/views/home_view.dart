import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hebrew_to_amharic/app/common/app_drawer.dart';
import 'package:hebrew_to_amharic/app/config/app_colors.dart';
import 'package:hebrew_to_amharic/app/config/app_sizes.dart';
import 'package:hebrew_to_amharic/app/config/app_theme.dart';
import 'package:hebrew_to_amharic/app/routes/app_pages.dart';
import 'package:hebrew_to_amharic/app/services/constants.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  HomeView({
    Key? key,
    this.isfromHome,
  }) : super(key: key);

  final bool? isfromHome;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late HomeController controller;

  @override
  void initState() {
    controller = Get.put(HomeController());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayLighter.withOpacity(0.3),
      key: controller.keyforall,
      drawer: AppDrawer(),
      body: Column(
        children: [
          Container(
            color: AppColors.primary,
            child: Column(
              children: [
                AppBar(
                  backgroundColor: AppColors.primary,
                  title: Text(
                    Constants.appTtitle,
                    style: AppTypography.poppins10W400.copyWith(
                      fontSize: AppSizes.font_20,
                      color: Colors.white,
                    ),
                  ),
                  centerTitle: true,
                  elevation: 0, // Remove shadow
                  leading: GestureDetector(
                    onTap: () {
                      controller.keyforall.currentState!.openDrawer();
                    },
                    child: Icon(
                      Icons.menu,
                      color: AppColors.whiteOff,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for a word',
                      hintStyle: AppTypography.poppins10W400.copyWith(
                        fontSize: AppSizes.font_14,
                        color: AppColors.grayDark,
                      ),
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
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
        ],
      ),
    );
  }
}
