import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/UiHelper.dart';

class Searchscreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  var arrImgContent = [
    {
      'img':
          'https://static.remove.bg/sample-gallery/graphics/bird-thumbnail.jpg'
    },
    {
      'img':
          'https://www.shutterstock.com/image-photo/calm-weather-on-sea-ocean-600nw-2212935531.jpg'
    },
    {
      'img':
          'https://assets.simpleviewinc.com/simpleview/image/upload/c_limit,q_75,w_1200/v1/crm/bloomington/Sample-Gates_4478802b-5056-a36a-06180ee91f953fc5.jpg'
    },
    {
      'img':
          'https://static.remove.bg/sample-gallery/graphics/bird-thumbnail.jpg'
    },
    {
      'img':
          'https://assets.simpleviewinc.com/simpleview/image/upload/c_limit,q_75,w_1200/v1/crm/bloomington/Sample-Gates_4478802b-5056-a36a-06180ee91f953fc5.jpg'
    },
    {
      'img':
          'https://www.shutterstock.com/image-photo/calm-weather-on-sea-ocean-600nw-2212935531.jpg'
    },
    {
      'img':
          'https://www.shutterstock.com/image-photo/calm-weather-on-sea-ocean-600nw-2212935531.jpg'
    },
    {
      'img':
          'https://assets.simpleviewinc.com/simpleview/image/upload/c_limit,q_75,w_1200/v1/crm/bloomington/Sample-Gates_4478802b-5056-a36a-06180ee91f953fc5.jpg'
    },
    {
      'img':
          'https://static.remove.bg/sample-gallery/graphics/bird-thumbnail.jpg'
    },
    {
      'img':
          'https://assets.simpleviewinc.com/simpleview/image/upload/c_limit,q_75,w_1200/v1/crm/bloomington/Sample-Gates_4478802b-5056-a36a-06180ee91f953fc5.jpg'
    },
    {
      'img':
          'https://www.shutterstock.com/image-photo/calm-weather-on-sea-ocean-600nw-2212935531.jpg'
    },
    {
      'img':
          'https://static.remove.bg/sample-gallery/graphics/bird-thumbnail.jpg'
    },
    {
      'img':
          'https://www.shutterstock.com/image-photo/calm-weather-on-sea-ocean-600nw-2212935531.jpg'
    },
    {
      'img':
          'https://assets.simpleviewinc.com/simpleview/image/upload/c_limit,q_75,w_1200/v1/crm/bloomington/Sample-Gates_4478802b-5056-a36a-06180ee91f953fc5.jpg'
    },
    {
      'img':
          'https://static.remove.bg/sample-gallery/graphics/bird-thumbnail.jpg'
    },
    {
      'img':
          'https://assets.simpleviewinc.com/simpleview/image/upload/c_limit,q_75,w_1200/v1/crm/bloomington/Sample-Gates_4478802b-5056-a36a-06180ee91f953fc5.jpg'
    },
    {
      'img':
          'https://www.shutterstock.com/image-photo/calm-weather-on-sea-ocean-600nw-2212935531.jpg'
    },
    {
      'img':
          'https://www.shutterstock.com/image-photo/calm-weather-on-sea-ocean-600nw-2212935531.jpg'
    },
    {
      'img':
          'https://assets.simpleviewinc.com/simpleview/image/upload/c_limit,q_75,w_1200/v1/crm/bloomington/Sample-Gates_4478802b-5056-a36a-06180ee91f953fc5.jpg'
    },
    {
      'img':
          'https://static.remove.bg/sample-gallery/graphics/bird-thumbnail.jpg'
    },
    {
      'img':
          'https://assets.simpleviewinc.com/simpleview/image/upload/c_limit,q_75,w_1200/v1/crm/bloomington/Sample-Gates_4478802b-5056-a36a-06180ee91f953fc5.jpg'
    },
    {
      'img':
          'https://www.shutterstock.com/image-photo/calm-weather-on-sea-ocean-600nw-2212935531.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0XFF262626)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        controller: searchController,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0XFF8E8E93),
                            ),
                            hintText: 'search',
                            hintStyle: TextStyle(
                                fontSize: 14, color: Color(0XFF8E8E93)),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: IconButton(
                      onPressed: () {},
                      icon: UiHelper.CustomImg(imgUrl: 'Live.png')),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  height: 30,
                  width: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white54),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UiHelper.CustomImg(imgUrl: 'Icon.png'),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'IGTV',
                        style: TextStyle(color: Color(0XFFF9F9F9)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 30,
                  width: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white54),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shop,
                        size: 15,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Shop',
                        style: TextStyle(color: Color(0XFFF9F9F9)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 30,
                  width: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white54),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(
                      //   Icons.shop,
                      //   size: 15,
                      // ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Style',
                        style: TextStyle(color: Color(0XFFF9F9F9)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 30,
                  width: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white54),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(
                      //   Icons.shop,
                      //   size: 15,
                      // ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Sports',
                        style: TextStyle(color: Color(0XFFF9F9F9)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 30,
                  width: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white54),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(
                      //   Icons.shop,
                      //   size: 15,
                      // ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Auto',
                        style: TextStyle(color: Color(0XFFF9F9F9)),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, mainAxisSpacing: 2, crossAxisSpacing: 2),
                itemBuilder: (context, index) {
                  return Container(
                    height: 120,
                    width: 120,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Image.network(
                      arrImgContent[index]['img'].toString(),
                      fit: BoxFit.cover,
                    ),
                  );
                },
                itemCount: arrImgContent.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
