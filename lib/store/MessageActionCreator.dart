import 'package:fish_redux/fish_redux.dart';
enum MessageAction {
    onShare,
    shared,
}

class MessageActionCreator {
    static Action onShare(Map<String, Object> payload) {
        return Action(MessageAction.onShare, payload: payload);
    }

    static Action shared() {
        return const Action(MessageAction.shared);
    }
}