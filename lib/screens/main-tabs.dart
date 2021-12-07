import 'package:flutter/material.dart';
import 'package:ovesdu/app/icons.dart';

class MainTabs extends StatefulWidget {
  @override
  _MainTabsState createState() => _MainTabsState();
}

class _MainTabsState extends State<MainTabs> {
  Widget _buildPostInfo(
      String userId, String userName, String passedTime, double contextSize) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: contextSize * 0.05),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: contextSize * 0.1),
                        child: Text(
                          userName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: contextSize * 0.04),
                        ),
                      ),
                      Positioned(
                        right: contextSize * 0.02,
                        child: Row(
                          children: <Widget>[
                            Text(passedTime,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: contextSize * 0.04)),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: contextSize * 0.015),
                              child: Icon(Icons.toc, color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(userId,
                    style: TextStyle(
                        color: Colors.grey, fontSize: contextSize * 0.04),
                    overflow: TextOverflow.ellipsis),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPostContent(
      String postText, bool hasImage, String imageUrl, double contextSize) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(contextSize * 0.01),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                postText,
                style: TextStyle(fontSize: contextSize * 0.038),
              ),
            ),
          ),
          hasImage
              ? Container(
                  width: double.infinity,
                  height: contextSize * 0.5,
                  margin: EdgeInsets.only(top: contextSize * 0.01),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(contextSize * 0.04),
                      border: Border.all(color: Colors.grey[200]),
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.center,
                        image: NetworkImage(imageUrl),
                      )),
                )
              : Container(),
        ],
      ),
    );
  }

  Widget _buildAvatar(String userAvatar, bool userStatus, double contextSize) {
    return Padding(
      padding: EdgeInsets.only(top: contextSize * 0.04),
      child: Stack(
        children: [
          CircleAvatar(
            radius: contextSize * 0.08,
            backgroundImage: NetworkImage(userAvatar),
          ),
          if (userStatus)
            Positioned(
              bottom: contextSize * 0.005,
              right: contextSize * 0.005,
              child: Container(
                width: contextSize * 0.035,
                height: contextSize * 0.035,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.white,
                    width: contextSize * 0.03,
                  ),
                  borderRadius: BorderRadius.circular(contextSize),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _likedStatus(
      String liked, double contextSize, int likedCount, int dislikedCount) {
    if (liked == "liked") {
      return Row(
        children: [
          Text(
            likedCount.toString(),
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .merge(TextStyle(color: Colors.grey)),
          ),
          SizedBox(width: contextSize * 0.03),
          Icon(Icons.thumb_up, size: contextSize * 0.06, color: Colors.green),
          SizedBox(width: contextSize * 0.03),
          Icon(Icons.thumb_down, size: contextSize * 0.06, color: Colors.grey),
          SizedBox(width: contextSize * 0.03),
          Text(
            dislikedCount.toString(),
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .merge(TextStyle(color: Colors.grey)),
          ),
        ],
      );
    } else if (liked == "disliked") {
      return Row(
        children: [
          Text(
            likedCount.toString(),
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .merge(TextStyle(color: Colors.grey)),
          ),
          SizedBox(width: contextSize * 0.03),
          Icon(Icons.thumb_up, size: contextSize * 0.06, color: Colors.grey),
          SizedBox(width: contextSize * 0.03),
          Icon(Icons.thumb_down, size: contextSize * 0.06, color: Colors.red),
          SizedBox(width: contextSize * 0.03),
          Text(
            dislikedCount.toString(),
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .merge(TextStyle(color: Colors.grey)),
          ),
        ],
      );
    } else {
      return Row(children: [
        Text(
          likedCount.toString(),
          style: Theme.of(context)
              .textTheme
              .bodyText1
              .merge(TextStyle(color: Colors.grey)),
        ),
        SizedBox(width: contextSize * 0.03),
        Icon(Icons.thumb_up,
            size: MediaQuery.of(context).size.width * 0.06, color: Colors.grey),
        SizedBox(width: MediaQuery.of(context).size.width * 0.03),
        Icon(Icons.thumb_down,
            size: MediaQuery.of(context).size.width * 0.06, color: Colors.grey),
        SizedBox(width: contextSize * 0.03),
        Text(
          dislikedCount.toString(),
          style: Theme.of(context)
              .textTheme
              .bodyText1
              .merge(TextStyle(color: Colors.grey)),
        )
      ]);
    }
  }

  Widget _buildPostActions(
          int commentCount,
          String isLiked,
          bool isCommented,
          double contextSize,
          int likedCount,
          int dislikedCount,
          bool isFavoriteUse,
          bool isFavorit,
          int favoritCount) =>
      Padding(
        padding: EdgeInsets.only(top: contextSize * 0.03),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Row(
                children: <Widget>[
                  Icon(Icons.chat_bubble_outline,
                      size: contextSize * 0.06,
                      color: isCommented ? Colors.blue : Colors.grey),
                  SizedBox(width: contextSize * 0.01),
                  Text(commentCount.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .merge(TextStyle(color: Colors.grey))),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Row(
                children: <Widget>[
                  _likedStatus(isLiked, contextSize, likedCount, dislikedCount),
                ],
              ),
            ),
            if (isFavoriteUse)
              Expanded(
                flex: 4,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.favorite,
                        size: contextSize * 0.06,
                        color: isFavorit ? Colors.red : Colors.grey),
                    SizedBox(width: contextSize * 0.01),
                    Text(favoritCount.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .merge(TextStyle(color: Colors.grey))),
                  ],
                ),
              ),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Icon(Icons.trending_up,
                      size: MediaQuery.of(context).size.width * 0.06,
                      color: Colors.grey),
                ],
              ),
            ),
          ],
        ),
      );

  Widget _buildPost(
      String userId,
      String userName,
      String userAvatar,
      String postText,
      bool hasImage,
      String imageUrl,
      bool userStatus,
      String passedTime,
      int commentCount,
      String isLiked,
      bool isCommented,
      int likedCount,
      int dislikedCount,
      bool isFavoritUse,
      bool isFavorit,
      int favoritCount) {
    double _contextSize = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          child: Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    left: _contextSize * 0.04,
                    right: _contextSize * 0.02,
                    bottom: _contextSize * 0.04),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _buildAvatar(userAvatar, userStatus, _contextSize),
                        SizedBox(width: _contextSize * 0.02),
                        _buildPostInfo(
                            userId, userName, passedTime, _contextSize),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(top: _contextSize * 0.25)),
                        _buildPostContent(
                            postText, hasImage, imageUrl, _contextSize)
                      ],
                    ),
                    _buildPostActions(
                        commentCount,
                        isLiked,
                        isCommented,
                        _contextSize,
                        likedCount,
                        dislikedCount,
                        isFavoritUse,
                        isFavorit,
                        favoritCount)
                  ],
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(_contextSize * 0.02),
              border: Border.all(color: Colors.grey[200])),
        ),
        SizedBox(height: _contextSize * 0.0025),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    String _currentPageName = "Главная";
    String _currentUserAvatar =
        "https://animalreader.ru/wp-content/uploads/2014/10/sus-scrofa-e1413736415314-1024x841.jpg";
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.blue),
        elevation: MediaQuery.of(context).size.width * 0.02,
        leading: Container(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.02),
          child: CircleAvatar(
            backgroundImage: NetworkImage(_currentUserAvatar),
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          _currentPageName,
          style: TextStyle(
              color: Colors.grey,
              fontSize: MediaQuery.of(context).size.width * 0.05),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(AppIcons.expand_more,
                  size: MediaQuery.of(context).size.width * 0.08),
              onPressed: () {}),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.01)),
          Column(
            children: [
              _buildPost(
                  "@arutyun", // userId
                  "Arutyun Gevorkyan", // userName
                  "https://animalreader.ru/wp-content/uploads/2014/10/sus-scrofa-e1413736415314-1024x841.jpg", // userAvatar
                  "Привет, я кабанчик. Не спрашивайте меня, почему кабанчик. Я просто фотогеничный кабанчик.", // message
                  true, // isImage
                  "https://s2.best-wallpaper.net/wallpaper/2560x1600/1906/Wildlife-little-boar-look-at-you_2560x1600.jpg", // imageUrl
                  true, // userStatus
                  "- 1h", // passedTime
                  12, // commentCount
                  "ignore", // isLiked
                  false, // isCommented
                  8, // likedCount
                  2, // dislikedCount
                  false, //isFavoriteUse
                  false, // isFavorite
                  5), //favoriteCount
              _buildPost(
                  "@davachan",
                  "Azgi Davachan",
                  "https://forpostsevastopol.ru/wp-content/uploads/2017/08/k2_items_src_f5b204d90e22f1d48c0c0edecb953a3f.jpg",
                  "Привет, я тоже фотогеничный кабанчик только немного грязный.",
                  true,
                  "https://i.pinimg.com/originals/48/3a/22/483a22a794c19ce0618a00114df43499.jpg",
                  false,
                  "- 2h",
                  10,
                  "disliked",
                  true,
                  1,
                  6,
                  true,
                  false,
                  9),
              _buildPost(
                  "@heros",
                  "Azgi Heros",
                  "https://st3.depositphotos.com/4744673/14702/i/1600/depositphotos_147020277-stock-photo-businessman-with-a-bag-on.jpg",
                  "Привет, а я не очень фотогеничен, поэтому здесь нет моего фото",
                  false,
                  "",
                  false,
                  "- 2h",
                  5,
                  "liked",
                  false,
                  12,
                  3,
                  true,
                  false,
                  15),
              _buildPost(
                  "@mashina",
                  "Masha Mashina",
                  "https://rgo-etnomir.ru/images/news/901/3.jpg",
                  "Пока...",
                  true,
                  "https://rgo-etnomir.ru/images/news/901/3.jpg",
                  true,
                  "- 3h",
                  8,
                  "liked",
                  false,
                  8,
                  2,
                  true,
                  true,
                  11)
            ],
          ),
          Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.width * 0.2))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }
}
