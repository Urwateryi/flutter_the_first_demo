import 'package:flutter/material.dart';
import 'container/ContainerPage.dart';
import 'text/TextPage.dart';
import 'button/ButtonPage.dart';

class ComponentBean {
  String name;
  Widget targetWidget;
  String description;
  String illustration;

  ComponentBean(this.name, this.targetWidget, this.description, this.illustration);
}

List<ComponentBean> contentList = <ComponentBean>[
  new ComponentBean(
      "Container",
      new ContainerPage("Container"),
      "包含绘制widget、定位widget、尺寸widget的容器",
      "assets/images/illustration_1.jpg"),
  new ComponentBean("Button", new ButtonPage(), "按钮呢",
      "assets/images/illustration_4.jpg"),
  new ComponentBean(
      "Scaffold", new TextPage("Scaffold"), "脚手架", "assets/images/illustration_5.jpg"),
  new ComponentBean("FlutterLogo", new TextPage("FlutterLogo"), "不晓得是啥",
      "assets/images/illustration_6.jpg"),
  new ComponentBean("Placeholder", new TextPage("Placeholder"), "占位符？？？？",
      "assets/images/illustration_7.jpg"),
  new ComponentBean(
      "Appbar", new TextPage("Appbar"), "就是AppBar嘛", "assets/images/illustration_8.jpg"),
  new ComponentBean(
      "Text", new TextPage("Text"), "文本控件", "assets/images/illustration_9.jpg"),
  new ComponentBean(
      "RichText", new TextPage("RichText"), "文本域控件", "assets/images/illustration_10.jpg"),
  new ComponentBean(
      "Image", new TextPage("Image"), "图片控件", "assets/images/illustration_11.jpg"),
  new ComponentBean(
      "Button",new TextPage("Button"), "按钮控件", "assets/images/illustration_12.jpg"),
  new ComponentBean(
      "Input", new TextPage("Input"), "输入框", "assets/images/illustration_13.jpg"),
  new ComponentBean(
      "CheckBox", new TextPage("CheckBox"), "单选框", "assets/images/illustration_14.jpg"),
  new ComponentBean(
      "RadioGroup", new TextPage("RadioGroup"), "多选框", "assets/images/illustration_15.jpg"),
  new ComponentBean(
      "Progress", new TextPage("Progress"), "进度条", "assets/images/illustration_16.jpg"),
  new ComponentBean(
      "Slider", new TextPage("Slider"), "控制条", "assets/images/illustration_17.jpg"),
  new ComponentBean("单个Item的ListView", new TextPage("单个Item的ListView"), "每个item都是同一种样式",
      "assets/images/illustration_18.jpg"),
  new ComponentBean("多个Item的ListView", new TextPage("多个Item的ListView"), "一个列表有多个item的样式",
      "assets/images/illustration_19.jpg"),
  new ComponentBean(
      "Stack", new TextPage("Stack"), "层叠布局", "assets/images/illustration_20.jpg"),
  new ComponentBean(
      "Card", new TextPage("Card"), "卡片布局", "assets/images/illustration_21.jpg"),
  new ComponentBean(
      "GridView",new TextPage("GridView"), "网格布局", "assets/images/illustration_22.jpg"),
  new ComponentBean("自定义控件",new TextPage("自定义控件"), "自定义有状态或者无状态的控件",
      "assets/images/illustration_23.jpg"),
  new ComponentBean("缓存", new TextPage("缓存"), "有没有sharedprenference或者sqlite等",
      "assets/images/illustration_24.jpg"),
  new ComponentBean(
      "网络请求", new TextPage("网络请求"), "网络请求封装", "assets/images/illustration_25.jpg"),
  new ComponentBean(
      "工具类", new TextPage("工具类"), "工具类的封装与使用", "assets/images/illustration_26.jpg"),
  new ComponentBean(
      "全局变量", new TextPage("全局变量"), "全局变量的定义与使用", "assets/images/illustration_27.jpg"),
  new ComponentBean(
      "DropdownButton",new TextPage("DropdownButton"), "DropdownButton", "assets/images/illustration_28.jpg"),
  new ComponentBean(
      "FlatButton", new TextPage("FlatButton"), "FlatButton", "assets/images/illustration_29.jpg"),
  new ComponentBean(
      "FloatingActionButton", new TextPage("FloatingActionButton"), "FloatingActionButton", "assets/images/illustration_30.jpg"),
  new ComponentBean(
      "IconButton", new TextPage("IconButton"), "IconButton", "assets/images/illustration_31.jpg"),
  new ComponentBean(
      "Switch", new TextPage("Switch"), "Switch", "assets/images/illustration_32.jpg"),
  new ComponentBean(
      "TextField", new TextPage("TextField"), "TextField", "assets/images/illustration_33.jpg"),
  new ComponentBean(
      "动画", new TextPage("动画"), "动画", "assets/images/illustration_34.jpg"),
  new ComponentBean(
      "字体", new TextPage("字体"), "字体", "assets/images/illustration_35.jpg"),
  new ComponentBean(
      "盒约束", new TextPage("盒约束"), "盒约束", "assets/images/illustration_27.jpg"),
  new ComponentBean(
      "国际化", new TextPage("国际化"), "国际化", "assets/images/illustration_27.jpg"),
  new ComponentBean(
      "质感设计", new TextPage("质感设计"), "质感设计", "assets/images/illustration_27.jpg"),
  new ComponentBean(
      "纸墨设计", new TextPage("纸墨设计"), "纸墨设计", "assets/images/illustration_27.jpg"),
  new ComponentBean(
      "Swiper", new TextPage("Swiper"), "Swiper", "assets/images/illustration_27.jpg"),
  new ComponentBean(
      "template", new TextPage("template"), "template", "assets/images/illustration_27.jpg"),
  new ComponentBean(
      "下拉刷新，上拉加载更多", new TextPage("下拉刷新，上拉加载更多"), "下拉刷新，上拉加载更多", "assets/images/illustration_27.jpg"),
  new ComponentBean(
      "SliverAppBar", new TextPage("SliverAppBar"), "SliverAppBar", "assets/images/illustration_27.jpg"),
];
