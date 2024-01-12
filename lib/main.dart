import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rope_animation/theme_data.dart';

void main() {
  runApp(ChangeNotifierProvider<DataBase>(create: (BuildContext context)=>DataBase(),child: IpSallanma(),),);
}

class IpSallanma extends StatefulWidget {
  @override
  State<IpSallanma> createState() => _IpSallanmaState();
}

class _IpSallanmaState extends State<IpSallanma> {
  bool aydinlik = true;
  late bool selected = false;
  late double x = 0.0;
  late double y = 0.0;
  @override
  Widget build(BuildContext context) {
    double x1 = MediaQuery.of(context).size.width * 5 / 6;
    return MaterialApp(debugShowCheckedModeBanner: false,theme: Provider.of<DataBase>(context).baslangic,
      home: Scaffold(
        appBar: AppBar(toolbarHeight: 50,centerTitle: true,
          title: Text('TEMA DEĞİŞ'),
        ),
        body: Container(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    child: Text(
                      '15',
                      style: TextStyle(color:Provider.of<DataBase>(context).selected==false?Colors.black:Colors.white,fontSize: 40),
                    ),
                  ),
                  Container(
                    child: Text(
                      '15',
                      style: TextStyle(fontSize: 40,color:Provider.of<DataBase>(context).selected==false?Colors.black:Colors.white),
                    ),
                  ),
                  Container(
                    child: Text(
                      '15',
                      style: TextStyle(fontSize: 40,color:Provider.of<DataBase>(context).selected==false?Colors.black:Colors.white),
                    ),
                  ),
                  Container(
                    child: Text(
                      '15',
                      style: TextStyle(fontSize: 40,color:Provider.of<DataBase>(context).selected==false?Colors.black:Colors.white),
                    ),
                  ),
                  Container(
                    child: Text(
                      '15',
                      style: TextStyle(fontSize: 40,color:Provider.of<DataBase>(context).selected==false?Colors.black:Colors.white),
                    ),
                  ),
                  Container(
                    child: Text(
                      '15',
                      style: TextStyle(fontSize: 40,color:Provider.of<DataBase>(context).selected==false?Colors.black:Colors.white),
                    ),
                  ),
                  Container(
                    child: Text(
                      '15',
                      style: TextStyle(fontSize: 40,color:Provider.of<DataBase>(context).selected==false?Colors.black:Colors.white),
                    ),
                  ),
                  Container(
                    child: Text(
                      '15',
                      style: TextStyle(fontSize: 40,color:Provider.of<DataBase>(context).selected==false?Colors.black:Colors.white),
                    ),
                  ),
                  Container(
                    child: Text(
                      '15',
                      style: TextStyle(fontSize: 40,color:Provider.of<DataBase>(context).selected==false?Colors.black:Colors.white),
                    ),
                  ),
                  Container(
                    child: Text(
                      '15',
                      style: TextStyle(fontSize: 40,color:Provider.of<DataBase>(context).selected==false?Colors.black:Colors.white),
                    ),
                  ),
                  Container(
                    child: Text(
                      '15',
                      style: TextStyle(fontSize: 40,color:Provider.of<DataBase>(context).selected==false?Colors.black:Colors.white),
                    ),
                  ),
                ],
              ),
              CustomPaint(
                painter: LinePainter(selected: selected, x: x, y: y, x1: x1),
              ),
              Positioned(
                  top: selected == false ? 125 : y - 75,
                  left: selected == false
                      ? MediaQuery.of(context).size.width * 5 / 6 - 25
                      : x - 25,
                  child: Container(decoration: BoxDecoration(color: Colors.black,borderRadius:BorderRadius.circular(360) ),
                    height: 50,
                    width: 50,
                  )),
              GestureDetector(
                onLongPressMoveUpdate: (details) {
                  setState(() {
                    x = details.globalPosition.dx;
                    y = details.globalPosition.dy-50;
                    selected = true;
                    print(x);
                  });
                },
                onLongPressEnd: (details) {
                  setState(() {
                    selected = false;
                    Provider.of<DataBase>(context,listen:false).temaDegis();
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  late double x1;
  late bool selected = false;
  late double x = 0.0;
  late double y = 0.0;
  LinePainter(
      {required this.y,
      required this.x,
      required this.selected,
      required this.x1});
  @override
  void paint(canvas, size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 10;
    canvas.drawLine(Offset(x1, -40),
        Offset(selected == false ? x1 : x, selected == false ? 150 : y-50), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
