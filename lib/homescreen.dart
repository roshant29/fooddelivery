import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui1/buttons.dart';
import 'package:ui1/json.dart';
import 'package:ui1/provider/likebutton.dart';
import 'package:ui1/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final likeprovider = Provider.of<LikeProvider>(context, listen: false);
    final foodItems = createFoodItems();
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(1),
              child: Stack(
                children: [
                  Image.network(
                    'https://th.bing.com/th/id/OIP.iyy8dA04muVERQ3Q710xfAHaE7?rs=1&pid=ImgDetMain',
                  ),
                  Positioned(
                    left: 20,
                    top: 25,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 25,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Icon(Icons.edit_outlined),
                    ),
                  ),
                  Positioned(
                    top: 250,
                    //name container
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      width: 370,
                      height: 200,
                      decoration: BoxDecoration(
                          border: BorderDirectional(
                              bottom: BorderSide(
                                  color:
                                      const Color.fromARGB(255, 19, 18, 18))),
                          color: Color.fromARGB(255, 250, 249, 249),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15))),
                      //name Column
                      child: Column(
                        children: [
                          Text(
                            'Nararaya Kirana',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text1(
                            text: 'Rajin menabung dan suka memasak',
                            x: 15,
                            color: Colors.grey,
                          ),
                          Text1(
                            text: '24 Followers - 8 Following',
                            x: 15,
                            color: Colors.grey,
                          ),
                          //for post and reviews button
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Buttons(
                                  text: 'Posts',
                                  color: Colors.grey,
                                  x: 20,
                                  concolor: Colors.white),
                              Buttons(
                                  text: 'Reviews',
                                  color: Colors.white,
                                  x: 20,
                                  concolor: Colors.orange)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left: 150,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 243, 240, 240),
                            width: 5),
                        borderRadius: BorderRadius.circular(
                          100,
                        ),
                      ),
                      child: CircleAvatar(
                          radius: 50,
                          foregroundImage: NetworkImage(
                              'https://th.bing.com/th?id=OIP.n5CeR93916slWXGyV13PuAHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.4&pid=3.1&rm=2')),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
                itemCount: fooditemsmap.length,
                itemBuilder: (context, index) {
                  var item = foodItems[index];
                  return Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Column(
                      children: [
                        Divider(
                          color: Colors.grey,
                          height: 3,
                          thickness: 1,
                          indent: 14,
                          endIndent: 14,
                        ),
                        ListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              /////////////////////////////// 1. Add a Consumer widget here
                              Consumer<LikeProvider>(
                                builder: (context, indexs, child) =>
                                    GestureDetector(
                                        onTap: () {
                                          likeprovider.toggleLike(index);
                                        },
                                        child: Icon(
                                          likeprovider.likes.contains(index)
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          color:
                                              likeprovider.likes.contains(index)
                                                  ? Colors.red
                                                  : Colors.grey,
                                        )),
                              ),
                              Icon(Icons.more_vert)
                            ],
                          ),
                          title: Text1(
                              text: item.foodname,
                              x: 18,
                              color: Color.fromARGB(255, 0, 0, 0)),
                          subtitle: Text1(
                            text: item.description,
                            color: Color.fromARGB(255, 102, 101, 101),
                            x: 15,
                          ),
                          leading: Image.network(
                            fit: BoxFit.cover,
                            item.image,
                            height: 60,
                            width: 60,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
