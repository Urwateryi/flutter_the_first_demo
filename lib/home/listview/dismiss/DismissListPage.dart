import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// 侧滑删除demo
/// 这个可以左边侧滑删除，也可以右边侧滑删除
/// app常见的 侧滑删除效果 就可以在这个基础上做改进
/// 思路：
/// 1.创建的List的item。
/// 2.将每个item包装在 Dismissible 控件中。
/// 3.提供“Leave Behind”提示。
class DismissListPage extends StatelessWidget {
  final items = new List<String>.generate(20, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    final title = 'Dismissing Items';

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: buildItem(),
    );
  }

  Widget buildItem() {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return buildDismissible(item, context, index);
      },
    );
  }

  //默认是两边都可以滑动的，如果指定了direction，则其他方向就不能滑动了
  Widget buildDismissible(var item, BuildContext context, int index) {
    return Dismissible(
      //每个Dismissible必须包含一个Key。这个Key允许Flutter惟一地标识控件。
      key: Key(item),
      //我们还需要提供一个方法，它会告诉我们的应用程序在一个item被移开之后该做什么。
      onDismissed: (direction) {
        items.removeAt(index);
        print("---->>>onDismissed");
      },
      onResize: (){//比onDismissed先调用
          print("---->>>onResize");
      },
      direction: DismissDirection.endToStart,
      // 当item被移开，显示一个红色的背景
      background: Container(//从左往右滑动的颜色
        color: Colors.red,
        child: Icon(Icons.delete_sweep, color: Colors.white),
      ),
      secondaryBackground: Container(//从右往左滑动的颜色
          color: Colors.yellow[700]
      ),
      //这是ListView里面的真正的item
      child: ListTile(
        title: Text('$item'),
      ),
    );
  }
}