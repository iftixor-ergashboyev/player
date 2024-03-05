import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://i.ytimg.com/vi/tXsQy42LFhU/maxresdefault.jpg'),
            fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,

        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.3),
                Colors.black.withOpacity(0.5),
                Color(0xFF31314F).withOpacity(1),
                Color(0xFF31314F).withOpacity(1),
              ]
            )
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: 45, horizontal: 25),
                  child: Row(
                    children: [
                      InkWell(
                       onTap: () {},
                        child: Icon(CupertinoIcons.back, color: Colors.white, size: 30),
                      ),
                      SizedBox(width: 280),
                      InkWell(
                        onTap: () {},
                        child: Icon(Icons.more_vert, color: Colors.white, size: 30),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  child: Column(
                    children: [
                      SizedBox(height: 40),
                      Padding(padding: EdgeInsets.symmetric(vertical: 23, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Blody Mary", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.9))),

                              Text("Lady Gaga", style: TextStyle(fontSize: 18, color: Colors.white.withOpacity(0.8))),
                            ],
                          ),
                          Icon(Icons.favorite, color: Colors.redAccent, size: 35),
                        ],
                      ),
                      ),
                      Column(
                        children: [
                          Slider(
                            min: 0,
                            max: 100,
                            value: 40,
                            onChanged: (value){},
                            activeColor: Colors.white,
                            inactiveColor: Colors.white54,
                          ),
                          Padding(padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("2:55", style: TextStyle(color: Colors.white.withOpacity(0.6), fontWeight: FontWeight.w500,
                                fontSize: 16
                              )),
                              Text("4:30", style: TextStyle(color: Colors.white.withOpacity(0.6), fontWeight: FontWeight.w500,
                                fontSize: 16
                              )),
                            ],
                          ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.list, color: Colors.white, size: 32),
                          Icon(CupertinoIcons.backward_end_fill, color: Colors.white, size: 30),
                          Container(
                            alignment: Alignment.center,
                            height: 55,
                            width: 55,
                            decoration:   BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(
                              Icons.play_arrow,
                              color: Color(0xFF31314F),
                                size: 45,
                            ),
                          ),
                          Icon(CupertinoIcons.forward_end_fill, color: Colors.white, size: 32),
                          Icon(Icons.date_range_outlined, color: Colors.white, size: 30),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
