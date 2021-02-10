import 'package:flutter/material.dart';
import '../models/Models.dart';

List<Channel> channels = [
  Channel(id: 'afasdfasdfkwre3245', name: 'First one', private: false),
  Channel(id: 'we543ytretrewtwret', name: 'About our work ', private: false),
  Channel(id: 'asdfasdfsadfdsgfdg', name: 'Another here', private: false),
  Channel(id: 'werewrewrfsdfdsfds', name: 'private enter', private: false),
  Channel(id: 'cbvdgfdsfdsfdsfdsf', name: 'This is our staff', private: false),
  Channel(id: 'asdfadsfds45645464', name: 'Nope, a channel', private: false),
  Channel(id: 'xcv4xc65v4546fsdfd', name: 'Public and both', private: false),
  Channel(id: '4564asdfdsafdsafsd', name: 'Personal room', private: false),
  Channel(id: 'wer435345dsffsdfrt', name: 'Public', private: false),
  Channel(id: 'erw3ykuiolop980-09', name: 'private not enter', private: false),
  Channel(id: 'werewrftrytyu78i7o', name: 'Public', private: false),
  Channel(id: 'sdfdstrt56y54675465', name: 'عمومی ګروپ', private: false),
  Channel(id: 'etrt546546546546666', name: 'Public', private: false),
  Channel(id: 'tertretretretretret', name: 'Another here', private: false),
  Channel(id: 'ghytjytu67567456546', name: 'Last one', private: false),
];

List<Message> messages = [
  Message(id: 'afasdfasdfkwre324t', text: 'First one'),
  Message(id: 'we543ytretrewtwret', text: 'About our work '),
  Message(id: 'werewrewrfsdfdsfds', text: 'private enter'),
  Message(id: 'asdfasdfsadfdsgfdg', text: 'Another here'),
  Message(id: 'cbvdgfdsfdsfdsfdsf', text: 'This is our staff'),
  Message(id: 'asdfadsfds45645464', text: 'Nope, a channel'),
  Message(id: 'xcv4xc65v4546fsdfd', text: 'Public and both'),
  Message(id: '4564asdfdsafdsafsd', text: 'Personal room'),
  Message(id: 'wer435345dsffsdfrt', text: 'Public'),
  Message(id: 'erw3ykuiolop980-09', text: 'private not enter'),
  Message(id: 'werewrftrytyu78i7o', text: 'Public'),
  Message(id: 'sdfdstrt56y5467546', text: 'عمومی ګروپ'),
  Message(id: 'etrt54654654654666', text: 'Public'),
  Message(id: 'tertretretretretre', text: 'Another here'),
  Message(id: 'ghytjytu6756745654', text: 'Last one'),
];

class Channels extends StatefulWidget {
  @override
  _ChannelsState createState() => _ChannelsState();
}

class _ChannelsState extends State<Channels>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    print('in channels build');
    super.build(context);
    return Scaffold(
      body: ListView.builder(
        itemCount: channels.length,
        itemBuilder: (context, index) {
          final currentChannel = channels[index];
          return Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 0.2, color: Colors.grey),
              ),
            ),
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ChannelMessages(
                      channel: currentChannel,
                    ),
                  ),
                );
              },
              title: Text(
                currentChannel.name,
                style: TextStyle(
                  color: Colors.blueGrey,
                ),
              ),
              // leading: CircleAvatar(
              //   child: Text(currentChannel.name[0].toUpperCase()),
              //   radius: 20.0,
              // ),
              subtitle: Text('${currentChannel.messageCount}'),
            ),
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class ChannelMessages extends StatelessWidget {
  final Channel channel;
  ChannelMessages({@required this.channel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(channel.name),
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return ListTile(
            onTap: () {},
            dense: true,
            visualDensity: VisualDensity(horizontal: -4, vertical: -2),
            title: Row(
              children: [
                Text(channel.name),
                const SizedBox(width: 10.0),
                Text(
                  '05:00pm',
                  style: const TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
            leading: Container(
              height: 25.0,
              width: 25.0,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.all(Radius.elliptical(5, 5))),
              child: Center(
                child: Text(
                  message.text[0].toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            subtitle: Text('${message.text}'),
          );
        },
      ),
    );
  }
}
