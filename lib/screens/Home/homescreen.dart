import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/messagesscreen.dart';
import 'package:instagram_ui/widgets/UiHelper.dart';

class Homescreen extends StatelessWidget {
  var arrStoryContent = [
    {
      'img':
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      'name': 'Your Story'
    },
    {
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBQcRtWVDjSpn8k9DDCETUsh-LL3HVJGDMaQ&s',
      'name': 'Jimmy'
    },
    {
      'img':
          'https://png.pngtree.com/png-vector/20230928/ourmid/pngtree-young-indian-man-png-image_10149659.png',
      'name': 'Dany'
    },
    {
      'img':
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      'name': 'Your Story'
    },
    {
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBQcRtWVDjSpn8k9DDCETUsh-LL3HVJGDMaQ&s',
      'name': 'Jimmy'
    },
    {
      'img':
          'https://png.pngtree.com/png-vector/20230928/ourmid/pngtree-young-indian-man-png-image_10149659.png',
      'name': 'Dany'
    },
    {
      'img':
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      'name': 'Your Story'
    },
    {
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBQcRtWVDjSpn8k9DDCETUsh-LL3HVJGDMaQ&s',
      'name': 'Jimmy'
    },
    {
      'img':
          'https://png.pngtree.com/png-vector/20230928/ourmid/pngtree-young-indian-man-png-image_10149659.png',
      'name': 'Dany'
    },
    {
      'img':
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      'name': 'Your Story'
    },
    {
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBQcRtWVDjSpn8k9DDCETUsh-LL3HVJGDMaQ&s',
      'name': 'Jimmy'
    },
    {
      'img':
          'https://png.pngtree.com/png-vector/20230928/ourmid/pngtree-young-indian-man-png-image_10149659.png',
      'name': 'Dany'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        toolbarHeight: 70,
        backgroundColor: Colors.black12,
        leading: UiHelper.CustomImg(imgUrl: 'cameraicon.png'),
        //Icon(Icons.camera_alt_sharp)
        title: UiHelper.CustomImg(imgUrl: 'Instagram Logo.png'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: UiHelper.CustomImg(imgUrl: 'shapee.png')),
          SizedBox(
            width: 3,
          ),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MessagesScreen()),
                );
              },
              icon: UiHelper.CustomImg(imgUrl: 'Messanger.png')),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 12, top: 8),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            arrStoryContent[index]['img'].toString()),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        arrStoryContent[index]['name'].toString(),
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                );
              },
              itemCount: arrStoryContent.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 60,
            width: double.infinity,
            child: ListTile(
              leading: UiHelper.CustomImg(imgUrl: 'Oval.png'),
              title: Text(
                'joshua_l',
                style: TextStyle(
                    color: Color(0XFFF9F9F9),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Tokyo, Japan',
                style: TextStyle(color: Color(0XFFF9F9F9), fontSize: 11),
              ),
              trailing: UiHelper.CustomImg(imgUrl: 'More Icon.png'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
              height: 280,
              width: double.infinity,
              child: Image.asset(
                'assets/images/Rectangle.png',
                fit: BoxFit.cover,
              )),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: UiHelper.CustomImg(imgUrl: 'Like.png')),
                  IconButton(
                      onPressed: () {},
                      icon: UiHelper.CustomImg(imgUrl: 'Comment.png')),
                  IconButton(
                      onPressed: () {},
                      icon: UiHelper.CustomImg(imgUrl: 'Messanger1.png')),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: UiHelper.CustomImg(imgUrl: 'Save.png')),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(children: [
              SizedBox(
                width: 15,
                height: 15,
                child: UiHelper.CustomImg(imgUrl: 'Oval.png'),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Liked by sujal_dave and 44,686 others',
                style: TextStyle(color: Colors.white, fontSize: 10),
              )
            ]),
          ),
          SizedBox(
            height: 3,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
                'sujal_dave The game in Japan was amazing and I want to share some photos,sujal_dave The game in Japan was amazing and I want to share some photos',
                style: TextStyle(color: Colors.white, fontSize: 10)),
          )

          //
        ],
      ),
    );
  }
}
