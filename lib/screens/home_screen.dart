import 'package:flutter/material.dart';
import 'package:news_app/widgets/bottom_nav_bar.dart';
import 'package:news_app/widgets/custom_tag.dart';
import 'package:news_app/widgets/image_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.white),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(index: 0),
      extendBodyBehindAppBar: true,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          _NewOfTheDay(),
          // SizedBox(height: 20,),
          _BreakingNews()
        ],
      ),
    );
  }
}

class _BreakingNews extends StatelessWidget {
  const _BreakingNews({
    Key? key,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Последние новости", style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700
              ),),
               Text("больше", style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.w600    
              ),),
            ],
          ),
        ),        
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
          
            itemBuilder: (context, index){
              return Container(
                margin: EdgeInsets.only(right: 10),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                           ImageContainer(
                            width: MediaQuery.of(context).size.width * 0.6,
                             imageAsset: "assets/images/sc5.jpg",),
                             SizedBox(width: 10,),
                          ImageContainer(
                            width: MediaQuery.of(context).size.width * 0.5,
                             imageAsset: "assets/images/sc3.jpg",),
                        ],
                      ),
                      SizedBox(height: 5,),
                      const Row(
                      
                      children: [
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Все об учебе",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        // color: Colors.black,
                        fontSize: 15,
                      ),
                      ),
                      Text("Подробно о поступлении,",
                       style: TextStyle(
                        fontWeight: FontWeight.w500,
                        // color: Colors.black,
                        fontSize: 15,
                      ),
                      ),
                      Text("языковых курсах и жизни,",
                       style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        // fontSize: 14,
                      ),
                      ),
                       Text("студентов за рубежом.",
                        style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        // fontSize: 14,
                      ),
                       ),
                            ],
                          ),
                          SizedBox(width: 35,),
                          
                       Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Как показывает опыт",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        // color: Colors.black,
                        fontSize: 15,
                      ),
                      ),
                      Text("Характерный для Северной Америки",
                       style: TextStyle(
                        fontWeight: FontWeight.w500,
                        // color: Colors.black,
                        fontSize: 15,
                      ),
                      ),
                      Text("Нью-Джерси и других северо-восточных штатов Америки",
                       style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        // fontSize: 14,
                      ),
                      ),
                       Text("хотя подобные заведения можно встретить по всей территории США",
                        style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        // fontSize: 14,
                      ),
                       ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
        )
      ],
    );
  }
}

class _NewOfTheDay extends StatelessWidget {
  const _NewOfTheDay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageContainer(
          height: MediaQuery.of(context).size.height * 0.45,
          width: double.infinity,
          imageAsset: "assets/images/sc1.jpg",
          padding: EdgeInsets.all(20),
        ),
        Positioned(
          bottom: 16,
          left: 16,
          child: Column(  
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,// then change
            children: [
              CustomTag(
                backgroundColor: Colors.grey.withAlpha(150),
                 children: [
                   Text(
                          "Новость дня",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.white),
              ),    
              ]),
              const SizedBox(height: 10,),
              const Text("Это концепция, которая относится к",
               style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17
               )),
                const Text("значимой или интересной новости",
               style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17
               )),
                const Text("определенный день",
               style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
                height: 1.25
               )),
               const SizedBox(height: 10,),
             
               Row(
                 children: [
                   TextButton(
                    onPressed: (){},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero
                    ),
                    child:  const Text(
                              "Узнать больше",
                            style: TextStyle(
                              color: Colors.white,         
                            ),),),
                  SizedBox(width: 10,),
                  const Icon(Icons.arrow_right_alt,
                  size: 20,
                   color: Colors.white,)
                 ],
               )
            ],
          ),
        ),
        const SizedBox(height: 10,),
      ],
    );
  }
}
