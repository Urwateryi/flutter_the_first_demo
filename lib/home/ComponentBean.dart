import 'package:flutter/material.dart';
import 'container/ContainerPage.dart';
import 'text/TextPage.dart';
import 'button/ButtonPage.dart';

class ComponentBean {
  String name;
  Widget targetWidget;
  String description;
  String illustration;

  ComponentBean(
      this.name, this.targetWidget, this.description, this.illustration);
}

List<ComponentBean> contentList = <ComponentBean>[
  new ComponentBean("Container", new ContainerPage(),
      "包含绘制widget、定位widget、尺寸widget的容器", "assets/images/illustration_1.jpg"),
  new ComponentBean(
      "Button", new ButtonPage(), "按钮呢", "assets/images/illustration_4.jpg"),
  new ComponentBean(
      "Text", new TextPage(), "文本控件", "assets/images/illustration_9.jpg"),
  new ComponentBean(
      "Scaffold", null, "脚手架", "assets/images/illustration_5.jpg"),
  new ComponentBean(
      "FlutterLogo", null, "不晓得是啥", "assets/images/illustration_6.jpg"),
  new ComponentBean(
      "Placeholder", null, "占位符？？？？", "assets/images/illustration_7.jpg"),
  new ComponentBean(
      "Appbar", null, "就是AppBar嘛", "assets/images/illustration_8.jpg"),
  new ComponentBean(
      "RichText", null, "文本域控件", "assets/images/illustration_10.jpg"),
  new ComponentBean("Image", null, "图片控件", "assets/images/illustration_11.jpg"),
  new ComponentBean(
      "Button", null, "按钮控件", "assets/images/illustration_12.jpg"),
  new ComponentBean("Input", null, "输入框", "assets/images/illustration_13.jpg"),
  new ComponentBean(
      "CheckBox", null, "单选框", "assets/images/illustration_14.jpg"),
  new ComponentBean(
      "RadioGroup", null, "多选框", "assets/images/illustration_15.jpg"),
  new ComponentBean(
      "Progress", null, "进度条", "assets/images/illustration_16.jpg"),
  new ComponentBean("Slider", null, "控制条", "assets/images/illustration_17.jpg"),
  new ComponentBean("单个Item的ListView", null, "每个item都是同一种样式",
      "assets/images/illustration_18.jpg"),
  new ComponentBean("多个Item的ListView", null, "一个列表有多个item的样式",
      "assets/images/illustration_19.jpg"),
  new ComponentBean("Stack", null, "层叠布局", "assets/images/illustration_20.jpg"),
  new ComponentBean("Card", null, "卡片布局", "assets/images/illustration_21.jpg"),
  new ComponentBean(
      "GridView", null, "网格布局", "assets/images/illustration_22.jpg"),
  new ComponentBean(
      "自定义控件", null, "自定义有状态或者无状态的控件", "assets/images/illustration_23.jpg"),
  new ComponentBean("缓存", null, "有没有sharedprenference或者sqlite等",
      "assets/images/illustration_24.jpg"),
  new ComponentBean(
      "网络请求", null, "网络请求封装", "assets/images/illustration_25.jpg"),
  new ComponentBean(
      "工具类", null, "工具类的封装与使用", "assets/images/illustration_26.jpg"),
  new ComponentBean(
      "全局变量", null, "全局变量的定义与使用", "assets/images/illustration_27.jpg"),
  new ComponentBean("DropdownButton", null, "DropdownButton",
      "assets/images/illustration_28.jpg"),
  new ComponentBean(
      "FlatButton", null, "FlatButton", "assets/images/illustration_29.jpg"),
  new ComponentBean("FloatingActionButton", null, "FloatingActionButton",
      "assets/images/illustration_30.jpg"),
  new ComponentBean(
      "IconButton", null, "IconButton", "assets/images/illustration_31.jpg"),
  new ComponentBean(
      "Switch", null, "Switch", "assets/images/illustration_32.jpg"),
  new ComponentBean(
      "TextField", null, "TextField", "assets/images/illustration_33.jpg"),
  new ComponentBean("动画", null, "动画", "assets/images/illustration_34.jpg"),
  new ComponentBean("字体", null, "字体", "assets/images/illustration_35.jpg"),
  new ComponentBean("盒约束", null, "盒约束", "assets/images/illustration_27.jpg"),
  new ComponentBean("国际化", null, "国际化", "assets/images/illustration_27.jpg"),
  new ComponentBean("质感设计", null, "质感设计", "assets/images/illustration_27.jpg"),
  new ComponentBean("纸墨设计", null, "纸墨设计", "assets/images/illustration_27.jpg"),
  new ComponentBean(
      "Swiper", null, "Swiper", "assets/images/illustration_27.jpg"),
  new ComponentBean(
      "template", null, "template", "assets/images/illustration_27.jpg"),
  new ComponentBean(
      "下拉刷新，上拉加载更多", null, "下拉刷新，上拉加载更多", "assets/images/illustration_27.jpg"),
  new ComponentBean("SliverAppBar", null, "SliverAppBar",
      "assets/images/illustration_27.jpg"),
];
