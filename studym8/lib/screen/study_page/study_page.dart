import 'package:flutter/material.dart';

class StudyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 80),
                child: Text('Collaborative Study',
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                width: 382,
                height: 382,
              ),
              Text(
                'Study in groups, Share ideas',
                style: TextStyle(fontSize: 24, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 34.0),
                child: Text(
                  '3 of 3',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 167,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Skip',
                          style: TextStyle(
                              fontSize: 24, color: Colors.deepPurple)),
                    ),
                  ),
                  SizedBox(
                    width: 167,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Next',
                          style: TextStyle(
                              fontSize: 24, color: Colors.deepPurple)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
