

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widgets/bottom_nav_bar.dart';
import 'package:news_app/widgets/image_container.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});
  static const routeName = 'discover';

  @override
  Widget build(BuildContext context) {
     List <String> tabs = ["Здоровье", "Политика", "Исскуство", "Еда", "Наука"]; // список новости
    return DefaultTabController( //  это унаследованный виджет, который используется для совместного использования TabController с TabBar или TabBarView
      initialIndex: 0,
      length: tabs.length, //  представляет количество элементов в списке tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.black),
          ),
        ),
        bottomNavigationBar: const BottomNavBar(index: 0),
        // extendBodyBehindAppBar: true,
        body: ListView(
          padding: EdgeInsets.all(20),
          children:  [     
            _DiscoverNews(),
            _CategoryNews(tabs: tabs)
          ],
        ),
      ),
    );
  }
}

class _CategoryNews extends StatelessWidget {
  const _CategoryNews({
    Key? key,
    required this.tabs, // для обозначения
  }): super(key: key);
  final List <String>  tabs;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          isScrollable: true,
          indicatorColor: Colors.black,
          tabs: tabs.map((tab) => Tab(
          icon: Text(tab, style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),),
        ),).toList(
        ),),    
       SizedBox(
  height: MediaQuery.of(context).size.height,
  child: TabBarView(
    children: tabs.map((tab) => ListView.builder(
      itemBuilder: (context, index) {
        // код для создания элементов списка
        return const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
               children: [
                 ImageContainer(
                      width: 80,
                      height: 80,
                      borderRadius: 5,
                      margin: EdgeInsets.all(10.0),
                       imageAsset: "assets/images/sc7.jpg"),
                       Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("С 2009 года мы задаем высокие, стандарты медицинских услуг, Готовы оказать медицинскую помощь в клинике.",
                             maxLines: 3,
                              overflow: TextOverflow.ellipsis
                             ),
                           ],
                         ),
                      
               ],
             ),
             Row(
               children: [
                 ImageContainer(
                      width: 80,
                      height: 80,
                      borderRadius: 5,
                      margin: EdgeInsets.all(10.0),
                       imageAsset: "assets/images/sc8.jpg"),
                       Column(
                         children: [
                           Text(""),
                         ],
                       ),
               ],
             ),
             Row(
               children: [
                 ImageContainer(
                      width: 80,
                      height: 80,
                      borderRadius: 5,
                      margin: EdgeInsets.all(10.0),
                       imageAsset: "assets/images/sc9.png"),
                       Column(
                         children: [
                           Text(""),
                         ],
                       ),
               ],
             ),
          ],
        );
          },
        )).toList(),
      ),
    ),
      ],
    );
  }
}

class _DiscoverNews extends StatelessWidget {
  const _DiscoverNews({
    Key? key,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Обнаружить", style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),),
          SizedBox(height: 5,),
          const Text("Новости со всего мира", style: TextStyle(
            color: Colors.grey,
            // fontWeight: FontWeight.bold,
            fontSize: 15,
          ),),
          SizedBox(height: 20,),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Поиск",
              fillColor: Colors.grey.shade200,
              filled: true,
              prefixIcon:  Icon(Icons.search),
              suffixIcon: RotatedBox(
                quarterTurns: 1,
                child:  Icon(Icons.tune)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none
                )
            ),
          )  
        ],
      ),
    );
  }
}