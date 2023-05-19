import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class EmStatisticView extends StatefulWidget {
  const EmStatisticView({Key? key}) : super(key: key);

  Widget build(context, EmStatisticController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Statistic",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.grey[700],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Row(
                children: [
                  Text(
                    "January 2023",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
                  ),
                  const Icon(
                    MdiIcons.chevronDown,
                    size: 24.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Builder(
                builder: (context) {
                  final List<Map> chartData = [
                    {
                      "year": 2018,
                      "sales": 40,
                    },
                    {
                      "year": 2019,
                      "sales": 90,
                    },
                    {
                      "year": 2020,
                      "sales": 30,
                    },
                    {
                      "year": 2021,
                      "sales": 80,
                    },
                    {
                      "year": 2022,
                      "sales": 90,
                    }
                  ];

                  return Container(
                    color: Theme.of(context).cardColor,
                    padding: const EdgeInsets.all(12.0),
                    child: SfCartesianChart(
                      series: <ChartSeries>[
                        SplineSeries<Map, int>(
                          dataSource: chartData,
                          xValueMapper: (Map data, _) => data["year"],
                          yValueMapper: (Map data, _) => data["sales"],
                        )
                      ],
                    ),
                  );
                },
              ),
              const Text(
                "Spending Compared to Last Month",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListView.builder(
                itemCount: controller.balances.length,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = controller.balances[index];

                  var amount = item["amount"];
                  var balance = item["balance"];

                  var formatter =
                      NumberFormat.currency(locale: "en_US", symbol: "\$");
                  var amountText = formatter.format(amount);

                  var balanceText = formatter.format(balance);
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: item["color"],
                      child: Icon(
                        item["icon"],
                        size: 18.0,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(item["name"]),
                    subtitle: Text(
                      balanceText,
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    trailing: SizedBox(
                      width: 100.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.arrow_upward,
                            size: 16.0,
                            color:
                                item["amount"] < 0 ? Colors.red : Colors.green,
                          ),
                          Text(
                            "$amount%",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: item["amount"] < 0
                                  ? Colors.red
                                  : Colors.green,
                            ),
                          ),
                        ],
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
  State<EmStatisticView> createState() => EmStatisticController();
}
