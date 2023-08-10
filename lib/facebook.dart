// import 'package:flutter/material.dart';
// // var h;
// // var w;
// // Color primaryColor=Colors.blue;
// // Color secondaryColor=Colors.grey.shade200;
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
//
//   late TabController tabController;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     tabController=TabController(length: 6, vsync: this,);
//   }
//   @override
//   Widget build(BuildContext context) {
//     h=MediaQuery.of(context).size.height;
//     w=MediaQuery.of(context).size.width;
//     return Scaffold(
//       appBar: AppBar(
//
//         title: Text("facebook",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),),
//         actions: [
//           IconButton(
//                 (){
//               print("Add");
//             },
//             Icon(Icons.add),
//           ),
//           IconButton(
//                 (){
//               print("Search");
//             },
//             Icon(Icons.search),
//           ),
//           IconButton(
//                 (){
//               print("Message");
//             },
//             Icon(Icons.message),
//           ),
//         ],
//         bottom: PreferredSize(
//           preferredSize: Size(double.infinity,40),
//           child: TabBar(
//             controller: tabController,
//             tabs: [
//               Tab(
//                 icon: Icon(Icons.home),
//               ),
//               Tab(
//                 icon: Icon(Icons.group),
//               ),
//               Tab(
//                 icon: Icon(Icons.video_collection_outlined),
//               ),
//               Tab(
//                 icon: Icon(Icons.store),
//               ),
//               Tab(
//                 icon: Icon(Icons.notifications),
//               ),
//               Tab(
//                 icon: CircleAvatar(
//                   radius: w*0.04,
//                   backgroundImage: NetworkImage("https://sportsmatik.com/uploads/world-events/players/lionel-messi_1564492648.jpg"),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: TabBarView(
//         controller: tabController,
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Padding(
//                 padding:  EdgeInsets.all(w*0.05),
//                 child: Row(
//                   children: [
//                     CircleAvatar(
//                       radius: w*0.05,
//                       backgroundImage: NetworkImage("https://sportsmatik.com/uploads/world-events/players/lionel-messi_1564492648.jpg"),
//                     ),
//                     SizedBox(width: w*0.05,),
//                     Expanded(
//
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(40),
//                                   borderSide: BorderSide()
//                               )
//                           ),
//                         )),
//                     SizedBox(width: w*0.05,),
//                     Icon(Icons.photo_album_outlined,color: Colors.green,)
//                   ],
//                 ),
//               ),
//               Divider(
//                 color: secondaryColor,
//                 thickness: 5,
//               ),
//               SizedBox(
//                 height: w*0.6,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   padding:  EdgeInsets.all(w*0.05),
//                   children: [
//                     Container(
//                       width: w*0.3,
//
//                       decoration: BoxDecoration(
//
//                           border: Border.all(color: secondaryColor),
//                           borderRadius: BorderRadius.circular(20)
//                       ),
//                       child: Stack(
//                         children: [
//                           Column(
//                             children: [
//                               Expanded(
//                                 flex: 3,
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.only(
//                                         topRight: Radius.circular(20),
//                                         topLeft: Radius.circular(20),
//                                       ),
//                                       image: DecorationImage(
//                                           image: NetworkImage("https://sportsmatik.com/uploads/world-events/players/lionel-messi_1564492648.jpg")
//                                       )
//                                   ),
//                                 ),
//                               ),
//                               Expanded(
//                                   flex: 2,
//                                   child: Align(
//                                     alignment: Alignment.bottomCenter,
//                                     child: Text('Create\nStory',textAlign: TextAlign.center,style: TextStyle(
//                                         fontWeight: FontWeight.w600
//                                     ),),
//                                   ))
//                             ],
//                           ),
//                           Positioned(
//                             top: w*0.25,left: w*0.1,
//                             child: Container(
//                               width: w*0.1,
//                               height: w*0.1,
//                               decoration: BoxDecoration(
//                                   color: primaryColor,
//                                   border: Border.all(color: Colors.white,width: 3),
//                                   shape: BoxShape.circle
//                               ),
//                               child: Icon(Icons.add,color: Colors.white,),
//                             ),
//                           ),
//
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               Divider(
//                 color: secondaryColor,
//                 thickness: 5,
//               ),
//             ],
//           ),
//           Container(
//             color: Colors.red,
//           ),
//           Container(
//             color: Colors.green,
//           ),
//           Container(
//             color: Colors.orange,
//           ),
//           Container(
//             color: Colors.amber,
//           ),
//           Container(
//             color: Colors.purple,
//           ),
//         ],
//       ),
//     );
//   }
// }
// Widget IconButton(Function onPressed,Icon icon){
//   return    Padding(
//       padding: EdgeInsets.only(right: w*0.03),
//       child: InkWell(
//           onTap: () {
//             onPressed();
//           },
//           child: CircleAvatar(
//             radius: w*0.04,
//             backgroundColor: secondaryColor,
//             child: icon,
//           ),
//         ),
//      );
// }