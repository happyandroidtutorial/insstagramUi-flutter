import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/UiHelper.dart';

class FolowingScreen extends StatelessWidget {
  var _arrFollowingContent = [
    {
      'img':
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      'name': 'jonijo',
      'msg': 'jonijo followed you 5min ago'
    },
    {
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBQcRtWVDjSpn8k9DDCETUsh-LL3HVJGDMaQ&s',
      'name': 'Jimmy',
      'msg': 'Jimmy followed you 2h ago'
    },
    {
      'img':
          'https://png.pngtree.com/png-vector/20230928/ourmid/pngtree-young-indian-man-png-image_10149659.png',
      'name': 'Dany',
      'msg': 'Dany followed you 1d ago'
    },
    {
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBQcRtWVDjSpn8k9DDCETUsh-LL3HVJGDMaQ&s',
      'name': 'Jimmy',
      'msg': 'Jimmy followed you 2h ago'
    },
    {
      'img':
          'https://png.pngtree.com/png-vector/20230928/ourmid/pngtree-young-indian-man-png-image_10149659.png',
      'name': 'Dany',
      'msg': 'Dany followed you 1d ago'
    },
    {
      'img':
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      'name': 'jonijo',
      'msg': 'jonijo followed you 5min ago'
    },
    {
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBQcRtWVDjSpn8k9DDCETUsh-LL3HVJGDMaQ&s',
      'name': 'Jimmy',
      'msg': 'Jimmy followed you 2h ago'
    },
    {
      'img':
          'https://png.pngtree.com/png-vector/20230928/ourmid/pngtree-young-indian-man-png-image_10149659.png',
      'name': 'Dany',
      'msg': 'Dany followed you 1d ago'
    },
    {
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBQcRtWVDjSpn8k9DDCETUsh-LL3HVJGDMaQ&s',
      'name': 'Jimmy',
      'msg': 'Jimmy followed you 2h ago'
    },
    {
      'img':
          'https://png.pngtree.com/png-vector/20230928/ourmid/pngtree-young-indian-man-png-image_10149659.png',
      'name': 'Dany',
      'msg': 'Dany followed you 1d ago'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      _arrFollowingContent[index]['img'].toString()),
                ),
                title: Text(
                  _arrFollowingContent[index]['name'].toString(),
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  _arrFollowingContent[index]['msg'].toString(),
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
                trailing: UiHelper.CustomImg(imgUrl: 'Rectangle (1).png'),
              );
            },
            itemCount: _arrFollowingContent.length,
          ),
        )
      ],
    ));
  }
}
