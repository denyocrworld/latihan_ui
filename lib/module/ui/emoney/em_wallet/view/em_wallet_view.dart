import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class EmWalletView extends StatefulWidget {
  const EmWalletView({Key? key}) : super(key: key);

  Widget build(context, EmWalletController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Icon(
              Icons.add,
              size: 24.0,
            ),
            SizedBox(
              width: 6.0,
            ),
            Text(
              "Add Wallet",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                child: QCategoryPicker(
                  items: const [
                    {
                      "label": "All",
                      "value": "All",
                    },
                    {
                      "label": "Savings",
                      "value": "Savings",
                    },
                    {
                      "label": "Investment",
                      "value": "Investment",
                    },
                    {
                      "label": "Expense",
                      "value": "Expense",
                    }
                  ],
                  onChanged: (index, label, value, item) {},
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SingleChildScrollView(
                controller: ScrollController(),
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                child: Row(
                  children: List.generate(controller.expenses.length, (index) {
                    var item = controller.expenses[index];

                    return Container(
                      height: 120.0,
                      width: 120.0,
                      margin: const EdgeInsets.only(
                        right: 12.0,
                      ),
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            item["icon"],
                            size: 24.0,
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            item["title"],
                            style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "\$${item["amount"]}",
                            style: const TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: const [
                  Expanded(
                    child: Text(
                      "Latest Activity",
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
              ListView.builder(
                itemCount: controller.balances.length,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = controller.balances[index];

                  var amount = item["amount"];
                  var formatter =
                      NumberFormat.currency(locale: "en_US", symbol: "\$");
                  var amountText = formatter.format(amount);
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        item["photo"],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: CircleAvatar(
                              radius: 8.0,
                              backgroundColor:
                                  amount < 0 ? Colors.red : Colors.green,
                              child: Icon(
                                amount < 0
                                    ? Icons.arrow_downward
                                    : Icons.arrow_upward,
                                size: 8.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    title: Text(item["name"]),
                    subtitle: Text(
                      item["date"],
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    trailing: Text(
                      amountText,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: item["amount"] < 0 ? Colors.red : Colors.green,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<EmWalletView> createState() => EmWalletController();
}
