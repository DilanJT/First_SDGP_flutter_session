import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_code/first_screen.dart';

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

// class LoopContainer extends StatelessWidget {
//   String title;
//   String imageName;
//   Color color = Colors.amber;
//   LoopContainer({String title, String imageName}){
//     this.title = title;
//     this.imageName = imageName;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return FlatButton(
//       onPressed: (){
//         // Navigator.push(context,
//         //     MaterialPageRoute(builder: (context) => FirstScreen()),
//         // );
//         color = Colors.tealAccent;
//       },
//       child: Container(
//         alignment: Alignment.center,
//         width: 300.0,
//         height: 100.0,
//         color: color,
//         child: Row(
//           children: [
//             Image.asset("assets/$imageName.png"),
//             Text(
//               "This is my \n$title flutter \n component",
//               style: GoogleFonts.aclonica(
//                 fontSize: 24.0,
//                 fontWeight: FontWeight.bold,
//                 fontStyle: FontStyle.italic
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class LoopContainer extends StatefulWidget {
  String title;
  String imageName;
  Color color = Colors.amber;

  LoopContainer({String title, String imageName}){
    this.title = title;
    this.imageName = imageName;
  }

  @override
  _LoopContainerState createState() => _LoopContainerState();
}

class _LoopContainerState extends State<LoopContainer> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => FirstScreen()),
        // );
        setState(() {
          widget.color = Colors.tealAccent;
        });
      },
      child: Container(
        alignment: Alignment.center,
        width: 300.0,
        height: 100.0,
        color: widget.color,
        child: Row(
          children: [
            Image.asset("assets/${widget.imageName}.png"),
            Text(
              "This is my \n${widget.title} flutter \n component",
              style: GoogleFonts.aclonica(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
              ),
            ),
          ],
        ),
      ),
    );
  }
}




