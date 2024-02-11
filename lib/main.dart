import 'package:flutter/material.dart';

void main() {
  runApp(
      const MyApp()
  );
}

class MyApp  extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.green.shade800,Colors.green.shade100]
              )
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/profile.png'),
                ),
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [Colors.pink, Colors.blue],
                  ).createShader(bounds),
                  child: const Text(
                    "Jnas",
                    style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 45.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [Colors.pink, Colors.blue],
                  ).createShader(bounds),
                  child: const Text(
                    "IT Manager & Programmer",
                    style: TextStyle(
                        fontFamily: 'SourceSans3',
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.9),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: ListTile(
                      leading: const Icon(
                          Icons.phone,
                          color: Colors.blue,
                          size: 30),
                      title: Text(
                        "+30 999 99 99 999",
                        style: TextStyle(
                            fontFamily: 'SourceSans3',
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade800,
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        size: 25.0,
                        color: Colors.pink.shade800,
                      ),
                      title: Text(
                        "mymail@server.com",
                        style: TextStyle(
                            fontSize: 25.0,
                            fontFamily: 'SourceSans3',
                            fontWeight: FontWeight.bold,
                            color: Colors.pink.shade800,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



