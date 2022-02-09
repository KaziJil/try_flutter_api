import 'package:flutter/material.dart';
import 'package:try_flutter_api/Utility/api_helper.dart';
import 'package:try_flutter_api/Widget/user_header.dart';
import 'package:try_flutter_api/Widget/user_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("USERLIST",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      centerTitle: true,
        backgroundColor: Colors.red,

      ),

      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: FutureBuilder<List<dynamic>>(
            future: ApiHelper.getUserList(""),
            builder: (context, snapshot){
              if(snapshot.hasData){
                return Expanded(
                  child: ListView.builder(
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, position){
                      if(position ==0){
                        return userListHeaderWidget(snapshot.data![position]["picture"]["medium"].toString(), snapshot.data![position]["name"]["title"].toString()+" "+snapshot.data![position]["name"]["first"].toString()+" "+snapshot.data![position]["name"]["last"].toString(), "City : "+snapshot.data![position]["location"]["city"].toString()+"\n"+"State : "+snapshot.data![position]["location"]["state"].toString()+"\n"+"Country : "+snapshot.data![position]["location"]["country"].toString(),context);
                      }else{
                        return userListWidget(snapshot.data![position]["picture"]["medium"].toString(),snapshot.data![position]["name"]["title"].toString()+" "+snapshot.data![position]["name"]["first"].toString()+" "+snapshot.data![position]["name"]["last"].toString(), snapshot.data![position]["email"].toString(),context);
                      }

                    },
                  ),
                );
              }else{
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

            },
          )
      ),
    );
  }
}
