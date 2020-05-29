import 'package:meta/meta.dart';

abstract class BoardSyncEvent {
  final String boardId;

  const BoardSyncEvent({@required this.boardId}) : assert(boardId != null);
}

class StartBoardSync extends BoardSyncEvent {}

class StopBoardSync extends BoardSyncEvent {}
