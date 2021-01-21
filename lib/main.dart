import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(FirstApp());
}

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First flutter app",
      home: FirstImpression(),
    );
  }
}

class FirstImpression extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              LoopContainer(
                imageName: "1",
                title:"first"
              ),
              SizedBox(
                height: 10.0,
              ),
              LoopContainer(
                imageName: "2",
                title:"second"
              ),
              SizedBox(
                height: 10.0,
              ),
              LoopContainer(
                imageName: "3",
                title:"third"
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoopContainer extends StatelessWidget {
  String title;
  String imageName;
  LoopContainer({String title, String imageName}){
    this.title = title;
    this.imageName = imageName;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 300.0,
      height: 100.0,
      color: Colors.amber,
      child: Row(
        children: [
          Image.asset("assets/$imageName.png"),
          Text(
            "This is my \n$title flutter \n component",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

