import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class FadeTransitionDemo extends StatefulWidget {
  const FadeTransitionDemo({Key? key}) : super(key: key);

  @override
  State<FadeTransitionDemo> createState() => _FadeTransitionDemoState();
}

class _FadeTransitionDemoState extends State<FadeTransitionDemo> with TickerProviderStateMixin{

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FadeTransitionDemo"),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: FadeTransition(
            opacity: _animation,
            child: const Padding(padding: EdgeInsets.all(8), child: FlutterLogo()),
          ),
        ),
      ),
    );
  }
}
