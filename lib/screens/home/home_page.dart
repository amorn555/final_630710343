import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    buildLoadingOverlay() => Container(
        color: Colors.black.withOpacity(0.2),
        child: Center(child: CircularProgressIndicator()));


    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Colors.black
        ),
        child: Column(
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(213, 219, 226, 1)
                  ),
                  height: MediaQuery.of(context).size.height*1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.grey,
                                      )
                                  ),
                                  height: 60,
                                  child: Center(
                                    child: Text(
                                        'Bangkok'
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.grey,
                                      )
                                  ),
                                  height: 60,
                                  child: Center(
                                    child: Text(
                                        'Nakhon Pathom'
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.grey,
                                      )
                                  ),
                                  height: 60,
                                  child: Center(
                                    child: Text(
                                        'Paris'
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]
                      ),
                      Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child:
                              Text(
                                  'Bangkok',
                                  style: TextStyle(
                                    fontSize: 50,
                                  )
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  'Thailand',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                )
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                '2023-10-26 12:00',
                                style: TextStyle(
                                    fontSize: 10
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Image.network("https://cdn.weatherapi.com/weather/128x128/day/116.png")
                            ),
                            Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text('Partly cloudy',style: TextStyle(fontSize: 20),)
                            ),
                            Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text('29',style: TextStyle(fontSize: 70),)
                            ),
                            Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text('Feels like 32.7',style: TextStyle(fontSize: 15),)
                            ),
                            Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text(' ํC   |   ํF',style: TextStyle(fontSize: 35),)
                            ),
                          ],
                        ),
                      ),
                      BottomAppBar(

                      )
                    ],
                  ),
                ),
              )
            ]
        ),
      ),
    );
  }

}