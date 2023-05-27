import 'package:flutter/material.dart';

enum SlideDirection { top, bottom, left, right }

class SlideInWidget extends StatefulWidget {
  final SlideDirection direction;
  final Duration duration;

  final Widget child;

  SlideInWidget(
      {required this.direction, required this.duration, required this.child});

  @override
  _SlideInWidgetState createState() => _SlideInWidgetState();
}

class _SlideInWidgetState extends State<SlideInWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _animation = _createAnimation();
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Animation<Offset> _createAnimation() {
    final begin = _getBeginOffset();
    const end = Offset.zero;

    return Tween<Offset>(begin: begin, end: end).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  Offset _getBeginOffset() {
    switch (widget.direction) {
      case SlideDirection.top:
        return const Offset(0, -1);
      case SlideDirection.bottom:
        return const Offset(0, 1);
      case SlideDirection.left:
        return const Offset(-1, 0);
      case SlideDirection.right:
        return const Offset(1, 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: widget.child,
    );
  }
}
