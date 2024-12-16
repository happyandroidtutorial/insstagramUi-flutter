import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/UiHelper.dart';

class MessagesScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  var _arrChatContent = [
    {
      'img':
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      'name': 'Jadav',
      'lmsg': 'are you coming today'
    },
    {
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBQcRtWVDjSpn8k9DDCETUsh-LL3HVJGDMaQ&s',
      'name': 'Jimmy',
      'lmsg': 'we will go there , tomarrow'
    },
    {
      'img':
          'https://png.pngtree.com/png-vector/20230928/ourmid/pngtree-young-indian-man-png-image_10149659.png',
      'name': 'Dany',
      'lmsg': 'is there any problem '
    },
    {
      'img':
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      'name': 'Jadav',
      'lmsg': 'are you coming today'
    },
    {
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBQcRtWVDjSpn8k9DDCETUsh-LL3HVJGDMaQ&s',
      'name': 'Jimmy',
      'lmsg': 'we will go there , tomarrow'
    },
    {
      'img':
          'https://png.pngtree.com/png-vector/20230928/ourmid/pngtree-young-indian-man-png-image_10149659.png',
      'name': 'Dany',
      'lmsg': 'is there any problem '
    },
    {
      'img':
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      'name': 'Jadav',
      'lmsg': 'are you coming today'
    },
    {
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBQcRtWVDjSpn8k9DDCETUsh-LL3HVJGDMaQ&s',
      'name': 'Jimmy',
      'lmsg': 'we will go there , tomarrow'
    },
    {
      'img':
          'https://png.pngtree.com/png-vector/20230928/ourmid/pngtree-young-indian-man-png-image_10149659.png',
      'name': 'Dany',
      'lmsg': 'is there any problem '
    },
    {
      'img':
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      'name': 'Jadav',
      'lmsg': 'are you coming today'
    },
    {
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBQcRtWVDjSpn8k9DDCETUsh-LL3HVJGDMaQ&s',
      'name': 'Jimmy',
      'lmsg': 'we will go there , tomarrow'
    },
    {
      'img':
          'https://png.pngtree.com/png-vector/20230928/ourmid/pngtree-young-indian-man-png-image_10149659.png',
      'name': 'Dany',
      'lmsg': 'is there any problem '
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(CupertinoIcons.back)),
        title: Text(
          'ustad_Faraz',
          style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              ))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0XFF262626),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Color(0XFF8E8E93), fontSize: 13),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 15,
                    color: Color(0XFF8E8E93),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0XFFFFFFFF),
                    child: CircleAvatar(
                      radius: 18,
                      backgroundImage: NetworkImage(
                          _arrChatContent[index]['img'].toString()),
                    ),
                  ),
                  title: Text(
                    _arrChatContent[index]['name'].toString(),
                    style: TextStyle(fontSize: 13),
                  ),
                  subtitle: Text(_arrChatContent[index]['lmsg'].toString(),
                      style: TextStyle(fontSize: 13, color: Colors.grey)),
                  trailing: IconButton(
                      onPressed: () {}, icon: Icon(CupertinoIcons.camera)),
                );
              },
              itemCount: _arrChatContent.length,
            ),
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0XFF262626),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.CustomImg(imgUrl: 'Icon (1).png'),
              SizedBox(
                width: 5,
              ),
              Text(
                'Camera',
                style: TextStyle(color: Color(0XFF3897F0)),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
