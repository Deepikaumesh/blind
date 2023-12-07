import 'package:flutter/material.dart';
import 'package:telephony/telephony.dart';


class sms_test2 extends StatefulWidget {
  @override
  _sms_test2State createState() => _sms_test2State();
}

class _sms_test2State extends State<sms_test2> {


  final Telephony _telephony = Telephony.instance;
  final telephony = Telephony.instance;
  TextEditingController mobilenum = TextEditingController();
  TextEditingController message = TextEditingController();
  TextEditingController nummessage = TextEditingController();
  var i = 0;


  _sendSms()async{

    _telephony.sendSms( to: mobilenum.text, message: message.text);
  }

  @override
  void initState() {
    _sendSms();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('lets irritate your friend'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 10,
                  ),
                  child: TextField(
                    controller: mobilenum,
                    decoration: InputDecoration(
                      hintText: 'mobile number',
                    ),
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 10,
                  ),
                  child: TextField(
                    controller: nummessage,
                    decoration: InputDecoration(
                      hintText: 'number of times',
                    ),
                    keyboardType: TextInputType.number,
                    maxLength: 2,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 10,
                    ),
                    child: TextField(
                      controller: message,
                      expands: true,
                      maxLines: null,
                      decoration: InputDecoration(
                        hintText: 'content',
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    print("test print");
                    setState(() {
                      i = int.parse(nummessage.text);
                    });

                    for (int k = 1; k <= i; k++) {
                      telephony.sendSms(
                        to: mobilenum.text,
                        message: message.text,
                      );
                    }
                  },
                  child: Text(
                    'send',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: ()async {
                    setState(() {

                    });
                    await _sendSms();

                  },
                  child: Text("Send SMS"),
                ),
              ],
            ),
          ),
        ));
  }
}




class sms3 extends StatefulWidget {
  @override
  State<sms3> createState() => _sms3State();
}

class _sms3State extends State<sms3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: ()async {
              await sendSMS();

            },
            child: Text("Send SMS"),
          ),
        ),

    );
  }

  Future<void> sendSMS() async {
    final Telephony telephony = Telephony.instance;
    bool? permissionsGranted = await telephony.requestPhoneAndSmsPermissions;
    print(permissionsGranted);

    await telephony.sendSms(to: "+919526843393", message: "Hello, this is a test message.");
    print("SMS Sent");
  }




}