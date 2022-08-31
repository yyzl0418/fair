import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class FlowDemo extends StatelessWidget {
  const FlowDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlowDemo"),
      ),
      body: Flow(
        ///设置delegate
        delegate: TestFlowDelegate(),
        ///循环添加9个子控件
        children: List.generate(9, (index) {
          return _getFlowSubContainer();
        }),
      ),
    );
  }

  //子控件Widget
  Widget _getFlowSubContainer() {
    return Container(
      width: 80,
      height: 80,
      color: Colors.red,
    );
  }
}

class TestFlowDelegate extends FlowDelegate {
  //子widget的宽度
  var childWidth = 80.0;
  //子widget的上下左右间距
  var padding = 5.0;
  @override
  void paintChildren(FlowPaintingContext context) {
    //子控件的X座标和Y座标
    var frameX = 5.0;
    var frameY = 5.0;
    print(context.childCount);
    for (int i = 0 ; i < context.childCount; i++) {
      //当前行可以放得下控件
      if (frameX + childWidth + padding <= context.size.width) {
        //绘制控件
        context.paintChild(i, transform: Matrix4.translationValues(frameX, frameY, 0));
        //修改x坐标
        frameX = frameX + childWidth + padding;
      }else{
        //换行显示
        frameX = 5.0;
        //修改Y座标
        frameY = frameY + childWidth + padding;
        //绘制
        context.paintChild(i, transform: Matrix4.translationValues(frameX, frameY, 0));
        //修改下一次X座标值
        frameX = frameX + childWidth + padding;
      }
    }
  }

  @override
  Size getSize(BoxConstraints constraints) {
    //确定父Widget的宽度和高度。九宫格一行三个控件，每个控件间隔5。宽度为 80 * 3 + 5 * 4
    return Size(childWidth * 3 + padding * 4, double.infinity);
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
