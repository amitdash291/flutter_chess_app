import 'package:chess_app/models/board_sync_data.dart';
import 'package:chess_app/models/board_sync_event.dart';
import 'package:chess_app/models/board_sync_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BoardSyncBloc extends Bloc<BoardSyncEvent, BoardSyncState> {
  @override
  // TODO: implement initialState
  get initialState => throw UnimplementedError();

  @override
  Stream<BoardSyncState> mapEventToState(event) async* {
    if (event is StopBoardSync) {
      yield BoardSyncStopped();
    }

    //TODO: Check stream state from repository and break and loop on no response
    while (true) {
      yield BoardSyncInProgress(boardSyncData: BoardSyncData());
    }
  }

}