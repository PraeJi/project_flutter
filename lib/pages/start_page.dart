import 'package:flutter/material.dart';
import 'package:project_flutter/pages/home_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/bg1.png'),
                  fit: BoxFit.cover,
                )),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                const Center(
                  child: Text(
                    'PLANT TIPS',
                    style: TextStyle(
                      fontSize: 80.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              Center(
                child: ElevatedButton(
                  child: const Text(
                    'START',
                    style: TextStyle(fontSize: 30.0),
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => const HomePage()));
                    });
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
