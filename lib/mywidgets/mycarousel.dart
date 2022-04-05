import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyCarousel extends StatefulWidget {
  const MyCarousel({Key? key}) : super(key: key);

  @override
  State<MyCarousel> createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  int current=0;
  List container=["sadfaf","adjaj","ajjcncn","hkdscsh","hsdc"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Center(
      child: CarouselSlider(items:
          container.map((txt){
            return Container(width: 400,height: 300,color: Colors.blue,
            child: Text(txt,style: TextStyle(fontSize: 50),),);
          }).toList(),

       options:CarouselOptions(height: 300,enlargeCenterPage: true,
      autoPlay: true,autoPlayInterval: Duration(seconds: 2),
      initialPage: 0,onPageChanged: (index, reason){
        setState(() {
          current= index;
        });
          }),),
    ) ,);
  }
}



class MyCarouselUpdated extends StatelessWidget {
  const MyCarouselUpdated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int current=0;
    List<Widget> slides=[MyCard(cardtext: "Dilshan",colour: Colors.green,),
      MyCard(cardtext: "SreeDevi",colour: Colors.yellow,),
      MyCard(cardtext: "Amal",colour: Colors.red,),
      MyCard(colour: Colors.blue,cardtext: "Aswathy",)];
    return Scaffold(body: Container(
      child:Center(
        child: CarouselSlider(items: slides,
          options:CarouselOptions(height: 300 ,enlargeCenterPage: true,
              autoPlay: true,autoPlayInterval: Duration(seconds: 2),
              initialPage: current,scrollDirection:Axis.vertical,
              onPageChanged:(index,reason){
                current=index;
                print(current);
              } ) ,
        ) ,),));
  }
}
class MyCard extends StatelessWidget {
  Color? colour;
  String? cardtext;
  MyCard({this.cardtext,this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(width: 300,height: 300,color: colour,child: Text(cardtext!,style: TextStyle(fontSize: 30),),);
  }
}
