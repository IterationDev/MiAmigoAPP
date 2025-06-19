import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'tutor_page_widget.dart' show TutorPageWidget;
import 'package:flutter/material.dart';

class TutorPageModel extends FlutterFlowModel<TutorPageWidget> {
  ///  Local state fields for this page.

  List<UsersAuthRecord> usersAsigned = [];
  void addToUsersAsigned(UsersAuthRecord item) => usersAsigned.add(item);
  void removeFromUsersAsigned(UsersAuthRecord item) =>
      usersAsigned.remove(item);
  void removeAtIndexFromUsersAsigned(int index) => usersAsigned.removeAt(index);
  void insertAtIndexInUsersAsigned(int index, UsersAuthRecord item) =>
      usersAsigned.insert(index, item);
  void updateUsersAsignedAtIndex(
          int index, Function(UsersAuthRecord) updateFn) =>
      usersAsigned[index] = updateFn(usersAsigned[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
