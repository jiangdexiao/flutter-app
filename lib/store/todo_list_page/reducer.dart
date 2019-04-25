import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';
import 'todo_component/component.dart';

Reducer<PageState> buildReducer() {
  println('Reducer:buildReducer');
  return asReducer(
    <Object, Reducer<PageState>>{PageAction.initToDos: _initToDosReducer},
  );
}
//监听事件
PageState _initToDosReducer(PageState state, Action action) {
  println('Reducer: _initToDosReducer');
  final List<ToDoState> toDos = action.payload ?? <ToDoState>[];
  final PageState newState = state.clone();
  newState.toDos = toDos;
  return newState;
}
