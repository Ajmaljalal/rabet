import 'package:flutter/material.dart';
import 'file:///C:/Users/Ajmal%20Jalal/Desktop/PersonalProjects/raabita/lib/widgets/ChatScreenInputField.dart';
import 'package:raabita/screens/Screens.dart';
import '../models/Models.dart';

List<Message> messages = [
  Message(
      id: 'afasdfasdfkwre324t',
      text:
          'Last one is a very long test so we an understand the design of this thing in full.'),
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
  Message(
      id: 'afasdfasdfkwre324t',
      text:
          'Last one is a very long test so we an understand the design of this thing in full.'),
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
  Message(
      id: 'afasdfasdfkwre324t',
      text:
          'Last one is a very long test so we an understand the design of this thing in full.'),
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
  Message(
      id: 'afasdfasdfkwre324t',
      text:
          'Last one is a very long test so we an understand the design of this thing in full.'),
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
  Message(
      id: 'afasdfasdfkwre324t',
      text:
          'Last one is a very long test so we an understand the design of this thing in full.'),
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
  Message(
      id: 'afasdfasdfkwre324t',
      text:
          'Last one is a very long test so we an understand the design of this thing in full.'),
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
  Message(
      id: 'afasdfasdfkwre324t',
      text:
          'Last one is a very long test so we an understand the design of this thing in full.'),
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
  Message(
      id: 'afasdfasdfkwre324t',
      text:
          'Last one is a very long test so we an understand the design of this thing in full.'),
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

class ChannelChatScreen extends StatefulWidget {
  final Channel channel;
  ChannelChatScreen({@required this.channel});

  @override
  _ChannelChatScreenState createState() => _ChannelChatScreenState();
}

class _ChannelChatScreenState extends State<ChannelChatScreen>
    with AutomaticKeepAliveClientMixin {
  String messageId;

  ScrollController _scrollController;
  TextEditingController _messageInputFieldController;
  FocusNode _messageInputFieldFocusNode = FocusNode();

  handleTextInputFieldChange(value) {
    setState(() {
      // _text = value;
    });
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _messageInputFieldController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
    _messageInputFieldFocusNode.dispose();
    _messageInputFieldController.dispose();
  }

  closeInputField() {
    _messageInputFieldFocusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(45.0),
        child: AppBar(
          title: Text(widget.channel.name),
          elevation: 0.0,
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
              tooltip: 'Invite people',
            )
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        child: Column(
          children: [
            buildMessagesList(),
            ChatScreenInputField(
              channelId: widget.channel.id,
              focusNode: _messageInputFieldFocusNode,
              scrollController: _scrollController,
              textFieldController: _messageInputFieldController,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMessagesList() {
    return Expanded(
      child: GestureDetector(
        onTap: () => closeInputField(),
        child: ListView.builder(
          controller: _scrollController,
          reverse: true,
          shrinkWrap: true,
          itemCount: messages.length,
          itemBuilder: (context, index) {
            final message = messages[index];
            return SingleMessage(
              message: message,
              channel: widget.channel,
            );
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
