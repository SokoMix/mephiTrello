import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AnimatedTextForm extends StatefulHookWidget {
  final TextEditingController _ctrl;
  final Function(TextEditingController) _callbackDeleteAt;
  final Function() _callbackDeleteAll;

  AnimatedTextForm(
    this._ctrl,
    this._callbackDeleteAt,
    this._callbackDeleteAll, {
    super.key,
  });

  @override
  State<StatefulWidget> createState() =>_AnimatedTextFormState();
}

class _AnimatedTextFormState extends State<AnimatedTextForm> with SingleTickerProviderStateMixin {
  bool _isDelete = false;

  @override
  Widget build(BuildContext context) {
    final _animationCtrl = useAnimationController(
      duration: Duration(milliseconds: 700),
      vsync: this,
    )..addListener(() => setState(() {}));

    Animation<Offset> _offsetAdd = Tween<Offset>(
        begin: Offset(1.0, 0.0),
        end: Offset.zero,
    ).animate(
        CurvedAnimation(
            parent: _animationCtrl,
            curve: Curves.bounceOut,
        ),
    );

    Animation<Offset> _offsetDelete = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(1.0, 0.0),
    ).animate(
      CurvedAnimation(
        parent: _animationCtrl,
        curve: Curves.ease,
      ),
    );
    _animationCtrl.forward();

    return SlideTransition(
      position: _isDelete ? _offsetDelete : _offsetAdd,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: widget._ctrl,
            ),
          ),
    IconButton(
                icon: Icon(Icons.delete),
                color: Colors.red,
                onPressed: (){
                    _animationCtrl.forward();
                    widget._callbackDeleteAt(widget._ctrl);
                  },
              ),
        ],
      ),
    );
  }

}
