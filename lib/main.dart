import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> topicString = [
    'Introduction to Flutter',
    'Flutter Basics & layout',
    'Flutter & Riverpod with REST APIs',
    'Riverpod with Firebase',
    'Flutter Riverpod & REST APIs',
    'Flutter with Firebase Database storage',
    'Riverpod advance Concepts',
  ];

  final List<MentorsModel> mentorList = [
    MentorsModel(
      name: 'Simon',
      imageUrl:
          'https://media.licdn.com/dms/image/v2/C5603AQFjURwFQpVYkQ/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1603974253707?e=1732752000&v=beta&t=eQY13tIeS73tbsB34tZv_O4KyUjxPNdF7qBHlQJJQfY',
    ),
    MentorsModel(
      name: 'Nishtha',
      imageUrl:
          'https://media.licdn.com/dms/image/v2/C4E03AQFVHX72-we3pQ/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1615113028990?e=1732752000&v=beta&t=Lg-KQnqOgalNrXMATO56OBWbsf1igl78eNUnxHe3duM',
    ),
    MentorsModel(
      name: 'Yasin',
      imageUrl:
          'https://media.licdn.com/dms/image/v2/D5603AQFuZZNVZl2kJQ/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1722860102869?e=1732752000&v=beta&t=iEcXoRcV1MmpIYfyz0Y9x-HU0uyma6YHbRYM8ZQcErM',
    ),
    MentorsModel(
      name: 'Shri',
      imageUrl:
          'https://media.licdn.com/dms/image/v2/D4D03AQGo7mnjUrSwMw/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1712231240350?e=1732752000&v=beta&t=6IYomY214ZfWBGx6V9cMwA9XL9__7ZSfrgCKXCwtGPc',
    ),
    MentorsModel(
      name: 'Franklin',
      imageUrl:
          'https://media.licdn.com/dms/image/v2/D4E03AQE2e3Qv0fPsGA/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1718288859953?e=1732752000&v=beta&t=hNAdwQ4Rr8a83Bg-ZEGthEilSBBLwYxiSQGBvub6oDA',
    ),
    MentorsModel(
      name: 'Renuka',
      imageUrl:
          'https://media.licdn.com/dms/image/v2/D4E03AQE-AAkCGg-suw/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1683952312645?e=1732752000&v=beta&t=xik4S72ZHxtve6Fms2p-5VLQtonXlG_eESbel4-_L8U',
    ),
    MentorsModel(
      name: 'Sumith',
      imageUrl:
          'https://media.licdn.com/dms/image/v2/C4E03AQGOKh8OLSA2ag/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1517675531851?e=1732752000&v=beta&t=uxpaIdhMOREFIpE9oj2-GvlS7dE-xAzq0ZV-HMy1kKA',
    ),
    MentorsModel(
      name: 'Anthony',
      imageUrl:
          'https://media.licdn.com/dms/image/v2/D4D03AQFFHXYKrUlQQQ/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1719328545064?e=1732752000&v=beta&t=UCU9msRNlJLAfbLoRRwQlhYsJKb2HGIdq1-v_Jh907A',
    ),
    MentorsModel(
      name: 'Simon',
      imageUrl:
          'https://media.licdn.com/dms/image/v2/C5603AQFjURwFQpVYkQ/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1603974253707?e=1732752000&v=beta&t=eQY13tIeS73tbsB34tZv_O4KyUjxPNdF7qBHlQJJQfY',
    ),
  ];

  bool _isListVisible = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Flutter DevCamp',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Welcome to Flutter DevCamp',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.network(
              'https://media.licdn.com/dms/image/v2/D4D22AQEXxZ4mweAotg/feedshare-shrink_2048_1536/feedshare-shrink_2048_1536/0/1726682881638?e=1730332800&v=beta&t=l9xZs-RALhBrVLA81L4SqI3R0y-IEJJW8Ox8EC5aKdk',
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ))),
              onPressed: () {
                setState(() {
                  _isListVisible = !_isListVisible;
                });
                log('Clicked', name: 'HOME');
              },
              child: Text(
                _isListVisible?'Hide Mentors':'Show Mentors',
                style: const TextStyle(color: Colors.white),
              ),
            ),
            Visibility(
              visible: _isListVisible,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: topicString.length,
                itemBuilder: (context, index) => Text(
                  '${index + 1}. ${topicString[index]}',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Mentors List',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 130,
              child: ListView.builder(
                  itemCount: mentorList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final mentorItem = mentorList[index];
                    return Stack(
                      children: [
                        Card(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                    mentorItem.imageUrl,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  mentorItem.name,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: SizedBox(
                          height:20,
                            width:20,
                            child: Image.asset(
                              'assets/images/flutter_icon_2.png',
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class MentorsModel {
  final String name;
  final String imageUrl;

  MentorsModel({required this.name, required this.imageUrl});
}
