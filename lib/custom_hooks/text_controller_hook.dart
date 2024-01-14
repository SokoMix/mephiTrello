import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

TextEditingController useTextController(String? text) {
  return use(
    _TextEditingControllerHook(text: text ?? ''),
  );
}

class _TextEditingControllerHook extends Hook<TextEditingController> {
  const _TextEditingControllerHook({
    required String this.text,
  });

  final String text;

  @override
  _TextEditingControllerHookState createState() =>
      _TextEditingControllerHookState();
}

class _TextEditingControllerHookState
    extends HookState<TextEditingController, _TextEditingControllerHook> {
  late final _textController = TextEditingController(
    text: hook.text,
  );

  @override
  TextEditingController build(BuildContext context) {
    return _textController;
  }

  @override
  void dispose() {
    _textController.dispose();
  }
}
