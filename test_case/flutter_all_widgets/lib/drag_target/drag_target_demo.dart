import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class DragTargetDemo extends StatelessWidget {
  const DragTargetDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DragTargetDemo"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 10,
              left: 10,
              child: Draggable(
                data: "aa",
                child: Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                  child: Text(
                    "aa",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
                feedback: Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                  child: Text(
                    "aa",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Draggable(
                data: "bb",
                child: Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                  child: Text(
                    "bb",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
                feedback: Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                  child: Text(
                    "bb",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              child: DragTarget(
                builder: (BuildContext context, List<String?> candidateData,
                    List<dynamic> rejectedData) {
                  print('DragTarget builder');
                  Color c;
                  String s;
                  if (candidateData.isNotEmpty && candidateData.first == 'aa') {
                    c = Colors.amber;
                    s = '接收到aa';
                  } else if (rejectedData.isNotEmpty) {
                    c = Colors.grey;
                    s = '未接收到aa，接收为${rejectedData.first}';
                  } else {
                    s = '只接收aa';
                    c = Colors.cyan;
                  }

                  return Container(
                    color: c,
                    width: 100,
                    height: 100,
                    child: Text(
                      s,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
                onWillAccept: (s) {
                  print('onWillAccept $s');
                  if (s == 'aa') {
                    return true;
                  } else {
                    return false;
                  }
                },
                onAccept: (s) {
                  print('onAccept $s');
                },
                onAcceptWithDetails: (DragTargetDetails<String> details) {
                  print('onAcceptWithDetails ${details.data}');
                  print('onAcceptWithDetails ${details.offset}');
                },
                onLeave: (s) {
                  print('onLeave $s');
                },
                onMove: (DragTargetDetails<dynamic> details) {
                  print('onMove ${details.data}');
                  print('onMove ${details.offset}');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
