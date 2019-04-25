import 'package:fish_redux/fish_redux.dart';
import 'todo_component/component.dart';

enum PageAction { initToDos, onAdd }

class PageActionCreator {
  static Action initToDosAction(List<ToDoState> toDos) {
    println('PageAction: initToDosAction');
    return Action(PageAction.initToDos, payload: toDos);
  }

  static Action onAddAction() {
    println('PageAction: onAddAction');
    return const Action(PageAction.onAdd);
  }
}
