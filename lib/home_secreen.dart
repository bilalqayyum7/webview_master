import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_master/webview.dart';

class MyHomeSecreen extends StatefulWidget {
  const MyHomeSecreen({super.key});

  static final links = ['https://google.com', 'https://google.com'];

  @override
  State<MyHomeSecreen> createState() => _MyHomeSecreenState();
}

class _MyHomeSecreenState extends State<MyHomeSecreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Webview', style: TextStyle(color: Colors.red),),
      ),
      key: Key('123'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 10,),
              Container(
                color: Colors.yellow[100],
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 20,),
                    Image.asset('assets/pay.png', width: 150, height: 200,),
                    Column(
                      children: <Widget>[
                        TextButton(onPressed: (){
                          _handleURLButtonPress(context, 'https://paytm.com/credit-card-bill-payment');
                        },
                        style: TextButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),primary: Colors.yellow[100]),
                            child: Text('Payment'),),
                        IconButton(onPressed: null,
                            icon: Icon(Icons.arrow_forward)),
                        SizedBox(height: 5,),

                      ],
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.green[100],
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 20,),
                    Image.asset('assets/bbc.png', width: 150, height: 200,),
                    Column(
                      children: <Widget>[
                        TextButton(onPressed: (){
                          _handleURLButtonPress(context, 'https://www.bbc.com/news');
                        },
                          style: TextButton.styleFrom(primary: Colors.green[100],
                          padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),),
                            child: Text('News'),),
                        IconButton(onPressed: null,
                            icon: Icon(Icons.arrow_forward)),
                        SizedBox(height: 5,),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.blue[100],
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 20,),
                    Image.asset('assets/w.png', width: 150,),
                    Column(
                      children: <Widget>[
                        TextButton(onPressed: (){},
                          style: TextButton.styleFrom(primary: Colors.blue[100],
                          padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),),
                            child: Text('Wikipedia'),),
                        IconButton(onPressed: null,
                            icon: Icon(Icons.arrow_forward)),
                        SizedBox(height: 5,),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.pink[100],
                height: 140,
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 20,),
                    Image.asset('assets/yo.png',width: 150, height: 200,),
                    Column(
                      children: <Widget>[
                        TextButton(onPressed: (){
                          _handleURLButtonPress(context, 'https://www.youtube.com/');
                        },
                          style: TextButton.styleFrom(primary: Colors.pink[100],
                          padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0)),
                            child: Text('Youtube'),),
                        IconButton(onPressed: null,
                            icon: Icon(Icons.arrow_forward)),
                        SizedBox(height: 5,),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void _handleURLButtonPress(BuildContext context, String url){
  Navigator.push(context, MaterialPageRoute(builder: (context) => WebViewContainer(url)));
}