import 'package:flutter/material.dart';
import 'package:the_first_one/components/BottomComponent.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:the_first_one/components/Line.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Container"),
        leading: BackButton(),
      ),
      //ScrollView的效果可以通过ListView来实现
      body: ListView(
        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(
              '我不是药神：你我生而平凡 生命脆弱',
              textAlign: TextAlign.left,
              softWrap: true,
              style:
                  TextStyle(color: Colors.black54, fontSize: 23.0, height: 1.3),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
                top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Row(
                  children: <Widget>[
                    Container(
                      child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/illustration_1.jpg'),
                          radius: 18.0),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Text('Sherry晨星',
                          style:
                              TextStyle(color: Colors.black54, fontSize: 15.0)),
                    )
                  ],
                )),
                FlatButton(
                  onPressed: () {
                    Fluttertoast.showToast(msg: "关注一下");
                  },
                  textColor: Colors.white,
                  color: Colors.green[400],
                  child: Text('+ 关注'),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              children: <Widget>[
                Text('2018-07-17 09:54',
                    style: TextStyle(color: Colors.black54, fontSize: 13.0)),
                Text('字数 1527',
                    style: TextStyle(color: Colors.black54, fontSize: 13.0)),
                Text('阅读 5',
                    style: TextStyle(color: Colors.black54, fontSize: 13.0)),
                Text('随笔',
                    softWrap: true,
                    style: TextStyle(color: Colors.black54, fontSize: 13.0)),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Image.asset(
              'assets/images/illustration_8.jpg',
              width: 500.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          ),
          Text('图片来源：安卓壁纸',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 13.0,
                  decoration: TextDecoration.underline,
                  height: 1.5),
              textAlign: TextAlign.center),
          Container(
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(
                "这是我第二遍看《我不是药神》，走出电影院以后，心里仍怅然若失好久。因为对剧情的发展已经了然于胸，所以当面对那些被称作笑点的镜头：初次到访神油店的吕受益摘下三层口罩、刘牧师絮絮叨叨地在与印度药商的对话结尾添上一句“God bless you”、黄毛破天荒剃掉了头发露出光溜溜的脑袋，影院里的其他观众忍俊不禁的时候，我心里却掠过一丝叹息。\n毫无疑问，这是一部完整性极强的、成功的商业片，它让我对国产电影再一次充满惊喜，让我对中国电影工业的未来增添了一份信心。\n我最想讲的是电影塑造的人物。在《我不是药神》里，每位角色有棱有角、有血有肉，通过神情、语言、动作，不胜枚举的细节，塑造了丰满的人物形象，很容易让我产生共情。\n徐铮的表演堪称完美。初期的神油店小老板，中年焦虑的人生输家，他几乎总皱着眉。当他一勺一勺地喂卧病在床的父亲菜粥时，当他从钱包里掏出二百六给儿子买球鞋、然后漫不经心地一口吃掉剩在盘子里的肉馅，我真真切切地感受到这个人物的辛酸和无奈。到后来，在缝纫厂里和周一围的那场对手戏，几分怕被看穿的心虚、几分“破罐子破摔”的无畏，实在是拿捏有度。从为了赚钱决定走私，到怕坐牢将进药渠道拱手他人，再到最终不惜亏本贩药的救赎，程勇这一角色完成了属于他的蜕变。\n其他人物又何尝不让人感慨万千。思慧朝着经理大喊“脱裤子”后眼里深深的落寞、进入急变期再见程勇的吕受益说“吃个橘子吧”惨淡的笑、刘牧师揭露张长林卖假药时的义愤填膺、彭浩最后的一句“痛快了”以及那个帅到炸裂的歪嘴笑，甚至是张长林受讯时的装疯卖傻，或许只是一个瞬间，却能让我的心随着影片中的人物一起跳动。“惊鸿一般短暂”，却永远地记住了。\n讲讲观影两遍不同的感悟吧。第一遍看完电影，我脑海里的关键词是“英雄主义”。后期的程勇，让我想起了另一部电影《辛德勒的名单》。当他斩钉截铁地说“我们卖五百块”的时候，我知道，他是真的决定做“救世主”了。当思慧在各大病友群里发出讯息、收到接连不断的回复，当“希望”二字渐渐放大至充满整个荧幕，当画面中出现了无数张戴着口罩的病患的脸，我的眼泪再也止不住了。\n我不知现实里的陆勇救了多少白血病患者，但他确实是他们的“药神”。无论是在影视作品里，还是在现实生活中，永远有这样的一群人，让我们热泪盈眶。他们身上自带“英雄主义”的光芒，他们代表着人性最美好的一面，他们守护着人们的安然无恙。他们是黑夜里的星辰，沙砾中的珍珠。他们在黑暗的世界里发出熠熠光辉。\n然而第二遍以后，我看到的是主线故事以外的人们。在程勇入狱的三年里，那些病患怎么办？他们能撑到格列宁进医保的那天吗？失去丈夫的“弟妹”怎么办？思慧是不是还要被迫去跳钢管舞？黄毛的父母还会偶尔想念起他们的孩子吗？再伟大的英雄也救不了所有人，正如《我不是药神》的英文片名“Dying to survive”，我们常常忘记了，生存本身就是一种莫大的幸运。\n如果你让自己沉浸在这种无力感之中，如果你细细回顾生命里的所有无可奈何的时刻，你会觉得，人生实在是太艰难了。我曾经在某个深夜读完了那篇长文《流感下的北京中年》，难过得说不出话来。生命好脆弱，人生好无奈。生离死别的痛楚、求而不得的怨恨，所有的这些都有可能吞噬我们，在命运面前，人类仿佛不堪一击。\n可是啊，我们仍愿去相信，我们不得不去相信，这个世界里遗憾与美丽并存。我们没有神的光环，你我皆生而平凡。在漫长而短暂的生命中，我们唯有选择勇敢地放手一搏，唯有努力地过好自己的人生。我们承认自己多么平凡，多么渺小，多么脆弱。可我们活着，我们奋斗着，然后无悔。\n最后摘录两句文字，与大家共勉：\n其实我们每个人的生活都是一个世界，即使最平凡的人也要为他生活的那个世界而奋斗。（《平凡的世界》）\n人是为了活着本身而活着，而不是为了活着之外的任何事物所活着。（《活着》）",
                style: TextStyle(
                    color: Colors.black54, fontSize: 15.0, height: 1.8)),
          ),
          Container(
            margin: const EdgeInsets.only(
                top: 20.0, bottom: 15.0, left: 10.0, right: 10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Row(children: <Widget>[
                  Icon(Icons.favorite_border),
                  Container(
                    margin: const EdgeInsets.only(left: 5.0),
                    child: Text('0',
                        style:
                            TextStyle(color: Colors.black54, fontSize: 12.0)),
                  )
                ])),
                Row(
                  children: <Widget>[
                    Image.asset('assets/images/ic_wechat.png',
                        width: 25.0, height: 25.0),
                    Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: Image.asset('assets/images/ic_circle.png',
                            width: 25.0, height: 25.0)),
                    Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: Image.asset('assets/images/ic_dot3.png',
                            width: 25.0, height: 18.0)),
                  ],
                )
              ],
            ),
          ),
          Line(Colors.grey, 500.0, 0.5),
          Container(
              margin: const EdgeInsets.only(top: 20.0, bottom: 15.0),
              child: Column(
                children: <Widget>[
                  Text("小礼物走一走，来简书关注我", style: TextStyle(fontSize: 15.0)),
                  Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      child: FlatButton(
                        onPressed: () {
                          Fluttertoast.showToast(msg: "赞赏支持");
                        },
                        color: Colors.orange[400],
                        child:
                            Text("赞赏支持", style: TextStyle(color: Colors.white)),
                      ))
                ],
              )),
          Container(
            margin: const EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(6.0))),
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Align(
                  child: Text("关注作者，看更多TA的好文章"),
                  alignment: Alignment.centerLeft,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  child: Line(Colors.grey, 310.0, 1.0),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Row(
                        children: <Widget>[
                          Container(
                            child: CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assets/images/illustration_1.jpg'),
                                radius: 25.0),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Column(
                              children: <Widget>[
                                Text('Sherry晨星',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.0)),
                                Container(
                                  margin: const EdgeInsets.only(top: 5.0),
                                  child: Text('TO BE COOL',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12.0)),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                      FlatButton(
                        onPressed: () {
                          Fluttertoast.showToast(msg: "关注一下");
                        },
                        textColor: Colors.white,
                        color: Colors.cyan[200],
                        child: Text('+ 关注'),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
//      bottomNavigationBar:  Container(
//        width: 500.0,
//        height: 60.0,
//        color: Colors.white,
//        child:  Row(
//          mainAxisAlignment: MainAxisAlignment.spaceAround,
//          children: <Widget>[
//             BottomComponent(
//              icons: Icons.monetization_on,
//              btnName: '赞赏',
//            ),
//             BottomComponent(
//              icons: Icons.comment,
//              btnName: '评论',
//            ),
//             BottomComponent(
//              icons: Icons.favorite_border,
//              btnName: '喜欢',
//            ),
//             BottomComponent(
//              icons: Icons.share,
//              btnName: '分享',
//            ),
//          ],
//        ),
//      ),

      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              BottomComponent(
                icons: Icons.monetization_on,
                btnName: '赞赏',
              ),
              BottomComponent(
                icons: Icons.comment,
                btnName: '评论',
              ),
              BottomComponent(
                icons: Icons.favorite_border,
                btnName: '喜欢',
              ),
              BottomComponent(
                icons: Icons.share,
                btnName: '分享',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
