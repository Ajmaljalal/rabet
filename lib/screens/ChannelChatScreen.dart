import 'package:flutter/material.dart';
import '../models/Models.dart';

List<Message> messages = [
  Message(
      id: 'afasdfasdfkwre324t',
      text:
          'First one Last one is a very long test so we an understand the design of this thing in full.'),
  Message(
      id: 'we543ytretrewtwret',
      text:
          'About our work Last one is a very long test so we an understand the design of this thing in full.'),
  Message(
      id: 'werewrewrfsdfdsfds',
      text:
          'private enter Last one is a very long test so we an understand the design of this thing in full.'),
  Message(
      id: 'asdfasdfsadfdsgfdg',
      text:
          'Another here Last one is a very long test so we an understand the design of this thing in full.'),
  Message(
      id: 'cbvdgfdsfdsfdsfdsf',
      text:
          'This is our staff Last one is a very long test so we an understand the design of this thing in full.'),
  Message(
      id: 'asdfadsfds45645464',
      text:
          'Nope, a channel Last one is a very long test so we an understand the design of this thing in full.'),
  Message(
      id: 'xcv4xc65v4546fsdfd',
      text:
          'Public and both Last one is a very long test so we an understand the design of this thing in full.'),
  Message(
      id: '4564asdfdsafdsafsd',
      text:
          'Personal room Last one is a very long test so we an understand the design of this thing in full.'),
  Message(
      id: 'wer435345dsffsdfrt',
      text:
          'Public Last one is a very long test so we an understand the design of this thing in full.'),
  Message(
      id: 'erw3ykuiolop980-09',
      text:
          'private not enter Last one is a very long test so we an understand the design of this thing in full.'),
  Message(
      id: 'werewrftrytyu78i7o',
      text:
          'Public Last one is a very long test so we an understand the design of this thing in full.'),
  Message(
      id: 'sdfdstrt56y5467546',
      text:
          'عمومی ګروپ Last one is a very long test so we an understand the design of this thing in full.'),
  Message(
      id: 'etrt54654654654666',
      text:
          'Public Last one is a very long test so we an understand the design of this thing in full.'),
  Message(
      id: 'tertretretretretre',
      text:
          'Another here Last one is a very long test so we an understand the design of this thing in full.'),
  Message(
      id: 'ghytjytu6756745654',
      text:
          'Last one is a very long test so we an understand the design of this thing in full.'),
];

class ChannelChatScreen extends StatelessWidget {
  final Channel channel;
  ChannelChatScreen({@required this.channel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(channel.name),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: ListView.builder(
          itemCount: messages.length,
          itemBuilder: (context, index) {
            final message = messages[index];
            return buildMessageBody(message);
          },
        ),
      ),
    );
  }

  GestureDetector buildMessageBody(Message message) {
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
                      channel.name,
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
            SizedBox(height: 5.0),
            Text('${message.text}'),
          ],
        ),
      ),
    );
  }
}
