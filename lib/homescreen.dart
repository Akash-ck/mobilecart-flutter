import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mediaapp/screen3.dart';
import 'screen2.dart';
import 'configuration.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;


  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor)..rotateY(isDrawerOpen? -0.5:0),
      duration: Duration(milliseconds: 250),

      decoration: BoxDecoration(
          color: Colors.grey[200],

          borderRadius: BorderRadius.circular(isDrawerOpen?40:0.0)

      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isDrawerOpen?IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: (){
                      setState(() {
                        xOffset=0;
                        yOffset=0;
                        scaleFactor=1;
                        isDrawerOpen=false;

                      });
                    },

                  ): IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        setState(() {
                          xOffset = 230;
                          yOffset = 150;
                          scaleFactor = 0.6;
                          isDrawerOpen=true;
                        });
                      }),
                  Column(
                    children: [
                      Text('Location'),

                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: primaryGreen,
                          ),
                          Text('Trithala'),
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(
                    child: Icon(Icons.person),
                  )
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              margin: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.search),
                  Text('Search mobile'),
                  Icon(Icons.settings)

                ],
              ),
            ),

            Container(height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context,index){
                  return Container(
                    child: Column(
                      children: [
                        Container(

                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              boxShadow: shadowList,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset(categories[index]["iconPath"],       height: 60,
                            width: 100,color: Colors.grey[700],),
                        ),
                        Text(categories[index]['name'])
                      ],
                    ),
                  );
                },

              ),
            ),


            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));

              },
              child: Container(
                height: 220,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Container(

                            decoration: BoxDecoration(color: Colors.blueGrey[300],
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: shadowList,
                            ),
                            margin: EdgeInsets.only(top: 50),
                          ),
                          Align(
                            child: Hero(

                                tag:2,child: Image.asset('assets/poco.jpeg',),),
                          ),
                          Expanded(child: Container(
                            height: 200,
                            child: Row(
                              children: [
                                SizedBox(width: 50,),
                                Text("VIEW DETAILS",style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(width: 50,),
                                IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: (){})
                              ],
                            ),
                            margin: EdgeInsets.only(top: 80,bottom: 20,),
                            decoration: BoxDecoration(color: Colors.white,

                                boxShadow: shadowList,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)

                                )
                            ),

                          ))


                        ],
                      ),
                    ),



                  ],
                ),

              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen3()));

              },
              child: Container(
                height: 200,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [

                    Expanded(
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));

                            },
                            child: Container(

                              decoration: BoxDecoration(color: Colors.blueGrey[300],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: shadowList,
                              ),
                              margin: EdgeInsets.only(top: 50),
                            ),
                          ),
                          Align(
                            child: Hero(

                              tag:1,child: Image.asset('assets/mg.jpg',),),
                          ),
                          Expanded(child: Container(
                            height: 400,
                            child: Row(
                              children: [
                                SizedBox(width: 50,),
                                Text("VIEW DETAILS",style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(width: 50,),
                                IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: (){})
                              ],
                            ),
                            margin: EdgeInsets.only(top: 80,bottom: 20,),
                            decoration: BoxDecoration(color: Colors.white,

                                boxShadow: shadowList,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)

                                )
                            ),

                          ))


                        ],
                      ),
                    ),


                  ],
                ),


              ),
            ),
            SizedBox(height: 50,)






          ],
        ),
      ),
    );
  }
}