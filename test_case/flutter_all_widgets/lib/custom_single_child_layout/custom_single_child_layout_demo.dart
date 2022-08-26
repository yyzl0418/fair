import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class CustomSingleChildLayoutDemo extends StatelessWidget {
  const CustomSingleChildLayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomSingleChildLayoutDemo"),
      ),
      body: Container(
        width: 300,
        height: 200,
        color: Colors.grey.withAlpha(11),
        child: CustomSingleChildLayout(
          delegate: _TolySingleChildLayoutDelegate(),
          child: Container(
            color: Colors.orange,
          ),
        ),
      ),
    );
  }
}

class _TolySingleChildLayoutDelegate extends SingleChildLayoutDelegate {
  @override
  bool shouldRelayout(SingleChildLayoutDelegate oldDelegate) {
    return true;
  }

  @override
  Size getSize(BoxConstraints constraints) {
    print('----getSize:----constraints:$constraints----');
    return super.getSize(constraints);
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    print('----size:$size----childSize:$childSize----');
    return super.getPositionForChild(size, childSize);
  }

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    print('----getConstraintsForChild:----constraints:$constraints----');
    return super.getConstraintsForChild(constraints);
  }
}