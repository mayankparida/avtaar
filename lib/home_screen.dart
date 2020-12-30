import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> title = [
    "UI Design",
    "UX Design",
    "Interaction Design",
    "Industrial Design"
  ];

  List<String> subtitle = [
    "Visual appearance of app sjd",
    "Brain behind the design and ...",
    "Includes animation and eff...",
    "Visual apprearance of app & .."
  ];

  List<String> image = [
    "images/UIDesign.png",
    "images/IDesign.jpeg",
    "images/UIDesign.png",
    "images/IDesign.jpeg",
  ];

  List<String> options = [
    "Design",
    "Environment",
    "Technology",
    "Research",
    "License"
  ];

  List<Icon> bookmark = [
    Icon(Icons.bookmark_border),
    Icon(Icons.bookmark),
    Icon(Icons.bookmark_border),
    Icon(Icons.bookmark)
  ];

  List<bool> selected = [true, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 20.0),
                child: Icon(Icons.arrow_back),
              ),
              Container(
                height: 100.0,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Text("Lessons",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0, right: 14.0),
                child: CircleAvatar(
                  backgroundColor: Color.fromRGBO(237, 189, 49, 1),
                  radius: 20.0,
                  child: CircleAvatar(
                    child: Text(
                      "10",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    radius: 18.0,
                    backgroundColor: Color.fromRGBO(255, 215, 1, 1),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 22.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 14.0),
            child: Container(
              height: 50.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Column(
                          children: [
                            FlatButton(
                              child: Text(
                                options[index],
                                style: TextStyle(
                                    color: selected[index]
                                        ? Colors.black
                                        : Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                              onPressed: () {},
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: selected[index]
                                    ? Colors.deepPurple
                                    : Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(2.0),
                                ),
                              ),
                              height: 2.0,
                              width: 30.0,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "•",
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.grey),
                          ),
                        )
                      ],
                    );
                  }),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 8.0),
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 80.0,
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(image[index])),
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      title[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0),
                                    ),
                                    Text(
                                      subtitle[index],
                                      style: TextStyle(
                                          color: Colors.grey.shade600),
                                    )
                                  ],
                                ),
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: bookmark[index]))
                              ],
                            ),
                            height: 100,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.0, 1.0),
                                      blurRadius: 20.0)
                                ],
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: FaIcon(
                              FontAwesomeIcons.unlock,
                              color: Colors.grey,
                              size: 18.0,
                            ))
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
