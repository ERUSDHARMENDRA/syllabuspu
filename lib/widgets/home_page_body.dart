import 'package:flutter/material.dart';

class HomePageBody extends StatefulWidget {
  @override
  _HomePageBodyState createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Theme.of(context).primaryColorDark,
                            blurRadius: 2.0,
                          )
                        ]),
                    child: Center(child: Text('1st Sem',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Theme.of(context).primaryColorDark,
                            blurRadius: 2.0,
                          )
                        ]),
                    child: Center(child: Text('2nd Sem',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
