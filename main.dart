import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Text',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text(
          "Animated Text",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // first animation
            SizedBox(
              height: 20.0,
            ),
            Container(
              color: Colors.yellow,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 20.0,
                    height: 140.0,
                  ),
                  Text(
                    'WEB',
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.indigo[900],
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Horizon',
                    ),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        RotateAnimatedText(
                          ' AWESOME',
                          textStyle: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        RotateAnimatedText(
                          ' FUN',
                          textStyle: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        RotateAnimatedText(
                          ' Hi',
                          textStyle: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ],
                      isRepeatingAnimation: true,
                      totalRepeatCount: 10,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 40.0,
            ),

            // Second Animation
            AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                TypewriterAnimatedText(
                  'WEB FUN',
                  textStyle: TextStyle(
                    fontSize: 50,
                    color: Colors.indigo[900],
                  ),
                  speed: Duration(milliseconds: 90),
                ),
              ],
            ),

            SizedBox(
              height: 60.0,
            ),
            // third animation

            AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                WavyAnimatedText(
                  'WEB FUN',
                  textStyle: TextStyle(
                    fontSize: 50,
                    color: Colors.indigo[900],
                  ),
                ),
              ],
              isRepeatingAnimation: true,
              onTap: () {
                print("Tap Event");
              },
            ),

            SizedBox(
              height: 40.0,
            ),
            // fourth animation

            TextLiquidFill(
              text: 'WEBFUN',
              waveColor: Colors.blueAccent,
              textStyle: TextStyle(
                fontSize: 80.0,
                fontWeight: FontWeight.bold,
              ),
              boxHeight: 300.0,
            ),
            SizedBox(
              height: 60.0,
            ),

            // fifth animation

            SizedBox(
              height: 40.0,
            ),
            AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                FadeAnimatedText(
                  'do IT!',
                  textStyle: TextStyle(
                    fontSize: 40,
                    color: Colors.indigo[900],
                  ),
                ),
                FadeAnimatedText(
                  'do it RIGHT!!',
                  textStyle: TextStyle(
                    fontSize: 40,
                    color: Colors.indigo[900],
                  ),
                ),
                FadeAnimatedText(
                  'do it RIGHT NOW!!!',
                  textStyle: TextStyle(
                    fontSize: 40,
                    color: Colors.indigo[900],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}
