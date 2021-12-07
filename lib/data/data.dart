import 'package:ovesdu/models/models.dart';

final User currentUser = User(
  name: 'Arutyun Gevorkyan',
  imageUrl:
      'https://animalreader.ru/wp-content/uploads/2014/10/sus-scrofa-e1413736415314-1024x841.jpg',
);

final List<User> onlineUsers = [
  User(
    name: 'Azgi Heros',
    imageUrl:
        'https://www.puzzle-jigsaw.net/jigsaw/protruding-avatar-ears-2009.jpg',
  ),
  User(
    name: 'Azgi Davachan',
    imageUrl:
        'https://i01.fotocdn.net/s121/9ace8ba1bcf33b7e/public_pin_l/2766736203.jpg',
  ),
  User(
    name: 'Serzh Sarkisyan',
    imageUrl:
        'https://i.pinimg.com/originals/48/3a/22/483a22a794c19ce0618a00114df43499.jpg',
  ),
  User(
    name: 'Nikol Pashinyan',
    imageUrl: 'https://rgo-etnomir.ru/images/news/901/3.jpg',
  ),
  User(
    name: 'Просто Хатико',
    imageUrl: 'https://rgo-etnomir.ru/images/news/901/3.jpg',
  ),
  User(
    name: 'Nara Du Sus',
    imageUrl: 'https://rgo-etnomir.ru/images/news/901/3.jpg',
  ),
  User(
    name: 'Nikol Pashinyan',
    imageUrl: 'https://rgo-etnomir.ru/images/news/901/3.jpg',
  ),
  User(
      name: 'Eli Axchik',
      imageUrl: 'https://rgo-etnomir.ru/images/news/901/3.jpg'),
  User(
    name: 'James Lathrop',
    imageUrl: 'https://rgo-etnomir.ru/images/news/901/3.jpg',
  ),
  User(
    name: 'Inchvor Aghchik',
    imageUrl: 'https://rgo-etnomir.ru/images/news/901/3.jpg',
  ),
  User(
    name: 'David Brooks',
    imageUrl: 'https://rgo-etnomir.ru/images/news/901/3.jpg',
  ),
  User(
    name: 'Jane Doe',
    imageUrl: 'https://rgo-etnomir.ru/images/news/901/3.jpg',
  ),
  User(
    name: 'Matthew Hinkle',
    imageUrl: 'https://rgo-etnomir.ru/images/news/901/3.jpg',
  ),
  User(
    name: 'Mamai Enkeruhu Txa',
    imageUrl:
        'https://www.puzzle-jigsaw.net/jigsaw/protruding-avatar-ears-2009.jpg',
  ),
  User(
    name: 'Ed Morris',
    imageUrl: 'https://rgo-etnomir.ru/images/news/901/3.jpg',
  ),
  User(
    name: 'Carolyn Duncan',
    imageUrl: 'https://rgo-etnomir.ru/images/news/901/3.jpg',
  ),
  User(
    name: 'Paul Pinnock',
    imageUrl: 'https://rgo-etnomir.ru/images/news/901/3.jpg',
  ),
  User(
      name: 'Elizabeth Wong',
      imageUrl: 'https://rgo-etnomir.ru/images/news/901/3.jpg'),
  User(
    name: 'James Lathrop',
    imageUrl: 'https://rgo-etnomir.ru/images/news/901/3.jpg',
  ),
  User(
    name: 'Jessie Samson',
    imageUrl: 'https://rgo-etnomir.ru/images/news/901/3.jpg',
  ),
];

final List<Story> stories = [
  Story(
    user: onlineUsers[13],
    imageUrl:
        'https://i01.fotocdn.net/s121/9ace8ba1bcf33b7e/public_pin_l/2766736203.jpg',
  ),
  Story(
    user: onlineUsers[6],
    imageUrl: 'https://rgo-etnomir.ru/images/news/901/3.jpg',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[2],
    imageUrl:
        'https://www.puzzle-jigsaw.net/jigsaw/protruding-avatar-ears-2009.jpg',
  ),
  Story(
    user: onlineUsers[9],
    imageUrl:
        'https://animalreader.ru/wp-content/uploads/2014/10/sus-scrofa-e1413736415314-1024x841.jpg',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[7],
    imageUrl:
        'https://i.pinimg.com/originals/48/3a/22/483a22a794c19ce0618a00114df43499.jpg',
  ),
  Story(
    user: onlineUsers[2],
    imageUrl:
        'https://animalreader.ru/wp-content/uploads/2014/10/sus-scrofa-e1413736415314-1024x841.jpg',
  ),
  Story(
    user: onlineUsers[6],
    imageUrl:
        'https://www.puzzle-jigsaw.net/jigsaw/protruding-avatar-ears-2009.jpg',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[3],
    imageUrl:
        'https://i.pinimg.com/originals/48/3a/22/483a22a794c19ce0618a00114df43499.jpg',
  ),
  Story(
    user: onlineUsers[9],
    imageUrl:
        'https://animalreader.ru/wp-content/uploads/2014/10/sus-scrofa-e1413736415314-1024x841.jpg',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[7],
    imageUrl:
        'https://www.puzzle-jigsaw.net/jigsaw/protruding-avatar-ears-2009.jpg',
  ),
];

final List<Post> posts = [
  Post(
    user: currentUser,
    caption: 'Один пёсик хорошо, но много, ещё лучше...',
    timeAgo: '8 секунд назад',
    imageUrl: 'https://images.unsplash.com/photo-1525253086316-d0c936c814f8',
    likes: 1202,
    comments: 184,
    shares: 96,
  ),
  Post(
    user: onlineUsers[5],
    caption:
        'Здесь должна быть история "Нара, ду сус", в исполнении Доди Гаго.',
    timeAgo: '12 минут назад',
    imageUrl: null,
    likes: 683,
    comments: 79,
    shares: 18,
  ),
  Post(
    user: onlineUsers[4],
    caption: 'Хороший мальчик',
    timeAgo: '45 минут назад',
    imageUrl:
        'https://images.unsplash.com/photo-1575535468632-345892291673?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    likes: 894,
    comments: 201,
    shares: 27,
  ),
  Post(
    user: onlineUsers[3],
    caption: 'Это не Армения, но тоже сгодится 🏔',
    timeAgo: 'час назад',
    imageUrl:
        'https://images.unsplash.com/photo-1573331519317-30b24326bb9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    likes: 722,
    comments: 183,
    shares: 42,
  ),
  Post(
    user: onlineUsers[0],
    caption: 'Де есим эээээ...\nНара, ду сус',
    timeAgo: 'час назад',
    imageUrl: null,
    likes: 482,
    comments: 37,
    shares: 9,
  ),
  Post(
    user: onlineUsers[9],
    caption: 'Байц эс мер Ереванъ инч сируне...',
    timeAgo: 'два часа назад',
    imageUrl:
        'https://images.unsplash.com/reserve/OlxPGKgRUaX0E1hg3b3X_Dumbo.JPG?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    likes: 1523,
    shares: 129,
    comments: 301,
  )
];
