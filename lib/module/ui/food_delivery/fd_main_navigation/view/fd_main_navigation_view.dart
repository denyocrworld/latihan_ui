import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FdMainNavigationView extends StatefulWidget {
  const FdMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, FdMainNavigationController controller) {
    controller.view = this;

    /*
    TODO: Implement this @ controller
    int selectedIndex = 0;
    updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
    }
    */

    Widget getNavigationItem(IconData icon, int index) {
      return Expanded(
        child: GestureDetector(
          onTap: () => controller.updateIndex(index),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              icon,
              color: controller.selectedIndex == index
                  ? const Color(0xffff4e01)
                  : Colors.grey,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Center Button',
        elevation: 2.0,
        backgroundColor: const Color(0xffff4e01),
        child: const Icon(MdiIcons.cart),
      ),
      body: IndexedStack(
        index: controller.selectedIndex,
        children: [
          const FdDashboardView(),
          Container(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: SizedBox(
          height: 60,
          child: Row(
            children: <Widget>[
              getNavigationItem(Icons.home, 0),
              getNavigationItem(MdiIcons.ticketPercent, 1),
              const SizedBox(width: 50),
              getNavigationItem(Icons.favorite, 2),
              getNavigationItem(Icons.person, 2),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FdMainNavigationView> createState() => FdMainNavigationController();
}
