import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Untuk menghilangkan banner debug

      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.person),
                  text: 'Profil',
                ),
                Tab(
                  icon: Icon(Icons.music_video),
                  text: 'Music',
                ),
                Tab(
                  icon: Icon(Icons.camera_alt),
                  text: 'Camera',
                ),
                Tab(icon: Icon(Icons.grade), text: 'Grade'),
                Tab(
                  icon: Icon(Icons.email),
                  text: 'Email',
                ),
              ],
            ),
            title: const Text('FTI Turorial'),
            backgroundColor: const Color.fromARGB(255, 231, 202, 171),
          ),
          body: const TabBarView(
            children: [
              Icon(
                Icons.person,
                size: 85,
                color: Colors.black,
              ),
              Icon(
                Icons.music_video,
                size: 85,
                color: Color.fromARGB(255, 174, 201, 129),
              ),
              Icon(
                Icons.camera_alt,
                size: 85,
                color: Color.fromARGB(255, 156, 189, 216),
              ),
              Icon(
                Icons.grade,
                size: 85,
                color: Colors.yellow,
              ),
              Icon(
                Icons.email,
                size: 85,
                color: Color.fromARGB(255, 217, 39, 39),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
