import 'package:flutter/material.dart';
import 'package:raabita/models/Models.dart';

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
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                      message.text[0].toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
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
                      '05:00pm',
                      style: const TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 3.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0),
              child: Text('${message.text}'),
            ),
          ],
        ),
      ),
    );
  }
}
