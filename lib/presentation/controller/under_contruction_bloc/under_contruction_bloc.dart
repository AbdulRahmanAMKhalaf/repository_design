import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'under_contruction_event.dart';
part 'under_contruction_state.dart';

class UnderContructionBloc extends Bloc<UnderContructionEvent, UnderContructionState> {
  UnderContructionBloc() : super(UnderContructionInitialState()) {
    on<ChangeSelectingTypeEvent>(_changeSelectingTypeEvent);
  }

  String ?value;
  List<String>selectingTypeList=[
    '0',
    '1',
    '2',
    '3',
  ];
  String selectType(String value){
    return selectingTypeList[value as int];
  }
  FutureOr<void> _changeSelectingTypeEvent(ChangeSelectingTypeEvent event, Emitter<UnderContructionState> emit) {
    emit(ChangeSelectingTypeLoadingState());
    selectType(value!);
    emit(ChangeSelectingTypeSuccessfulState());
  }
}
