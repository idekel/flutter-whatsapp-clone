import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/message.dart';

class ConversationItem extends StatelessWidget {
  final Message message;

  ConversationItem(this.message);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey,
        foregroundColor: Theme.of(context).primaryColor,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(message.from),
          Text(
            message.hour,
            style: Theme.of(context).textTheme.body1.copyWith(
                  fontSize: 12.0,
                  color: Theme.of(context).textTheme.caption.color,
                ),
          ),
        ],
      ),
      subtitle: Text(message.msg),
    );
  }
}
