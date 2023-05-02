import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class EmDashboardView extends StatefulWidget {
  const EmDashboardView({Key? key}) : super(key: key);

  Widget build(context, EmDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0.0,
        title: const ListTile(
          contentPadding: EdgeInsets.all(0.0),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://i.ibb.co/PGv8ZzG/me.jpg",
            ),
          ),
          title: Text(
            "Welcome Back",
            style: TextStyle(
              fontSize: 12.0,
            ),
          ),
          subtitle: Text(
            "Jane Doe",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Badge(
            label: Text(
              "4",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            child: Icon(Icons.notifications_outlined),
          ),
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Total Balance",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Text(
                "\$23.500",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 6.0,
              ),
              Row(
                children: const [
                  Icon(
                    MdiIcons.flag,
                    size: 14.0,
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    "Bogor, Jawa Barat",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Icon(
                    MdiIcons.chevronDown,
                    size: 16.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: const [
                  Expanded(
                    child: Text(
                      "Some things you can do here 🔥",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12.0,
              ),
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0,
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                ),
                itemCount: controller.menus.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.menus[index];
                  bool selected = controller.selectedIndex == index;

                  return InkWell(
                    onTap: () => controller.updateIndex(index),
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: selected
                            ? const Color(0xff3c81de)
                            : Colors.grey[300],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            item["icon"],
                            width: 32.0,
                            height: 32.0,
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            item["title"],
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: selected ? Colors.white : Colors.grey[900],
                            ),
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Expanded(
                            child: Text(
                              item["description"],
                              style: TextStyle(
                                fontSize: 14.0,
                                color:
                                    selected ? Colors.white : Colors.grey[700],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: const [
                  Text(
                    "Quick Send",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Icon(
                    Icons.wallet,
                    size: 18.0,
                    color: Colors.green,
                  ),
                ],
              ),
              const SizedBox(
                height: 12.0,
              ),
              //ALT+SHIFT+H
              //ALT+SHIFT+J
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      right: 16.0,
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey[900],
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          "Add",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[900],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      controller: ScrollController(),
                      scrollDirection: Axis.horizontal,
                      clipBehavior: Clip.none,
                      child: Row(
                        children:
                            List.generate(controller.contacts.length, (index) {
                          var item = controller.contacts[index];
                          return Container(
                            margin: const EdgeInsets.only(
                              right: 16.0,
                            ),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    item["photo"],
                                  ),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  item["name"],
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<EmDashboardView> createState() => EmDashboardController();
}
