import 'dart:async';

import 'package:demo2/Bloc/remote_event.dart';
import 'package:demo2/Bloc/remote_state.dart';

class RemoteBloc{
  var state =RemoteState(70); // giả sử ban đầu có âm lượng là 70

// 1 cái quản lý event, đảm nhận nhiệm vụ nhận event từ UI
  final eventController = StreamController<RemoteEvent>();

  
 // 1 cái quản lý state, đảm nhận nhiệm vụ truyền state đến UI
  final stateController = StreamController<RemoteState>();

  RemoteBloc(){
    // lắng nghe khi eventController push event mới
    eventController.stream.listen((RemoteEvent event) {
      if(event is IncrementEvent){
        state = RemoteState(state.volume + event.increment);
      } else if ( event is DecrementEvent){
        state = RemoteState( state.volume - event.decrement);
      }else{
        state = RemoteState(0);
      }

      stateController.sink.add(state);
    },);
  }
  void dispose(){
    stateController.close();
    eventController.close();
  }
}