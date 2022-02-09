import 'package:flutter/material.dart';
import 'package:try_flutter_api/Screen/user_datails.dart';

userListHeaderWidget(String picture, String fulName,String location,BuildContext context){
 return GestureDetector(
   onTap: (){
     Navigator.push(context, MaterialPageRoute(builder: (context)=>UserDatails(fulName: fulName, imagePath: picture)));
   },
   child: Card(
     color: Colors.red,
     shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.all(Radius.circular(10))
     ),
     margin: EdgeInsets.all(20),
     child: Container(
       alignment: Alignment.center,
       width: MediaQuery.of(context).size.width,
       margin: EdgeInsets.all(20),
       height: 200,
       child: Column(
         children: [
           CircleAvatar(
             radius: 50,
             backgroundColor: Colors.transparent,
             backgroundImage: NetworkImage(picture),

           ),
           SizedBox(height: 10,),
           Text(fulName,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
           Text(location,style: TextStyle(fontSize: 10,fontWeight: FontWeight.normal,color: Colors.white),)
         ],
       ),
     ),
   ),
 );

}