import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/conversation_item.dart';
import 'package:whatsapp_clone/models/data.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:
          mockMessages.map((message) => ConversationItem(message)).toList(),
    );
  }
}
