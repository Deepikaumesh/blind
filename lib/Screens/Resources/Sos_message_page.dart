import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

import '../../main.dart';

class Contact_model {
  // final String id;
  final String id;
  final String name;
  final String phone;

  Contact_model({
    // required this.id,
    required this.id,
    required this.name,
    required this.phone,
  });
}

class Sos_message_page extends StatefulWidget {
  @override
  _Sos_message_pageState createState() => _Sos_message_pageState();
}

class _Sos_message_pageState extends State<Sos_message_page> {

  @override
  void initState() {
    // getRequest();


    super.initState();
  }



//Applying get request.

  Future<List<Contact_model>> getRequest() async {
    //replace your restFull API here.
    String url = "http://$ip_address/Dumb_Deaf/display_contacts.php";

    final response = await http.get(Uri.parse(url));

    var responseData = json.decode(response.body);

    //Creating a list to store input data;
    List<Contact_model> users = [];
    for (var singleUser in responseData) {
      Contact_model user = Contact_model(
        //id:  singleUser["id"].toString(),
        id: singleUser["id"].toString(),
        name: singleUser["name"].toString(),
        phone: singleUser["phone"].toString(),
      );

      //Adding user to the list.
      users.add(user);
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange.shade200,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            "Send message",
          ),
        ),
        body: Column(
          children: [


            Flexible(
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: FutureBuilder(
                  future: getRequest(),
                  builder: (BuildContext ctx, AsyncSnapshot snapshot) {
                    if (snapshot.data == null) {
                      return Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularProgressIndicator(
                                color: Colors.red.shade900,
                                strokeWidth: 5,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Data Loading Please Wait!",
                                style: TextStyle(),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else {
                      return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (ctx, index) => Column(
                          children: [
                            Card(
                              color: Colors.grey.shade300,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: ListTile(
                                        contentPadding: EdgeInsets.all(5),
                                        title: Text(
                                          snapshot.data[index].name,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),

                                        subtitle: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              snapshot.data[index].phone,
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),

                                          ],
                                        ),
                                        trailing: GestureDetector(
                                            onTap: ()
                                              async{
                                                                    Uri sms = Uri.parse('sms:${snapshot.data[index].phone}?body=i am trapped please help');
                                                                    if (await launchUrl(sms)) {
                                                                      //app opened
                                                                    }else{
                                                                      //app is not opened
                                                                    }

                                              // launch("tel://" +
                                              //     snapshot.data[index].phone);
                                            },
                                            child: Icon(
                                              Icons.message,
                                              color: Colors.teal,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }



  Emergency_No() async {
    final response = await http.post(
        Uri.parse("http://$ip_address/Dumb_Deaf/add_emergency_no.php"),
        body: {
         // "id":emergency_id,
          "phone": emergency,

        });
    if (response.statusCode == 200) {


      final snackBar = await SnackBar(
        content: const Text('Emergency No Added!'),
        action: SnackBarAction(
          label: 'Ok',
          onPressed: () {
            //Navigator.pop(context);
            // Some code to undo the change.
          },
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      print("not");
      final snackBar = await SnackBar(
        content: const Text('Event updation failed!'),
        action: SnackBarAction(
          label: 'Ok',
          onPressed: () {
            //Navigator.pop(context);
            // Some code to undo the change.
          },
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
    setState(() {});
  }
}
