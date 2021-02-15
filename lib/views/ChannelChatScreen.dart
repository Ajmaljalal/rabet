import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:raabita/view_models/ChannelsViewModel.dart';
import 'package:raabita/widgets/CreationAwareWidget.dart';
import '../widgets/ChatScreenInputField.dart';
import '../views/Screens.dart';
import '../data_models/Models.dart';

class ChannelChatScreen extends StatefulWidget {
  final Channel channel;
  ChannelChatScreen({@required this.channel});

  @override
  _ChannelChatScreenState createState() => _ChannelChatScreenState();
}

class _ChannelChatScreenState extends State<ChannelChatScreen>
    with AutomaticKeepAliveClientMixin {
  ScrollController _scrollController;
  TextEditingController _messageInputFieldController;
  FocusNode _messageInputFieldFocusNode = FocusNode();

  @override
  void initState() {
    Provider.of<ChannelsViewModel>(context, listen: false)
        .listenToChannelMessages(channelId: widget.channel.id);
    _scrollController = ScrollController();
    _messageInputFieldController = TextEditingController();
    super.initState();
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
            buildMessagesList(context),
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

  Widget buildMessagesList(context) {
    final List<Message> _messages =
        Provider.of<ChannelsViewModel>(context).messages;
    return Expanded(
      child: GestureDetector(
        onTap: () => closeInputField(),
        child: ListView.builder(
          controller: _scrollController,
          reverse: true,
          shrinkWrap: true,
          itemCount: _messages?.length != null ? _messages.length : 1,
          itemBuilder: (context, index) {
            return CreationAwareWidget(
              itemCreated: () {
                if (index > 1 && index % 20 == 0) {
                  Provider.of<ChannelsViewModel>(context)
                      .requestMoreData(channelId: widget.channel.id);
                }
              },
              child: _messages?.length != null
                  ? SingleMessage(
                      message: _messages[index],
                      channel: widget.channel,
                    )
                  : Center(
                      child: SizedBox(
                        width: 25.0,
                        height: 25.0,
                        child: CircularProgressIndicator(),
                      ),
                    ),
            );
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
