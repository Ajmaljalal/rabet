import 'package:flutter/material.dart';
import 'package:raabita/data_models/Models.dart';
import 'package:line_icons/line_icons.dart';
import 'package:raabita/widgets/ProfileAvatar.dart';

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
        ProfileAvatar(message: message),
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
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 0.0),
            child: Text('${message.text}'),
          ),
          SizedBox(
            height: 3.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27.0),
            child: buildActionIcons(message),
          ),
        ],
      ),
    );
  }

  Widget buildActionIcons(message) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 5.0),
        buildActionButton(
          onTap: () {},
          icon: LineIcons.reply,
          count: message.repliesCount,
        ),
        const SizedBox(width: 10.0),
        buildActionButton(
          onTap: () {},
          icon: LineIcons.thumbsUp,
          count: message.likesCount,
        ),
      ],
    );
  }

  Widget buildActionButton({
    IconData icon,
    Function onTap,
    int count,
  }) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 20.0,
            color: Colors.blue[200],
          ),
          SizedBox(width: 3.0),
          Text(
            count != null ? count.toString() : '',
            style: TextStyle(fontSize: 10.0),
          ),
        ],
      ),
    );
  }
}
