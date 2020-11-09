import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List tags = ['travel', 'urban', 'fashion', 'lifestyle', 'editing'];
  List categories = [
    'Featured',
    'Neon City',
    'Street Art',
    'Fashion',
    'Studio'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF09031D),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        elevation: 0,
        backgroundColor: Color(0xFF09031D),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Name Section
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 28.0, top: 7.0),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/profiles/1.jpg'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 38.0, top: 7.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Carreen Page",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.location_on,
                              color: Colors.white, size: 17),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Aleppo- SY',
                              style: TextStyle(
                                  color: Colors.white,
                                  wordSpacing: 2,
                                  letterSpacing: 4),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          //Following Section
          Padding(
            padding: const EdgeInsets.only(
                right: 38.0, left: 38.0, top: 15.0, bottom: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '17K',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'followers',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Container(
                  color: Colors.white,
                  width: 0.2,
                  height: 22,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '387',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'following',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Container(
                  color: Colors.white,
                  width: 0.2,
                  height: 22,
                ),
                Container(
                  padding:
                      EdgeInsets.only(right: 18, left: 18, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(33),
                    ),
                    gradient: LinearGradient(
                        colors: [Color(0xFF6D0EB5), Color(0xFF4059F1)],
                        begin: Alignment.bottomRight,
                        end: Alignment.centerLeft),
                  ),
                  child: Text(
                    'follow',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ), //Tags Section
          //Tags Section
          Container(
            height: 44,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tags.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(33),
                        border: Border.all(color: Colors.white12)),
                    margin: EdgeInsets.only(right: 13),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 13.0, bottom: 5, right: 20, left: 20),
                      child: Text(
                        tags[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                }),
          ),

          //Gallery Section

          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                color: Color(0xFFEFEFEF),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(34),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 33, right: 25, left: 25),
                    child: Row(
                      children: [
                        Text(
                          "Portfolio",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 33,
                          ),
                        ),
                        Text(
                          " by Mimba",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              fontStyle: FontStyle.italic,
                              color: Colors.orange),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 25, left: 25),
                    height: 40,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 17.0, top: 3),
                            child: index == 1
                                ? Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        categories[index],
                                        style: TextStyle(
                                            color: Color(0xFF434AE8),
                                            fontSize: 19),
                                      ),
                                      CircleAvatar(
                                        radius: 2,
                                        backgroundColor: Color(0xFF434AE8),
                                      )
                                    ],
                                  )
                                : Text(
                                    categories[index],
                                    style: TextStyle(
                                        color: Colors.grey.withOpacity(0.9),
                                        fontSize: 19),
                                  ),
                          );
                        }),
                  ),

                  //Galle
                  Expanded(
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            padding: EdgeInsets.only(right: 25, left: 25),
                            height: 200,
                            child: StaggeredGridView.countBuilder(
                              crossAxisCount: 4,
                              itemCount: 9,
                              itemBuilder: (BuildContext contex, int index) =>
                                  Container(
                                padding: EdgeInsets.all(5.0),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  child: Image.asset(
                                    'assets/images/profiles/${index + 1}.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              staggeredTileBuilder: (int index) =>
                                  StaggeredTile.count(2, index.isEven ? 3 : 1),
                            ),
                          ),
                        ),

                        // Icons Section
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(right: 12, left: 12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(33),
                            ),
                          ),
                          height: 55,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.home,
                                color: Color(0xFF434BE6),
                              ),
                              Icon(
                                Icons.notifications_active,
                                color: Colors.grey.withOpacity(0.6),
                              ),
                              SizedBox(
                                width: 33,
                              ),
                              Icon(
                                Icons.favorite,
                                color: Colors.grey.withOpacity(0.6),
                              ),
                              Icon(
                                Icons.person,
                                color: Colors.grey.withOpacity(0.6),
                              ),
                            ],
                          ),
                        ),

                        //Section Bouton plus +
                        Positioned(
                          bottom: 23,
                          child: Container(
                            height: 66,
                            width: 66,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(55),
                              ),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF6615C1),
                                    Color(0xFF484FDE),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 27,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
