import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/message_list_controller.dart';

// alert - server masalah
// di arahkan ke halaman "server error"
// dialog dengan tombol retry

class MessageListView extends StatefulWidget {
  const MessageListView({Key? key}) : super(key: key);

  Widget build(context, MessageListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("MessageList"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.messages.length,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = controller.messages[index];

                  bool isMe = item["is_me"];
                  return Row(
                    mainAxisAlignment:
                        isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                    children: [
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.4,
                        ),
                        margin: const EdgeInsets.only(
                          bottom: 12.0,
                        ),
                        decoration: BoxDecoration(
                          color: isMe ? Colors.grey[600] : Colors.green,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item["sender"],
                                style: const TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                              Text(
                                item["message"],
                                style: const TextStyle(
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<MessageListView> createState() => MessageListController();
}
