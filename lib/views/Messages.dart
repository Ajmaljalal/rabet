import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'package:raabita/widgets/CreationAwareWidget.dart';
// import '../view_models/MessagesViewModel.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages>
    with AutomaticKeepAliveClientMixin {
  @override
  // void initState() {
  //   super.initState();
  //   Provider.of<MessagesViewModel>(context, listen: false).listenToPosts();
  // }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    print('in messages build');
    return Scaffold(
      body: ListView.builder(
          itemCount: 21,
          itemBuilder: (context, int index) {
            // final _messages =
            // Provider.of<MessagesViewModel>(context, listen: false).messages;
            return CreationAwareWidget(
              itemCreated: () {
                if (index > 0 && index % 20 == 0) {
                  print(index);
                }
              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('number $index'),
                ),
              ),
            );
          }),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
