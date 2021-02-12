import 'package:flutter/material.dart';
import '../models/Models.dart';
import 'Screens.dart';

List<Channel> channels = [
  Channel(
    id: 'afasdfasdfkwre3245',
    name: 'First one',
    private: false,
    messageCount: 453,
  ),
  Channel(
    id: 'asdfasdfsadfdsgfdg',
    name: 'Another here',
    private: false,
    messageCount: 45,
  ),
  Channel(
    id: 'werewrewrfsdfdsfds',
    name: 'private enter',
    private: false,
    messageCount: 56,
  ),
  Channel(
    id: 'cbvdgfdsfdsfdsfdsf',
    name: 'This is our staff',
    private: false,
    messageCount: 89,
  ),
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
                    builder: (BuildContext context) => ChannelChatScreen(
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
              subtitle: Text(
                '${currentChannel.messageCount} messages',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
