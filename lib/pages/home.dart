import 'package:flutter/material.dart';
import 'package:whatsapp/pages/message_screen.dart';

class HommePage extends StatefulWidget {
  const HommePage({super.key});

  @override
  State<HommePage> createState() => _HommePageState();
}

class _HommePageState extends State<HommePage> {
  List<Map> chatlist = [
    {
      'name': 'Imran Immi',
      'image':
          'https://scontent.fdac24-4.fna.fbcdn.net/v/t1.6435-9/52089404_1469923853141928_2225244159743098880_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=5f2048&_nc_ohc=4hhndxKsWAAAb5LSafF&_nc_ht=scontent.fdac24-4.fna&oh=00_AfBfVadw9NeOwG0-hsWFlQV8y2Xvjz7QuMPKBFBmCJcBTQ&oe=6650AFC5',
      'Last_msg': 'Hi, How are you doing?',
      'time': '6:30 PM',
      'count': '1',
    },
    {
      'name': 'Jenifer Lorence',
      'image':
          'https://miro.medium.com/v2/resize:fit:495/0*xFuo_UNWchLZ8bqS.jpeg',
      'Last_msg': 'Could you check your mail please?',
      'time': '5:30 PM',
      'count': '6',
    },
    {
      'name': 'Ellyse Perry',
      'image':
          'https://c.ndtvimg.com/2020-05/v3ko18go_ellyse-perry-instagram_625x300_10_May_20.jpg',
      'Last_msg': 'Thanks for your invitation.',
      'time': '4:35 AM',
      'count': '4',
    },
    {
      'name': 'Mahesh Babu',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb9ZbiIHjke4OxYs5RsM_GZXfpdr66Fzk_yK3ql2wSVQ&s',
      'Last_msg': 'Lets make a film together please.',
      'time': '10:30 PM',
      'count': '2',
    },
    {
      'name': 'Hrithik roshan',
      'image':
          'https://m.media-amazon.com/images/M/MV5BM2U1MTY3ODktYjlmOC00NGRjLWIxZjEtNWExY2VjOGZiYmNkXkEyXkFqcGdeQXVyMTE4NTEyNzA@._V1_.jpg',
      'Last_msg': 'Hey buddy?, whats up?',
      'time': '6:30 PM',
      'count': '1',
    },
    {
      'name': 'kristen stewart',
      'image':
          'https://media.newyorker.com/photos/590969632179605b11ad6912/master/pass/Brody-Kristen-Stewart-and-the-Movie-Actors-Dilemma.jpg',
      'Last_msg': 'Its not over honey?',
      'time': '2:30 AM',
      'count': '10',
    },
    {
      'name': 'Ramcharan Teja',
      'image':
          'https://imgix.ranker.com/list_img_v2/16236/496236/original/the-top-south-indian-actors-of-today-u1?fit=crop&fm=pjpg&q=80&dpr=2&w=1200&h=720',
      'Last_msg': 'Hi Dear, How are you doing?',
      'time': '3:30 PM',
      'count': '1',
    },
    {
      'name': 'katherine langford',
      'image':
          'https://hips.hearstapps.com/digitalspyuk.cdnds.net/18/43/1540625563-katherine-langford.jpg?crop=1.00xw:0.736xh;0,0.139xh&resize=1200:*',
      'Last_msg': 'Hi, How are you doing?',
      'time': '6:30 PM',
      'count': '3',
    },
    {
      'name': 'Chris Hemsworth',
      'image':
          'https://cdn.britannica.com/92/215392-050-96A4BC1D/Australian-actor-Chris-Hemsworth-2019.jpg',
      'Last_msg': 'Hi Immi, How are you doing?',
      'time': '6:45 PM',
      'count': '0',
    },
    {
      'name': 'Zayn Mailik',
      'image':
          'https://static01.nyt.com/images/2023/07/12/multimedia/12xp-zayn-qvlz/12xp-zayn-qvlz-mediumSquareAt3X.jpg',
      'Last_msg': 'Hi, Lets sing togethere',
      'time': '8:30 PM',
      'count': '3',
    },
    {
      'name': "Ileana D'cruz",
      'image':
          'https://media.newstracklive.com/uploads/entertainment-news/bollywood-news/Nov/02/big_thumb/ileana-dcruz--1_5dbd0cde66fc4.png',
      'Last_msg': 'Hi Honey, How are you doing?',
      'time': '6:30 PM',
      'count': '2',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff075E54),
          title: const Text(
            'WhatsApp',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          actions: const [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            SizedBox(
              width: 8,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.white,
            )
          ],
          bottom: const TabBar(
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  icon: Icon(Icons.camera_alt_rounded),
                ),
                Tab(
                  text: 'Chats',
                ),
                Tab(
                  text: 'Status',
                ),
                Tab(
                  text: 'Calls',
                ),
              ]),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff075E54),
          shape: const CircleBorder(),
          onPressed: () {},
          child: const Icon(
            Icons.message,
            color: Colors.white,
          ),
        ),
        body: TabBarView(children: [ 
          
          const Tab(
            text: 'First',
          ),
          ListView.builder(
            itemCount: chatlist.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (contex) => MessageScreen(
                            name: chatlist[index]['name'],
                            image: chatlist[index]['image'],
                          )));
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(chatlist[index]['image']),
                ),
                title: Text(
                  chatlist[index]["name"],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  chatlist[index]['Last_msg'],
                  style: const TextStyle(color: Colors.grey),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Column(
                  children: [
                    Text(
                      chatlist[index]['time'],
                      style: TextStyle(
                          color: chatlist[index]['time'] == 0
                              ? Colors.black
                              : Colors.green),
                    ),
                    chatlist[index]['count'] == 0
                        ? const SizedBox()
                        : Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                chatlist[index]['count'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          )
                  ],
                ),
              );
            },
          ),
          const Tab(
            text: 'First',
          ),
          const Tab(
            text: 'First',
          )
        ]),
      ),
    );
  }
}
