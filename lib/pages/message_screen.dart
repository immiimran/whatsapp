import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  final String name;
  final String image;
  const MessageScreen({super.key, required this.name, required this.image});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  List<Map> chatdetails = [
    {'msg': 'Hello', 'is_me': true, 'time': '4:33 PM'},
    {'msg': 'Hi', 'is_me': false, 'time': '4:34 PM'},
    {'msg': 'How are you?', 'is_me': true, 'time': '4:35 PM'},
    {'msg': 'I am fine', 'is_me': false, 'time': '4:36 PM'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff075E54),
        title: Expanded(
            child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(widget.image),
          ),
          title: Text(
            widget.name,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
          subtitle: const Text(
            'Last seen 07:00 PM',
            style: TextStyle(color: Colors.white54),
          ),
          trailing: const Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        )),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(15),
              itemCount: chatdetails.length,
              itemBuilder: (context, index) {
                final data = chatdetails[index];
                return Column(
                  crossAxisAlignment: data['is_me'] == true
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          // height: 40,
                          // width: 120,
                          constraints: const BoxConstraints(maxWidth: 180),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              color: data['is_me'] == false
                                  ? Colors.grey
                                  : const Color(0xff075E54),
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Center(
                            child: Text(
                              data['msg'],
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Text(data['time']),
                      ],
                    )
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Expanded(
                  child: Container(
                padding: const EdgeInsets.all(8),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter your Message.',
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.emoji_emotions),
                        suffixIcon: Icon(Icons.link)),
                  ),
                ),
              )),
              const SizedBox(
                width: 6,
              ),
              const CircleAvatar(
                backgroundColor: Color(0xff075E54),
                child: Icon(
                  Icons.send,
                  color: Colors.white,
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
