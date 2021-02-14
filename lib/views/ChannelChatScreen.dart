import 'package:flutter/material.dart';
import '../widgets/ChatScreenInputField.dart';
import '../views/Screens.dart';
import '../data_models/Models.dart';

List<Message> messages = [
  Message(
      id: 'etrt54654654654666',
      text:
          'Public Last one is a very long test so we an understand the design of this thing in full.'),
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
