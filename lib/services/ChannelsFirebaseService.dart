import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:raabita/data_models/Models.dart';

class ChannelsFirebaseService {
  final CollectionReference _channelMessagesCollectionReference =
      FirebaseFirestore.instance.collection('channel-messages');

  final StreamController<List<Message>> _channelMessagesController =
      StreamController<List<Message>>.broadcast();

  List<List<Message>> _allPagedResults = List<List<Message>>();
  static const int messagesLimit = 21;
  DocumentSnapshot _lastDocument;
  bool _hasMoreMessages = true;

  // Future createUser(User user) async {
  //   try {
  //     await _usersCollectionReference.document(user.id).setData(user.toJson());
  //   } catch (e) {
  //     // TODO: Find or create a way to repeat error handling without so much repeated code
  //     if (e is PlatformException) {
  //       return e.message;
  //     }
  //
  //     return e.toString();
  //   }
  // }

  // Future getUser(String uid) async {
  //   try {
  //     var userData = await _usersCollectionReference.document(uid).get();
  //     return User.fromData(userData.data);
  //   } catch (e) {
  //     // TODO: Find or create a way to repeat error handling without so much repeated code
  //     if (e is PlatformException) {
  //       return e.message;
  //     }
  //
  //     return e.toString();
  //   }
  // }

  // Future addPost(Post post) async {
  //   try {
  //     await _postsCollectionReference.add(post.toMap());
  //   } catch (e) {
  //     // TODO: Find or create a way to repeat error handling without so much repeated code
  //     if (e is PlatformException) {
  //       return e.message;
  //     }
  //
  //     return e.toString();
  //   }
  // }

  // Future getPostsOnceOff() async {
  //   try {
  //     var postDocumentSnapshot =
  //     await _postsCollectionReference.limit(PostsLimit).getDocuments();
  //     if (postDocumentSnapshot.documents.isNotEmpty) {
  //       return postDocumentSnapshot.documents
  //           .map((snapshot) => Post.fromMap(snapshot.data, snapshot.documentID))
  //           .where((mappedItem) => mappedItem.title != null)
  //           .toList();
  //     }
  //   } catch (e) {
  //     // TODO: Find or create a way to repeat error handling without so much repeated code
  //     if (e is PlatformException) {
  //       return e.message;
  //     }
  //
  //     return e.toString();
  //   }
  // }

  Future<void> createChannelMessage({Message message}) async {
    _channelMessagesCollectionReference
        .doc(message.channelId)
        .collection('messages')
        .add(message.toJson());
  }

  Stream listenToMessagesRealTime({@required String channelId}) {
    // Register the handler for when the posts data changes
    _requestMessages(channelId: channelId);
    return _channelMessagesController.stream;
  }

  void _requestMessages({@required String channelId}) {
    // #2: split the query from the actual subscription
    var pageMessagesQuery = _channelMessagesCollectionReference
        .doc(channelId)
        .collection('messages')
        .orderBy('date', descending: true)
        // #3: Limit the amount of results`
        .limit(messagesLimit);

    // #5: If we have a document start the query after it
    if (_lastDocument != null) {
      pageMessagesQuery = pageMessagesQuery.startAfterDocument(_lastDocument);
    }

    if (!_hasMoreMessages) return;

    // #7: Get and store the page index that the results belong to
    var currentRequestIndex = _allPagedResults.length;

    pageMessagesQuery.snapshots().listen((messagesSnapshot) {
      if (messagesSnapshot.docs.isNotEmpty) {
        var messages = messagesSnapshot.docs
            .map((snapshot) => Message.fromJson(snapshot.data(), snapshot.id))
            .toList();

        // #8: Check if the page exists or not
        var pageExists = currentRequestIndex < _allPagedResults.length;

        // #9: If the page exists update the posts for that page
        if (pageExists) {
          _allPagedResults[currentRequestIndex] = messages;
        }
        // #10: If the page doesn't exist add the page data
        else {
          _allPagedResults.add(messages);
        }

        // #11: Concatenate the full list to be shown
        var allMessages = _allPagedResults.fold<List<Message>>(List<Message>(),
            (initialValue, pageItems) => initialValue..addAll(pageItems));

        // #12: Broadcast all posts
        _channelMessagesController.add(allMessages);

        // #13: Save the last document from the results only if it's the current last page
        if (currentRequestIndex == _allPagedResults.length - 1) {
          _lastDocument = messagesSnapshot.docs.last;
        }

        // #14: Determine if there's more posts to request
        _hasMoreMessages = allMessages.length == messagesLimit;
      }
    });
  }

  // Future deletePost(String documentId) async {
  //   await _postsCollectionReference.document(documentId).delete();
  // }
  //
  // Future updatePost(Post post) async {
  //   try {
  //     await _postsCollectionReference
  //         .document(post.documentId)
  //         .updateData(post.toMap());
  //   } catch (e) {
  //     // TODO: Find or create a way to repeat error handling without so much repeated code
  //     if (e is PlatformException) {
  //       return e.message;
  //     }
  //
  //     return e.toString();
  //   }
  // }

  void requestMessages({@required String channelId}) =>
      _requestMessages(channelId: channelId);
}
