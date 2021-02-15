import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:raabita/data_models/Models.dart';
import 'package:raabita/services/ChannelsFirebaseService.dart';

final FirebaseFirestore db = FirebaseFirestore.instance;

class ChannelsViewModel extends ChangeNotifier {
  final ChannelsFirebaseService _messagesService = ChannelsFirebaseService();

  List<Message> _messages;
  List<Message> get messages => _messages;

  Future<void> createChannel({Channel channel}) async {
    try {
      await db.collection('channels').add(channel.toJson());
    } catch (e) {
      print(e.toString());
    }
  }

  Stream<QuerySnapshot> fetchAllChannels() {
    try {
      final dataStream = db
          .collection('channels')
          .where("members", arrayContainsAny: ['ajmal12345JalalAbe'])
          .orderBy("date", descending: true)
          .snapshots();
      return dataStream;
    } catch (e) {
      print(e.toString());
      return e;
    }
  }

  void createChannelMessage({Message message}) {
    try {
      _messagesService.createChannelMessage(message: message);
    } catch (e) {
      print(e.toString());
    }
  }

  void listenToChannelMessages({@required String channelId}) {
    _messagesService
        .listenToMessagesRealTime(channelId: channelId)
        .listen((messagesData) {
      List<Message> updatedMessages = messagesData;
      if (updatedMessages != null && updatedMessages.length > 0) {
        _messages = updatedMessages;
        notifyListeners();
      }
    });
  }

  void requestMoreData({@required String channelId}) =>
      _messagesService.requestMessages(channelId: channelId);
}
