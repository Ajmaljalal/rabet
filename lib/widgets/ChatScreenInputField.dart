import 'package:flutter/material.dart';

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
  handleTextInputFieldChange(value) {
    setState(() {
      // _text = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 80.0,
      ),
      child: Container(
        padding: const EdgeInsets.all(4.0),
        color: Colors.blue[50],
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                // Future.delayed(const Duration(milliseconds: 50)).then((_) {
                //   widget.textFieldController.clear();
                // });
                Future.delayed(const Duration(microseconds: 100), () {
                  if (widget.scrollController.hasClients) {
                    widget.scrollController.animateTo(
                      0.0,
                      duration: const Duration(milliseconds: 200),
                    );
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.send_rounded,
                    textDirection: TextDirection.ltr,
                    size: 30.0,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextFormField(
                controller: widget.textFieldController,
                maxLines: null,
                focusNode: widget.focusNode,
                onChanged: (value) {
                  handleTextInputFieldChange(value);
                },
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  // border: InputBorder.none,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: const BorderSide(color: Colors.blue)),
                  contentPadding:
                      new EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),

                  focusedBorder: const OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
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
            ),
          ],
        ),
      ),
    );
  }
}
