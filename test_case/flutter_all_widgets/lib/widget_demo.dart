import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/animated/widget/animatedwidget_demo.dart';
import 'package:flutter_all_widgets/animatedalign/animatedalign_demo.dart';
import 'package:flutter_all_widgets/custom_multi_child_layout/custom_multi_child_layout_demo.dart';
import 'package:flutter_all_widgets/custom_paint/custom_paint_demo.dart';
import 'package:flutter_all_widgets/custom_scrollview/custom_scrollview_demo.dart';
import 'package:flutter_all_widgets/custom_single_child_layout/custom_single_child_layout_demo.dart';
import 'package:flutter_all_widgets/data_table/data_table_demo.dart';
import 'package:flutter_all_widgets/decorated_box/decorated_box_demo.dart';
import 'package:flutter_all_widgets/decorated_box_transition/decorated_box_transition_demo.dart';
import 'package:flutter_all_widgets/default_text_style/default_text_style_demo.dart';
import 'package:flutter_all_widgets/dismissible/dismissible_demo.dart';
import 'package:flutter_all_widgets/divider/divider_demo.dart';
import 'package:flutter_all_widgets/drag_target/drag_target_demo.dart';
import 'package:flutter_all_widgets/draggable/draggable_demo.dart';
import 'package:flutter_all_widgets/draggablescrollablesheet/draggablescrollablesheet_demo.dart';
import 'package:flutter_all_widgets/drawer/drawer_demo.dart';
import 'package:flutter_all_widgets/dropdownbutton/dropdownbutton_demo.dart';
import 'package:flutter_all_widgets/elevatedbutton/elevatedbutton_demo.dart';
import 'package:flutter_all_widgets/expanded/expanded_demo.dart';
import 'package:flutter_all_widgets/expansionpanel/expansionpanel_demo.dart';
import 'package:flutter_all_widgets/fadetransition/fadetransition_demo.dart';
import 'package:flutter_all_widgets/fittedbox/fittedbox_demo.dart';
import 'package:flutter_all_widgets/floatingactionbutton/floatingactionbutton_demo.dart';
import 'package:flutter_all_widgets/flow/flow_demo.dart';
import 'package:flutter_all_widgets/flutterlogo/flutterlogo_demo.dart';
import 'package:flutter_all_widgets/form/form_demo.dart';
import 'package:flutter_all_widgets/fractionallysizedbox/fractionallysizedbox_demo.dart';
import 'package:flutter_all_widgets/fractionaltranslation/fractionaltranslation_demo.dart';
import 'package:flutter_all_widgets/gridview/gridview_demo.dart';
import 'package:flutter_all_widgets/hero/hero_demo.dart';
import 'package:flutter_all_widgets/icon/icon_demo.dart';
import 'package:flutter_all_widgets/iconbutton/iconbutton_demo.dart';
import 'package:flutter_all_widgets/indexedstack/indexedstack_demo.dart';
import 'package:flutter_all_widgets/interactiveviewer/interactiveviewer_demo.dart';
import 'package:flutter_all_widgets/intrinsicheight/intrinsicheight_demo.dart';
import 'package:flutter_all_widgets/intrinsicwidth/intrinsicwidth_demo.dart';
import 'package:flutter_all_widgets/layoutbuilder/layoutbuilder_demo.dart';
import 'package:flutter_all_widgets/limitedbox/limitedbox_demo.dart';
import 'package:flutter_all_widgets/linearprogressindicator/linearprogressindicator_demo.dart';
import 'package:flutter_all_widgets/listtile/listtile_demo.dart';
import 'package:flutter_all_widgets/listview/listview_demo.dart';
import 'package:flutter_all_widgets/longpressdraggable/longpressdraggable_demo.dart';
import 'package:flutter_all_widgets/materialapp/materialapp_demo.dart';
import 'package:flutter_all_widgets/mediaquery/mediaquery_demo.dart';
import 'package:flutter_all_widgets/mergesemantics/mergesemantics_demo.dart';
import 'package:flutter_all_widgets/nestedscrollview/nestedscrollview_demo.dart';
import 'package:flutter_all_widgets/offstage/offstage_demo.dart';
import 'package:flutter_all_widgets/opacity/opacity_demo.dart';
import 'package:flutter_all_widgets/outlinebutton/outlinebutton_demo.dart';
import 'package:flutter_all_widgets/overflowbox/overflowbox_demo.dart';
import 'package:flutter_all_widgets/padding/padding_demo.dart';
import 'package:flutter_all_widgets/page_view/page_view_demo.dart';
import 'package:flutter_all_widgets/rich_text/rich_text_demo.dart';
import 'package:flutter_all_widgets/semantics/semantics_demo.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'absorbpointer/absorbpointer_demo.dart';
import 'alertdialog/alertdialog_demo.dart';
import 'animated/builder/animatedbuilder_demo.dart';
import 'animated/animatedcontainer_demo.dart';
import 'animated/defaulttextstyle/animateddefaulttextstyle_demo.dart';
import 'animated/liststate/animatedliststate_demo.dart';
import 'animated/modalbarrier/animatedmodalbarrier_demo.dart';
import 'animated/opacity/animatedopacity_demo.dart';
import 'animated/physicalmodel/animatedphysicalmodel_demo.dart';
import 'animated/crossfade/animatedcrossfade_demo.dart';
import 'animated/positioned/animatedpositioned_demo.dart';
import 'animated/size/animatedsize_demo.dart';
import 'checkbox/checkbox_demo.dart';
import 'circularProgressIndicator/circular_progressIndicator_demo.dart';
import 'cupertino_tabbar/cupertino_tabbar_demo.dart';
import 'cupertinoalertdialog/cupertino_alert_dialog_demo.dart';
import 'ignorepointer/ignorepointer_demo.dart';
import 'listbody/listbody_demo.dart';
import 'widget_item.dart';

class WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "All Widget Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  Widget addWidget(BuildContext context, String title, Widget widget) {
    return Container(
      padding: EdgeInsets.all(10.0),
      alignment: Alignment.center,
      child: GestureDetector(
          child: Text(title),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
          }),
    );
  }

  List<WidgetItem> widgets = [
    WidgetItem("OutlineButton", OutlineButtonDemo()),
    WidgetItem("Checkbox", CheckboxDemo()),
    WidgetItem("CupertinoTabBar", CupertinoTabBarDemo()),
    WidgetItem("CupertinoAlertDialog", CupertinoAlertDialogDemo()),
    WidgetItem("CircularProgressIndicator", CircularProgressIndicatorDemo()),
    WidgetItem("RichText", RichTextDemo()),
    WidgetItem("AbsorbPointer", AbsorbPointerDemo()),
    WidgetItem("AlertDialog", AlertDialogDemo()),
    WidgetItem("AnimatedAlign", AnimatedAlignDemo()),
    WidgetItem("AnimatedBuilder", AnimatedBuilderDemo()),
    WidgetItem("AnimatedContainer", AnimatedContainerDemo()),
    WidgetItem("AnimatedDefaultTextStyle", AnimatedDefaultTextStyleDemo()),
    WidgetItem("AnimatedCrossFade", AnimatedCrossFadeDemo()),
    WidgetItem("AnimatedListState", AnimatedListStateDemo()),
    WidgetItem("AnimatedModalBarrier", AnimatedModalBarrierDemo()),
    WidgetItem("AnimatedOpacity", AnimatedOpacityDemo()),
    WidgetItem("AnimatedPhysicalModel", AnimatedPhysicalModelDemo()),
    WidgetItem("AnimatedPositioned", AnimatedPositionedDemo()),
    WidgetItem("AnimatedSize", AnimatedSizeDemo()),
    WidgetItem("AnimatedWidget", AnimatedWidgetDemo()),
    WidgetItem("CustomMultiChildLayout", CustomMultiChildLayoutDemo()),
    WidgetItem("CustomPaint", CustomPaintDemo()),
    WidgetItem("CustomScrollView", CustomScrollViewDemo()),
    WidgetItem("CustomSingleChildLayout", CustomSingleChildLayoutDemo()),
    WidgetItem("DataTable", DataTableDemo()),
    WidgetItem("DecoratedBox", DecoratedBoxDemo()),
    WidgetItem("PageView", PageViewDemo()),
    WidgetItem("DecoratedBoxTransition", DecoratedBoxTransitionDemo()),
    WidgetItem("DefaultTextStyle", DefaultTextStyleDemo()),
    WidgetItem("Dismissible", DismissibleDemo()),
    WidgetItem("Divider", DividerDemo()),
    WidgetItem("DragTarget", DragTargetDemo()),
    WidgetItem("Draggable", DraggableDemo()),
    WidgetItem("DraggableScrollableSheet", DraggableScrollableSheetDemo()),
    WidgetItem("Drawer", DrawerDemo()),
    WidgetItem("DropdownButton", DropdownButtonDemo()),
    WidgetItem("ElevatedButton", ElevatedButtonDemo()),
    WidgetItem("Semantics", SemanticsDemo()),
    WidgetItem("Expanded", ExpandedDemo()),
    WidgetItem("ExpansionPanel", ExpansionPanelDemo()),
    WidgetItem("FadeTransition", FadeTransitionDemo()),
    WidgetItem("FittedBox", FittedBoxDemo()),
    WidgetItem("FloatingActionButton", FloatingActionButtonDemo()),
    WidgetItem("Flow", FlowDemo()),
    WidgetItem("FlutterLogo", FlutterLogoDemo()),
    WidgetItem("Form", FormDemo()),
    WidgetItem("FractionalTranslation", FractionalTranslationDemo()),
    WidgetItem("FractionallySizedBox", FractionallySizedBoxDemo()),
    WidgetItem("GridViewDemo", GridViewDemo()),
    WidgetItem("Hero", HeroDemo()),
    WidgetItem("Icon", IconDemo()),
    WidgetItem("IconButton", IconButtonDemo()),
    WidgetItem("IgnorePointer", IgnorePointerDemo()),
    WidgetItem("IndexedStack", IndexedStackDemo()),
    WidgetItem("InteractiveViewer", InteractiveViewerDemo()),
    WidgetItem("IntrinsicHeight", IntrinsicHeightDemo()),
    WidgetItem("IntrinsicWidth", IntrinsicWidthDemo()),
    WidgetItem("LayoutBuilder", LayoutBuilderDemo()),
    WidgetItem("LimitedBox", LimitedBoxDemo()),
    WidgetItem("LinearProgressIndicator", LinearProgressIndicatorDemo()),
    WidgetItem("ListBody", ListBodyDemo()),
    WidgetItem("ListTile", ListTileDemo()),
    WidgetItem("ListView", ListViewDemo()),
    WidgetItem("LongPressDraggable", LongPressDraggableDemo()),
    WidgetItem("MaterialApp", MaterialAppDemo()),
    WidgetItem("MediaQuery", MediaQueryDemo()),
    WidgetItem("MergeSemantics", MergeSemanticsDemo()),
    WidgetItem("NestedScrollView", NestedScrollViewDemo()),
    WidgetItem("Offstage", OffstageDemo()),
    WidgetItem("Opacity", OpacityDemo()),
    WidgetItem("OverflowBox", OverflowBoxDemo()),
    WidgetItem("Padding", PaddingDemo()),
    WidgetItem("PageView", PageViewDemo()),
  ];

  Widget _widgetCard(WidgetItem item, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>
        item.className
        )
        );
      },
      child: Container(
        height: ((index % 5 + 1) * 50).toDouble(),
        color: Colors.blueGrey,
        alignment: Alignment.center,
        child: Text(
          "$index:${item.title}",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  late BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
        appBar: AppBar(
          title: Text("All Widget Demo"),
        ),
        body: MasonryGridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          itemCount: widgets.length,
//          physics:const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            if (index < widgets.length) {
              return _widgetCard(widgets[index], index);
            }
            return Container();
          },
        ));
  }
}
