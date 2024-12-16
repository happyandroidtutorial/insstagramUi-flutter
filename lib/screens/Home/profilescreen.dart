import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/Home/Profile/gridpostscreen.dart';
import 'package:instagram_ui/screens/Home/Profile/tagscreen.dart';
import 'package:instagram_ui/widgets/UiHelper.dart';

class Profilescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.CustomImg(imgUrl: 'lockicon.png'),
              SizedBox(
                width: 5,
              ),
              Text(
                'sujal_dev',
                style: TextStyle(fontSize: 14),
              )
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: UiHelper.CustomImg(imgUrl: 'Shape (1).png'))
          ],
        ),
        body: Column(
          children: [
            // prent row for img,following ,likes.....
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: CircleAvatar(
                      radius: 30,
                      child: UiHelper.CustomImg(imgUrl: 'ovalprofile.png'),
                    ),
                  ),
                  // row to hold 3 columns
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '54',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Posts',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                        // second Column
                        Column(
                          children: [
                            Text(
                              '834',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Followers',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                        //third column
                        Column(
                          children: [
                            Text(
                              '160',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Following',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sujal Dave',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Digital goodies designer @pixsellz ',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Everything is designed',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(color: Color(0XFF000000)),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey,
                      child: CircleAvatar(
                        radius: 29,
                        backgroundColor: Color(0XFF121212),
                        child: Icon(Icons.add),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'New',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey,
                      child: CircleAvatar(
                        radius: 29,
                        backgroundImage: NetworkImage(
                            'https://png.pngtree.com/png-vector/20230928/ourmid/pngtree-young-indian-man-png-image_10149659.png'),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Friends',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey,
                      child: CircleAvatar(
                        radius: 29,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBQcRtWVDjSpn8k9DDCETUsh-LL3HVJGDMaQ&s'),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Sports',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey,
                      child: CircleAvatar(
                        radius: 29,
                        backgroundImage: NetworkImage(
                            'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Design',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 50,
              child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(
                      icon: UiHelper.CustomImg(imgUrl: 'Grid Icon.png'),
                    ),
                    Tab(
                      icon: UiHelper.CustomImg(imgUrl: 'Tags Icon.png'),
                    ),
                  ]),
            ),
            Expanded(
              child: TabBarView(children: [
                GridpostScreen(),
                TagScreen(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
