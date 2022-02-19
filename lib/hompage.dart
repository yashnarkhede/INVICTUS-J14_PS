import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // backgroundColor: Colors.blue.shade50,
            expandedHeight: 350,
            floating: false,
            pinned: true,
            // snap:true,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue.shade50,
                    child: Image.asset(
                      'assets/images/vesit.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      // color: Colors.blue.shade50,
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              title: const Text(
                'VESIT Project',
                style: TextStyle(color: Colors.black),
              ),
              // stretchModes: [
              //   // StretchMode.blurBackground,
              //   StretchMode.zoomBackground,
              //   StretchMode.fadeTitle,
              // ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                
                   Container(
                     width: 30,
                     alignment: Alignment.centerRight,

                     child: ElevatedButton(
                      onPressed: null,
                      child: Text('filter'),
                  ),
                   ),
                
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      SvgPicture.network(
                        'https://www.svgrepo.com/download/189828/email-mail.svg',
                        height: 120,
                      ),
                      Text(
                        'Ear Biometrics: One more step towards Social Distancing',
                        style:TextStyle(fontWeight: FontWeight.bold) ,
                      ),
                      Text('Abstract- Biometrics deals with identification of individuals based on their characteristics. In  traditional systems people use to remember passwords, PIN, tokens for identification. But in recent years biometrics have gained a lot of popularity due to advancement in technology and the secure environment.Variety of biometrics have been developed in recent years such as fingerprint, iris, retinal.')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
