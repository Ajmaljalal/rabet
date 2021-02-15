import 'package:flutter/material.dart';
import 'package:raabita/data_models/Models.dart';

class SingleMessage extends StatefulWidget {
  final Message message;
  final Channel channel;
  SingleMessage({this.message, this.channel});
  @override
  _SingleMessageState createState() => _SingleMessageState();
}

class _SingleMessageState extends State<SingleMessage> {
  @override
  Widget build(BuildContext context) {
    final message = widget.message;
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildMessageHead(message),
            const SizedBox(height: 3.0),
            buildMessageBody(message),
          ],
        ),
      ),
    );
  }

  Widget buildMessageHead(message) {
    return Row(
      children: [
        Container(
          height: 30.0,
          width: 30.0,
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
          ),
          child: Center(
            child: Text(
              message?.text[0].toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(width: 8.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.channel.name,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            // const SizedBox(height: 10.0),
            Text(
              '05:00',
              style: const TextStyle(
                color: Colors.blueGrey,
                fontSize: 12.0,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildMessageBody(message) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${message.text}'),
          buildMessageFooter(message),
        ],
      ),
    );
  }

  Widget buildMessageFooter(message) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildActionIcons(),
        buildLikesAndReplies(message),
      ],
    );
  }

  Widget buildActionIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 5.0),
        InkWell(
          onTap: () {},
          child: Icon(
            Icons.reply_rounded,
            size: 22.0,
            color: Colors.blue[200],
          ),
        ),
        const SizedBox(width: 10.0),
        InkWell(
          onTap: () {},
          child: Icon(
            Icons.thumb_up_rounded,
            size: 18.0,
            color: Colors.blue[200],
          ),
        ),
        const SizedBox(width: 10.0),
        InkWell(
          onTap: () {},
          child: Icon(
            Icons.forward_rounded,
            size: 22.0,
            color: Colors.blue[200],
          ),
        ),
      ],
    );
  }

  Widget buildLikesAndReplies(message) {
    return Row(
      children: [
        Text(
          'Reply: 23',
          style: TextStyle(
            color: Colors.blue[300],
            fontSize: 12.0,
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Text(
          'Like: 43',
          style: TextStyle(
            color: Colors.blue[300],
            fontSize: 12.0,
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
      ],
    );
  }
}
