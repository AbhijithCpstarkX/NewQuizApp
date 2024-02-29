import 'package:flutter/material.dart';
import 'package:quizapp/newpage.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              items[count].qus,
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
              ),
            ),
            SizedBox(
              height: 200,
            ),
            TextButton(
              style: TextButton.styleFrom(
                  fixedSize: Size(200, 50),
                  backgroundColor: Colors.green,
                  textStyle: const TextStyle(fontSize: 20)),
              onPressed: () {
                setState(() {

                  compare(true);
                  nextQus();

                });
              },
              child: const Text('TRUE', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              style: TextButton.styleFrom(
                  fixedSize: Size(200, 50),
                  backgroundColor: Colors.red,
                  textStyle: const TextStyle(fontSize: 20)),
              onPressed: () {
                setState(() {

                  compare(false);
                  nextQus();

                });
              },
              child: const Text('FALSE', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(
              height: 30,
            ),
            Text(results,style: TextStyle(color: Colors.white,fontSize: 20),)
          ],
        ),
      ),
    );
  }

  List items = [
    Quiz(qus: 'Sharks are mammals.', ans: false),
    Quiz(
        qus: 'Sea otters have a favorite rock they use to break open food.',
        ans: true),
    Quiz(
        qus: 'The blue whale is the biggest animal to have ever lived.',
        ans: true),
    Quiz(
        qus: 'The hummingbird egg is the worlds smallest bird egg.', ans: true),
    Quiz(
        qus: 'Pigs roll in the mud because they dont like being clean.',
        ans: false),
    Quiz(qus: 'Bats are blind.', ans: false),
    Quiz(qus: 'A dog sweats by panting its tongue.', ans: false),
    Quiz(qus: 'An ant can lift 1,000 times its body weight.', ans: false),
    Quiz(
        qus: 'The largest living frog is the Goliath frog of West Africa.',
        ans: true),
    Quiz(qus: 'It takes a sloth two weeks to digest a meal.', ans: true),
  ];
  int count = 0;
  String results="";
  void nextQus() {
    if (count < items.length - 1) {
      count++;
    }
  }

  void compare(bool answer) {
    if (answer == items[count].ans) {
      results="Correct";
    } else {
      results="Wrong";
    }
  }
}
