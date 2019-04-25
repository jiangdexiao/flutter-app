import 'package:fish_redux/fish_redux.dart';
import 'report_component/component.dart';
import 'todo_component/component.dart';
//创建页面状态类，包含标题和内容数据，状态类必须实现Cloneable接口
class PageState implements Cloneable<PageState> {
  List<ToDoState> toDos;

  @override
  PageState clone() {
    return PageState()..toDos = toDos;
  }
}
//页面状态初始化方法
PageState initState(Map<String, dynamic> args) {
  //just demo, do nothing here...
  println('state:initState');
  return PageState();
}

class ReportConnector extends ConnOp<PageState, ReportState> {
  @override
  ReportState get(PageState state) {
    final ReportState reportState = ReportState();
    reportState.total = state.toDos.length;
    reportState.done =
        state.toDos.where((ToDoState tds) => tds.isDone).toList().length;
    return reportState;
  }

  @override
  void set(PageState state, ReportState subState) {}
}
