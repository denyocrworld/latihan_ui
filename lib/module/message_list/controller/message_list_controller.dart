import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/message_list_view.dart';

class MessageListController extends State<MessageListView>
    implements MvcController {
  static late MessageListController instance;
  late MessageListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map<String, dynamic>> messages = [
    {
      'id': 1,
      'message': 'Halo, apa kabar?',
      'sender': 'John',
      'is_me': true,
      'timestamp': DateTime.now(),
    },
    {
      'id': 2,
      'message': 'Baik-baik saja, terima kasih. Bagaimana denganmu?',
      'sender': 'Jane',
      'is_me': false,
      'timestamp': DateTime.now(),
    },
    {
      'id': 3,
      'message': 'Saya juga baik-baik saja. Terima kasih.',
      'sender': 'John',
      'is_me': true,
      'timestamp': DateTime.now(),
    },
  ];
}
