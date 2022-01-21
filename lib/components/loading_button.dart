import 'package:flutter/material.dart';

typedef BoolFuture = Future<bool> Function();
typedef VoidFutureFinished = void Function(bool);

///A button that shows [animation] until [future] completes.
class LoadingButton extends StatefulWidget {
  final Widget child, animation;
  final BoolFuture futureOnPressed;
  final VoidFutureFinished onLoadingFinished;
  const LoadingButton(
      {Key? key,
      required this.child,
      required this.animation,
      required this.futureOnPressed,
      required this.onLoadingFinished})
      : super(key: key);

  @override
  _LoadingButtonState createState() => _LoadingButtonState();
}

class _LoadingButtonState extends State<LoadingButton> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: isLoading
            ? null
            : () {
                setState(() {
                  isLoading = true;
                });
                widget.futureOnPressed().then((value) {
                  setState(() {
                    isLoading = false;
                    widget.onLoadingFinished(value);
                  });
                });
              },
        child: Padding(
          child: SizedBox(
              width: 70,
              child:
                  Center(child: isLoading ? widget.animation : widget.child)),
          padding: const EdgeInsets.only(top: 3, bottom: 3),
        ));
  }
}
