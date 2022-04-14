import 'package:flutter/material.dart';
import 'package:stack_widget/themes/color_palette.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({Key? key,required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                width: size.width/2,
                height: size.height/4,
                child: Container(
                  color: ColorPalette.secondaryColor,
                ),
              ),
              Positioned(
                child: SizedBox(
                  width: size.width/3,
                  height: size.height/6,
                  child:  CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Text('circle'.toLowerCase(),
                    style: const TextStyle(color: Colors.white),),
                  ),
                ),
              ),
              Positioned(
                left: -50,
                child: SizedBox(
                  width: size.width/4,
                  height: size.height/8,
                  child: Container(
                    color: Colors.blue,
                    child: const Text('L-50'),
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Positioned(
                right: -50,
                child: SizedBox(
                  width: size.width/4,
                  height: size.height/8,
                  child: Container(
                    color: Colors.blue,
                    child: const Text('R-50'),
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Positioned(
                top: -50,
                child: SizedBox(
                  width: size.width/4,
                  height: size.height/8,
                  child: Container(
                    color: Colors.blue,
                    child: const Text('T-50'),
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Positioned(
                bottom: -50,
                child: SizedBox(
                  width: size.width/4,
                  height: size.height/8,
                  child: Container(
                    color: Colors.blue,
                    child: const Text('B-50'),
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
