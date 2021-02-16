import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_models/ChannelsViewModel.dart';
import '../data_models/Models.dart';
import 'Screens.dart';

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
        body: StreamBuilder(
            stream: Provider.of<ChannelsViewModel>(context, listen: false)
                .fetchAllChannels(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return const Text('loading');
              }
              if (snapshot.hasError) {
                return const Text('error loading data');
              }
              List<DocumentSnapshot> tempList = snapshot.data.docs;
              List<Channel> _channels = List();
              _channels = tempList.map((DocumentSnapshot docSnapshot) {
                Channel _channel = Channel.fromJson(docSnapshot.data());
                _channel.id = docSnapshot.id;
                return _channel;
              }).toList();

              return ListView.builder(
                itemCount: _channels?.length,
                itemBuilder: (context, index) {
                  final currentChannel = _channels[index];
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
                            builder: (BuildContext context) =>
                                ChannelChatScreen(
                              channel: currentChannel,
                            ),
                          ),
                        );
                      },
                      title: Text(
                        currentChannel.name,
                        style: const TextStyle(
                          color: Colors.blueGrey,
                        ),
                      ),
                      subtitle: Text(
                        '${currentChannel.messageCount} messages',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  );
                },
              );
            }));
  }

  @override
  bool get wantKeepAlive => true;
}
