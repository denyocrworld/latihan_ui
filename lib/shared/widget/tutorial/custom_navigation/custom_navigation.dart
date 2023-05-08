// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ExCustomNavigation extends StatefulWidget {
  final List<String> menus;
  final List<Widget> views;
  const ExCustomNavigation({
    Key? key,
    required this.menus,
    required this.views,
  }) : super(key: key);

  @override
  State<ExCustomNavigation> createState() => _ExCustomNavigationState();
}

class _ExCustomNavigationState extends State<ExCustomNavigation> {
  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }

  bool visible = false;
  updateVisibility() {
    visible = !visible;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    /*
    TODO: Implement this @ controller
   
    */
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: widget.views,
      ),
    );
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: selectedIndex,
              children: widget.views,
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: selectedIndex,
            children: widget.views,
          ),
          if (!visible)
            Positioned(
              right: 20,
              bottom: 20,
              child: InkWell(
                onTap: () => updateVisibility(),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          if (visible)
            Positioned(
              right: 20,
              bottom: 20,
              child: Container(
                width: 100.0,
                height: 200.0,
                color: Colors.black,
                child: Column(
                  children: [
                    ...List.generate(widget.menus.length, (index) {
                      var item = widget.menus[index];
                      bool selected = selectedIndex == index;
                      return Expanded(
                        child: InkWell(
                          onTap: () => updateIndex(index),
                          child: Center(
                            child: Text(
                              item,
                              style: TextStyle(
                                fontSize: selected ? 16.0 : 12.0,
                                fontWeight: FontWeight.bold,
                                color: selected ? Colors.white : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                    Expanded(
                      child: InkWell(
                        onTap: () => updateVisibility(),
                        child: const Center(
                          child: Text(
                            "X",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
    return DefaultTabController(
      length: 4,
      initialIndex: selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: selectedIndex,
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.purple,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (newIndex) => updateIndex(newIndex),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
              ),
              label: "Dashboard",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
              ),
              label: "Order",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "User",
            ),
          ],
        ),
      ),
    );
  }
}
