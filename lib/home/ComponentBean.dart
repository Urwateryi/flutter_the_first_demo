class ComponentBean {
  String name;
  String pageName;
  String description;
  String illustration;

  ComponentBean(this.name, this.pageName, this.description, this.illustration);
}

List<ComponentBean> contentList = <ComponentBean>[
  new ComponentBean(
      "Container",
      "ContainerPage",
      "包含绘制widget、定位widget、尺寸widget的容器",
      "assets/images/illustration_1.jpg"),
  new ComponentBean(
      "Row", "RowPage", "横向排列内部组件", "assets/images/illustration_2.jpg"),
  new ComponentBean(
      "Column", "ColumnPage", "纵向排列内部组件", "assets/images/illustration_3.jpg"),
  new ComponentBean("RaisedButton", "RaisedButtonPage", "不晓得是啥",
      "assets/images/illustration_4.jpg"),
  new ComponentBean(
      "Scaffold", "ScaffoldPage", "脚手架", "assets/images/illustration_5.jpg"),
  new ComponentBean("FlutterLogo", "FlutterLogoPage", "不晓得是啥",
      "assets/images/illustration_6.jpg"),
  new ComponentBean("Placeholder", "PlaceholderPage", "占位符？？？？",
      "assets/images/illustration_7.jpg"),
  new ComponentBean(
      "Appbar", "AppbarPage", "就是AppBar嘛", "assets/images/illustration_8.jpg"),
  new ComponentBean(
      "Text", "TextPage", "文本控件", "assets/images/illustration_9.jpg"),
  new ComponentBean(
      "RichText", "TextPage", "文本域控件", "assets/images/illustration_10.jpg"),
  new ComponentBean(
      "Image", "TextPage", "图片控件", "assets/images/illustration_11.jpg"),
  new ComponentBean(
      "Button", "TextPage", "按钮控件", "assets/images/illustration_12.jpg"),
  new ComponentBean(
      "Input", "TextPage", "输入框", "assets/images/illustration_13.jpg"),
  new ComponentBean(
      "CheckBox", "TextPage", "单选框", "assets/images/illustration_14.jpg"),
  new ComponentBean(
      "RadioGroup", "TextPage", "多选框", "assets/images/illustration_15.jpg"),
  new ComponentBean(
      "Progress", "TextPage", "进度条", "assets/images/illustration_16.jpg"),
  new ComponentBean(
      "Slide", "TextPage", "控制条", "assets/images/illustration_17.jpg"),
  new ComponentBean("单个Item的ListView", "TextPage", "每个item都是同一种样式",
      "assets/images/illustration_18.jpg"),
  new ComponentBean("多个Item的ListView", "TextPage", "一个列表有多个item的样式",
      "assets/images/illustration_19.jpg"),
  new ComponentBean(
      "Stack", "TextPage", "层叠布局", "assets/images/illustration_20.jpg"),
  new ComponentBean(
      "Card", "TextPage", "卡片布局", "assets/images/illustration_21.jpg"),
  new ComponentBean(
      "GridView", "TextPage", "网格布局", "assets/images/illustration_22.jpg"),
  new ComponentBean("自定义控件", "TextPage", "自定义有状态或者无状态的控件",
      "assets/images/illustration_23.jpg"),
  new ComponentBean("缓存", "TextPage", "有没有sharedprenference或者sqlite等",
      "assets/images/illustration_24.jpg"),
  new ComponentBean(
      "网络请求", "TextPage", "网络请求封装", "assets/images/illustration_25.jpg"),
  new ComponentBean(
      "工具类", "TextPage", "工具类的封装与使用", "assets/images/illustration_26.jpg"),
  new ComponentBean(
      "全局变量", "TextPage", "全局变量的定义与使用", "assets/images/illustration_27.jpg"),
  new ComponentBean(
      "DropdownButton", "TextPage", "全局变量的定义与使用", "assets/images/illustration_28.jpg"),
  new ComponentBean(
      "FlatButton", "TextPage", "全局变量的定义与使用", "assets/images/illustration_29.jpg"),
  new ComponentBean(
      "FloatingActionButton", "TextPage", "全局变量的定义与使用", "assets/images/illustration_30.jpg"),
  new ComponentBean(
      "IconButton", "Radio", "全局变量的定义与使用", "assets/images/illustration_31.jpg"),
  new ComponentBean(
      "Switch", "TextPage", "全局变量的定义与使用", "assets/images/illustration_32.jpg"),
  new ComponentBean(
      "TextField", "TextPage", "全局变量的定义与使用", "assets/images/illustration_33.jpg"),
  new ComponentBean(
      "动画", "TextPage", "全局变量的定义与使用", "assets/images/illustration_34.jpg"),
  new ComponentBean(
      "字体", "TextPage", "全局变量的定义与使用", "assets/images/illustration_35.jpg"),
  new ComponentBean(
      "盒约束", "TextPage", "全局变量的定义与使用", "assets/images/illustration_27.jpg"),
  new ComponentBean(
      "国际化", "TextPage", "全局变量的定义与使用", "assets/images/illustration_27.jpg"),
];
