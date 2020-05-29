import 'package:meta/meta.dart';

import 'board_sync_data.dart';

abstract class BoardSyncState {
  const BoardSyncState();
}

class BoardSyncInProgress extends BoardSyncState {
  final BoardSyncData boardSyncData;

  const BoardSyncInProgress({@required this.boardSyncData}) : assert(boardSyncData != null);
}

class BoardSyncStopped extends BoardSyncState {}

class BoardSyncError extends BoardSyncState {}
