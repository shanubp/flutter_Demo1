import 'package:flutter/material.dart';
var width;
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    return Scaffold(
       backgroundColor: primaryColor,
     body: Container(
         height: width*2.5,
        width: width*1,
       child: Stack(
         children: [
         Column(
           children: [
      Expanded(
      flex: 6,
          child: Container(
            decoration: BoxDecoration(
               image:DecorationImage(
                image: AssetImage("assets/watch-removebg-preview.png"),)
            ),
          )),
     Expanded(
     flex: 5,
      child: Container(
        width: width*1,
     padding: EdgeInsets.all(width*0.1),
     decoration: BoxDecoration(
          color: subColor,
      borderRadius: BorderRadius.only(
          topLeft:Radius.circular(width*0.1) ,
          topRight:Radius.circular(width*0.1) )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Writch Watch",style: TextStyle(fontWeight: FontWeight.bold,fontSize:width*0.06)),
            SizedBox(
              height: width*0.02,
            ),
            Text("Rolex Swiss",style: TextStyle(color: Colors.grey),),
            SizedBox(
              height: width*0.03,
            ),
            Row(
              children: [
                Container(
                  width: width*0.2,
                  height: width*0.1,
                  decoration: BoxDecoration(
                      color: Colors.orange.shade100,
                    borderRadius: BorderRadius.circular(width*0.01)
                  ),
                  child: Center(child: Text("Orange",style: TextStyle(color: Colors.orange))),
                ),
                SizedBox(
                  width: width*0.03,
                ),
                Container(
                  width: width*0.2,
                  height: width*0.1,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(width*0.01)
                  ),
                  child: Center(child: Text("Watch",style: TextStyle(color: Colors.blue))),
                ),
                SizedBox(
                  width: width*0.03,
                ),
                Container(
                  width: width*0.2,
                  height: width*0.1,
                  decoration: BoxDecoration(
                      color: Colors.red.shade100,
                    borderRadius: BorderRadius.circular(width*0.01)
                  ),
                  child: Center(child: Text("Latest",style: TextStyle(color: Colors.red))),
                ),
              ],
            ),
            SizedBox(
              height: width*0.06,
            ),
            Text("Size",style: TextStyle(color: Colors.grey),),
            SizedBox(
              height: width*0.04,
            ),
            Row(
              children: [
               SizeSelection(Text("S",style: TextStyle(color: Colors.grey),)),
               SizeSelection(Text("M",style: TextStyle(color: Colors.grey))),
               SizeSelection(Text("L",style: TextStyle(color: Colors.grey))),
               SizeSelection(Text("XL",style: TextStyle(color: Colors.grey))),
               SizeSelection(Text("XXL",style: TextStyle(color: Colors.grey))),
              ],
            ),
            SizedBox(
              height: width*0.06,
            ),
            Text("Color",style: TextStyle(color: Colors.grey),),
            SizedBox(
              height: width*0.03,
            ),
            Row(
              children: [
                Container(
                  height: width*0.04,
                  width: width*0.04,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle
                  ),
                ),
                SizedBox(
                  width: width*0.05,
                ),
                Container(
                  height: width*0.04,
                  width: width*0.04,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle
                  ),
                ),
                SizedBox(
                  width: width*0.05,
                ),
                Container(
                  height: width*0.04,
                  width: width*0.04,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle
                  ),
                ),
                SizedBox(
                  width: width*0.05,
                ),
                Container(
                  height: width*0.04,
                  width: width*0.04,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      shape: BoxShape.circle
                  ),
                ),
              ],
            )
          ],
        ),
      ),
       ),
           ],
         ),
           Positioned(
             bottom: width*0.01,top:width*0.21,right:width*0.1,
             child: Container(
               width: width*0.1,
               height: width*0.1,
               decoration: BoxDecoration(
                   color: subColor,
                   shape: BoxShape.circle,
                 boxShadow: [
                   BoxShadow(
               color: Colors.black.withOpacity(0.15),
                 blurRadius: 4,
                 spreadRadius: 2,
                 offset: Offset(0,3)
               )
                 ]
               ),
               child: Icon(Icons.favorite,
                   color:primaryColor,
                   size: width*0.05,
                   shadows: [
                     BoxShadow(
                     color: Colors.black.withOpacity(0.15),
                       blurRadius: 4,
                       spreadRadius: 2,
                       offset: Offset(0,3)
                   )
                   ]
               ),
             ),
           ),
         ]
       ),
     ),
    );
  }
}

Color secondaryColor=Colors.grey.shade200;
Color primaryColor=Colors.orange.shade800;
Color subColor=Colors.white;

Widget SizeSelection(Text text){
  return Padding(padding: EdgeInsets.only(right: width*0.03),
   child: Container(
   width: width*0.13,
    height: width*0.09,
   decoration: BoxDecoration(
     borderRadius: BorderRadius.circular(width*0.01),
         color: secondaryColor,
   ),
     child: Center(child: text),
   ),
  );
}