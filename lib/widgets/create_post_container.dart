import 'package:flutter/material.dart';
import 'package:ovesdu/models/models.dart';
import 'package:ovesdu/widgets/widgets.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({
    Key key,
    @required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              const SizedBox(width: 8),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      // collapsed удаляет черную линию строки ввода
                      hintText: 'Что у вас нового?'), // What's on your mind?
                ),
              )
            ],
          ),
          const Divider(
            // разделитель
            height: 10,
            thickness: 0.5,
          ),
          // Container(
          //   height: 40,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       FlatButton.icon(
          //         // рекомендуется использовать TextButton
          //         onPressed: () => print('Live'),
          //         icon: const Icon(
          //           Icons.videocam,
          //           color: Colors.red,
          //         ),
          //         label: Text('Видео'),
          //       ),
          //       const VerticalDivider(width: 8),
          //       FlatButton.icon(
          //         // рекомендуется использовать TextButton
          //         onPressed: () => print('Photo'),
          //         icon: const Icon(
          //           Icons.photo_library,
          //           color: Colors.green,
          //         ),
          //         label: Text('Фото'),
          //       ),
          //       const VerticalDivider(width: 8),
          //       FlatButton.icon(
          //         // рекомендуется использовать TextButton
          //         onPressed: () => print('Room'),
          //         icon: const Icon(
          //           Icons.video_call,
          //           color: Colors.purpleAccent,
          //         ),
          //         label: Text('Комнаты'),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
