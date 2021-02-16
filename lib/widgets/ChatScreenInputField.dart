import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:raabita/data_models/Models.dart';
import 'package:raabita/view_models/ChannelsViewModel.dart';

class ChatScreenInputField extends StatefulWidget {
  final String channelId;
  final FocusNode focusNode;
  final ScrollController scrollController;
  final TextEditingController textFieldController;

  ChatScreenInputField({
    this.channelId,
    this.focusNode,
    this.scrollController,
    this.textFieldController,
  });

  @override
  _ChatScreenInputFieldState createState() => _ChatScreenInputFieldState();
}

class _ChatScreenInputFieldState extends State<ChatScreenInputField> {
  onSubmit(context) {
    final textFieldController = widget.textFieldController;
    if (textFieldController.text.isNotEmpty) {
      final Message _message = Message(
        channelId: widget.channelId,
        text: textFieldController.text.toString().trim(),
        date: DateTime.now().toString(),
      );
      Provider.of<ChannelsViewModel>(context, listen: false)
          .createChannelMessage(message: _message);
      textFieldController.clear();
    }
  }

  void setScrollPosition() {
    // Future.delayed(const Duration(milliseconds: 50)).then((_) {
    //   widget.textFieldController.clear();
    // });
    Future.delayed(
      const Duration(microseconds: 100),
      () {
        if (widget.scrollController.hasClients) {
          widget.scrollController.animateTo(
            0.0,
            curve: Curves.linear,
            duration: const Duration(milliseconds: 200),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: widget.focusNode.hasFocus == true ? 80.0 : 40.0,
      ),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0,
          ),
          child: Container(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () => setScrollPosition(),
                  child: buildSendButton(context),
                ),
                buildInputField(),
                SizedBox(width: 5.0),
                buildAttachmentsButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSendButton(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        onTap: () {
          onSubmit(context);
        },
        child: const Icon(
          Icons.send_rounded,
          textDirection: TextDirection.ltr,
          size: 30.0,
          color: Colors.blue,
        ),
      ),
    );
  }

  Expanded buildInputField() {
    return Expanded(
      flex: 2,
      child: TextFormField(
        controller: widget.textFieldController,
        maxLines: null,
        focusNode: widget.focusNode,
        decoration: InputDecoration(
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: const BorderSide(color: Colors.blue)),
          contentPadding:
              new EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
          focusedBorder: const OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              borderSide: const BorderSide(color: Colors.blue)),
          filled: true,
          hintText: 'Enter message here',
          hintStyle: const TextStyle(fontSize: 14.0, height: 0.95),
        ),
        style: const TextStyle(
          color: Colors.black,
          height: 0.95,
        ),
      ),
    );
  }

  Widget buildAttachmentsButton() {
    return InkWell(
      onTap: () {},
      child: Icon(Icons.add),
    );
  }
}
