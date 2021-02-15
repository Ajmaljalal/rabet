import 'package:flutter/foundation.dart';
import 'package:raabita/services/ChannelsFirebaseService.dart';
import '../data_models/Models.dart';

class MessagesViewModel extends ChangeNotifier {
  final ChannelsFirebaseService _messagesService = ChannelsFirebaseService();

  List<Message> _messages;
  List<Message> get messages => _messages;

  // void listenToPosts() {
  //   _messagesService.listenToPostsRealTime().listen((messagesData) {
  //     List<Message> updatedMessages = messagesData;
  //     if (updatedMessages != null && updatedMessages.length > 0) {
  //       _messages = updatedMessages;
  //       notifyListeners();
  //     }
  //   });
  // }

  // Future deletePost(int index) async {
  //   var dialogResponse = await _dialogService.showConfirmationDialog(
  //     title: 'Are you sure?',
  //     description: 'Do you really want to delete the post?',
  //     confirmationTitle: 'Yes',
  //     cancelTitle: 'No',
  //   );
  //
  //   if (dialogResponse.confirmed) {
  //     var postToDelete = _posts[index];
  //     setBusy(true);
  //     await _firestoreService.deletePost(postToDelete.documentId);
  //     // Delete the image after the post is deleted
  //     await _cloudStorageService.deleteImage(postToDelete.imageFileName);
  //     setBusy(false);
  //   }
  // }

  // Future navigateToCreateView() async {
  //   await _navigationService.navigateTo(CreatePostViewRoute);
  // }
  //
  // void editPost(int index) {
  //   _navigationService.navigateTo(CreatePostViewRoute,
  //       arguments: _posts[index]);
  // }

  // void requestMoreData() => _messagesService.requestMessages();
}
