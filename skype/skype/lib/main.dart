import 'package:flutter/material.dart';

/*
//////////////////////////////////////////
19k-1423 ali ahmed
19k-1415 muhammad owais
19k-0294 shahrayar ahmed
//////////////////////////////////////////
*/

void main() {
  runApp(Skype());
}

class Skype extends StatefulWidget {
  @override
  _Skype createState() => _Skype();
}

class _Skype extends State<Skype> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Chat'),
    Text('Call'),
    Text('Contacts'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 5, 196, 239),
              leading: IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2016/08/31/11/54/icon-1633249_960_720.png'),
                  ),
                  SizedBox(width: 10),
                ],
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            body: ListView(
              children: <Widget>[
                SkypeChat(
                    memberName: 'Ali Ahmed',
                    lastMessage: 'chat 1',
                    lastMessageTime: '15m ago',
                    profileImageUrl:
                        'https://ymw.edu.in/wp-content/uploads/2022/02/dummy-profile-01.png'),
                SkypeChat(
                    memberName: 'Shahriyar Ahmed',
                    lastMessage: 'chat 2',
                    lastMessageTime: '3h ago',
                    profileImageUrl:
                        'https://www.mecgale.com/wp-content/uploads/2017/08/dummy-profile.png'),
                SkypeChat(
                    memberName: 'Muhammad Owais',
                    lastMessage: 'chat 3',
                    lastMessageTime: '1d ago',
                    profileImageUrl:
                        'https://pbs.twimg.com/profile_images/685700874434314240/80T5j3HF_400x400.jpg'),
                SkypeChat(
                    memberName: 'Askari',
                    lastMessage: 'chat 4',
                    lastMessageTime: '50m ago',
                    profileImageUrl:
                        'https://thenounproject.com/api/private/icons/1559154/edit/?backgroundShape=SQUARE&backgroundShapeColor=%23000000&backgroundShapeOpacity=0&exportSize=752&flipX=false&flipY=false&foregroundColor=%23000000&foregroundOpacity=1&imageFormat=png&rotation=0&token=gAAAAABkIKDfcXL9ho-zS-4vJ_Voq1f4krWoaiytJcl9BfldeX-m4wVdv5I-3qMg944HtDjjROlIjda8QNEP8396cNxu84vhCw%3D%3D'),
                SkypeChat(
                    memberName: 'Wahaj',
                    lastMessage: 'chat 5',
                    lastMessageTime: '2d ago',
                    profileImageUrl:
                        'https://png.pngtree.com/png-clipart/20190611/original/pngtree-business-profile-png-image_2610535.jpg'),
                SkypeChat(
                    memberName: 'Ali shan',
                    lastMessage: 'chat 6',
                    lastMessageTime: '1h ago',
                    profileImageUrl:
                        'https://png.pngtree.com/png-clipart/20220404/original/pngtree-d-rendering-female-avatar-businesswoman-with-suit-and-tie-good-for-png-image_7503140.png'),
                SkypeChat(
                    memberName: 'Wasiq Hussain',
                    lastMessage: 'chat 7',
                    lastMessageTime: '6h ago',
                    profileImageUrl:
                        'https://png.pngtree.com/png-clipart/20220404/original/pngtree-d-rendering-female-avatar-businesswoman-with-suit-and-tie-good-for-png-image_7503140.png'),
                SkypeChat(
                    memberName: 'Maaz khan',
                    lastMessage: 'chat 8',
                    lastMessageTime: '45m ago',
                    profileImageUrl:
                        'https://png.pngtree.com/png-clipart/20220910/original/pngtree-male-profile-picture-icon-and-png-image-png-image_8525310.png'),
                SkypeChat(
                    memberName: 'Ebad Ali',
                    lastMessage: 'chat 9',
                    lastMessageTime: '20m ago',
                    profileImageUrl:
                        'https://png.pngtree.com/png-clipart/20190611/original/pngtree-business-profile-png-image_2610535.jpg'),
                // Add more tiles for each chat member
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.lightBlue,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat, color: Colors.white),
                  label: 'Chats',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.call, color: Colors.white),
                  label: 'Calls',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.contacts, color: Colors.white),
                  label: 'Contacts',
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}

class SkypeChat extends StatelessWidget {
  final String memberName;
  final String lastMessage;
  final String lastMessageTime;
  final String profileImageUrl;

  SkypeChat({
    required this.memberName,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.profileImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(profileImageUrl),
      ),
      title: Text(memberName),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              lastMessage,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          SizedBox(width: 8),
          Text(
            lastMessageTime,
            style: TextStyle(
              fontSize: 12,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ],
      ),
    );
  }
}
