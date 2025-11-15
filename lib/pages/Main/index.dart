



import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/Car/index.dart';
import 'package:flutter_shop/pages/Category/index.dart';
import 'package:flutter_shop/pages/Home/index.dart';
import 'package:flutter_shop/pages/My/index.dart';

class Main extends StatefulWidget {
  Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {

 final List<Map<String,String>> _tabList=[
  {
    'icon':'lib/assets/shouye.png',
    'activeIcon':'lib/assets/shouye_active.png',
    'title':'首页',
  },
    {
    'icon':'lib/assets/gouwuche.png',
    'activeIcon':'lib/assets/gouwuche_active.png',
    'title':'购物车',
  },
    {
    'icon':'lib/assets/fenlei.png',
    'activeIcon':'lib/assets/fenlei_active.png',
    'title':'分类',
  },
    {
    'icon':'lib/assets/wode.png',
    'activeIcon':'lib/assets/wode_active.png',
    'title':'我的',
  },
];
int _currentIndex=0;


List<BottomNavigationBarItem> _getBottomNavigationBarItems(){
  return _tabList.map((item){
    return BottomNavigationBarItem(
      icon: Image.asset(item['icon']!,width: 30,height:30),
      activeIcon: Image.asset(item['activeIcon']!,width:30,height:30),
      label: item['title'],
    );
  }).toList();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('主页面'),
      ),
      body: IndexedStack(
        index:_currentIndex,
        children:[
          HomeView(),
          CarView(),
          CategoryView(),
          MyView(),
        ]
      ),
      bottomNavigationBar:BottomNavigationBar(
        selectedItemColor:Colors.blue,
        showUnselectedLabels:true,
        unselectedItemColor:Colors.blueGrey,
        onTap:(index){_currentIndex=index;setState((){});},
        currentIndex:_currentIndex,
        items:_getBottomNavigationBarItems()
        ),
    );
  }
}