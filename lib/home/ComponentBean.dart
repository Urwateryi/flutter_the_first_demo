import 'package:flutter/material.dart';
import 'container/ContainerPage.dart';
import 'text/TextPage.dart';
import 'button/ButtonPage.dart';
import 'image/ImagePage.dart';
import 'card/CardPage.dart';
import 'stack/StackPage.dart';
import 'scaffold/ScaffoldPage.dart';
import 'appbar/AppBarPage.dart';
import 'Input/InputPage.dart';
import 'form/FormPage.dart';
import 'decoration/DecorationPage.dart';
import 'flutterlogo/FlutterLogoPage.dart';
import 'placeholder/PlaceHolderPage.dart';
import 'package:the_first_one/home/gridview/GridViewList.dart';
import 'buttomsheet/BottomSheetPage.dart';

class ComponentBean {
  String name;
  Widget targetWidget;
  String description;
  String illustration;

  ComponentBean(
      this.name, this.targetWidget, this.description, this.illustration);
}

List<ComponentBean> contentList = <ComponentBean>[
  ComponentBean("Container", ContainerPage(), "包含绘制widget、定位widget、尺寸widget的容器",
      "assets/images/illustration_1.jpg"),
  ComponentBean("Button", ButtonPage(), "按钮，其中写onPress和不写，样式会有差异",
      "assets/images/illustration_2.jpg"),
  ComponentBean("Text", TextPage(), "文本控件", "assets/images/illustration_3.jpg"),
  ComponentBean(
      "Image", ImagePage(), "图片控件", "assets/images/illustration_4.jpg"),
  ComponentBean("Card", CardPage(), "卡片布局，自带阴影和一定的圆角",
      "assets/images/illustration_5.jpg"),
  ComponentBean("Stack", StackPage(), "层叠布局，相当于Android中的FrameLayout",
      "assets/images/illustration_6.jpg"),
  ComponentBean(
      "Scaffold", ScaffoldPage(), "脚手架", "assets/images/illustration_7.jpg"),
  ComponentBean(
      "Appbar", AppBarPage(), "就是AppBar嘛", "assets/images/illustration_8.jpg"),
  ComponentBean("GridView", new GridViewList(), "网格布局",
      "assets/images/illustration_8.jpg"),
  ComponentBean("ButtomSheet", new BottomSheetPage(), "BottomSheet是一个从屏幕底部滑起的列表（以显示更多的内容）。你可以调用showBottomSheet()或showModalBottomSheet弹出",
      "assets/images/illustration_18.jpg"),
  ComponentBean("Flow", null, "Flow", "assets/images/illustration_10.jpg"),
  ComponentBean("Table", null, "Table", "assets/images/illustration_11.jpg"),
  ComponentBean("Wrap", null, "Wrap", "assets/images/illustration_12.jpg"),
  ComponentBean(
      "ListBody", null, "ListBodyBar", "assets/images/illustration_13.jpg"),
  ComponentBean(
      "ListView", null, "ListView", "assets/images/illustration_14.jpg"),
  ComponentBean("CustomMultiChildLayout", null, "CustomMultiChildLayout",
      "assets/images/illustration_15.jpg"),
  ComponentBean(
      "Input", new InputPage(), "输入框", "assets/images/illustration_16.jpg"),
  ComponentBean(
      "Form", new FormPage(), "表单", "assets/images/illustration_17.jpg"),
  ComponentBean("Decoration", new DecorationPage(),
      "装饰器，对各个控件进行装饰，比如给文字添加下划线，给图片切圆角等等", "assets/images/illustration_18.jpg"),
  ComponentBean("FlutterLogo", new FlutterLogoPage(),
      "Flutter的Logo，可以设置大小，颜色，Logo和文字的排列", "assets/images/illustration_19.jpg"),
  ComponentBean("Placeholder", new PlaceHolderPage(),
      "占位符，一个用来占位的Widget，提示开发人员，这里需要暂时保留", "assets/images/illustration_20.jpg"),
  ComponentBean("CheckBox", null, "单选框", "assets/images/illustration_21.jpg"),
  ComponentBean("RadioGroup", null, "多选框", "assets/images/illustration_22.jpg"),
  ComponentBean("Progress", null, "进度条", "assets/images/illustration_23.jpg"),
  ComponentBean("Slider", null, "控制条", "assets/images/illustration_24.jpg"),
  ComponentBean("单个Item的ListView", null, "每个item都是同一种样式",
      "assets/images/illustration_25.jpg"),
  ComponentBean("多个Item的ListView", null, "一个列表有多个item的样式",
      "assets/images/illustration_25.jpg"),
  ComponentBean("FlexibleSpaceBar", null, "FlexibleSpaceBar",
      "assets/images/illustration_26.jpg"),
  ComponentBean("Cupertino风格控件", null, "Cupertino风格控件",
      "assets/images/illustration_27.jpg"),
  ComponentBean("手势GestureDetector", null, "Dismissed等",
      "assets/images/illustration_28.jpg"),
  ComponentBean(
      "behavior", null, "behavior", "assets/images/illustration_29.jpg"),
  ComponentBean(
      "Expanded", null, "Expanded", "assets/images/illustration_30.jpg"),
  ComponentBean("集合", null, "集合", "assets/images/illustration_31.jpg"),
  ComponentBean("const和new的区别", null, "const和new的区别",
      "assets/images/illustration_32.jpg"),
  ComponentBean(
      "自定义控件", null, "自定义有状态或者无状态的控件", "assets/images/illustration_33.jpg"),
  ComponentBean("缓存", null, "有没有sharedprenference或者sqlite等",
      "assets/images/illustration_34.jpg"),
  ComponentBean("网络请求", null, "网络请求封装", "assets/images/illustration_35.jpg"),
  ComponentBean("工具类", null, "工具类的封装与使用", "assets/images/illustration_26.jpg"),
  ComponentBean(
      "全局变量", null, "全局变量的定义与使用", "assets/images/illustration_27.jpg"),
  ComponentBean("DropdownButton", null, "DropdownButton",
      "assets/images/illustration_28.jpg"),
  ComponentBean(
      "FlatButton", null, "FlatButton", "assets/images/illustration_29.jpg"),
  ComponentBean("FloatingActionButton", null, "FloatingActionButton",
      "assets/images/illustration_30.jpg"),
  ComponentBean(
      "IconButton", null, "IconButton", "assets/images/illustration_31.jpg"),
  ComponentBean("Switch", null, "Switch", "assets/images/illustration_32.jpg"),
  ComponentBean(
      "TextField", null, "TextField", "assets/images/illustration_33.jpg"),
  ComponentBean("动画", null, "动画", "assets/images/illustration_34.jpg"),
  ComponentBean(
      "SizedBox", null, "SizedBox", "assets/images/illustration_34.jpg"),
  ComponentBean(
      "ListTile", null, "ListTile", "assets/images/illustration_34.jpg"),
  ComponentBean("字体", null, "字体", "assets/images/illustration_35.jpg"),
  ComponentBean("盒约束", null, "盒约束", "assets/images/illustration_27.jpg"),
  ComponentBean("国际化", null, "国际化", "assets/images/illustration_27.jpg"),
  ComponentBean("质感设计", null, "质感设计", "assets/images/illustration_27.jpg"),
  ComponentBean("纸墨设计", null, "纸墨设计", "assets/images/illustration_27.jpg"),
  ComponentBean("Flutter templates", null, "Flutter templates",
      "assets/images/illustration_27.jpg"),
  ComponentBean("Swiper", null, "Swiper", "assets/images/illustration_27.jpg"),
  ComponentBean(
      "template", null, "template", "assets/images/illustration_27.jpg"),
  ComponentBean(
      "下拉刷新，上拉加载更多", null, "下拉刷新，上拉加载更多", "assets/images/illustration_27.jpg"),
  ComponentBean("SliverAppBar", null, "SliverAppBar",
      "assets/images/illustration_27.jpg"),
];
