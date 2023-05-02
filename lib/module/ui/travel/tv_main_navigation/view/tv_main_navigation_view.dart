import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TvMainNavigationView extends StatefulWidget {
  const TvMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, TvMainNavigationController controller) {
    controller.view = this;

    /*
    TODO: Implement this @ controller
    int selectedIndex = 0;
    updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
    }
    */
    return DefaultTabController(
      length: 4,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            const TvDashboardView(),
            Container(),
            Container(),
            Container(),
          ],
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            currentIndex: controller.selectedIndex,
            onTap: (newIndex) => controller.updateIndex(newIndex),
            selectedItemColor: const Color(0xfffdc620),
            showSelectedLabels: false,
            elevation: 0.0,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 32.0,
                ),
                label: "Dashboard",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.cases_sharp,
                  size: 32.0,
                ),
                label: "Order",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.airplane_ticket,
                  size: 32.0,
                ),
                label: "Favorite",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 32.0,
                ),
                label: "User",
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TvMainNavigationView> createState() => TvMainNavigationController();
}
