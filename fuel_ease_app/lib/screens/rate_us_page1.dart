

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingPage extends StatefulWidget {
  const RatingPage({super.key});

  @override
  State<RatingPage> createState() => _RatingPageState();
}



class _RatingPageState extends State<RatingPage> {
  @override
  Widget build(BuildContext context) {
    Future openDialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: Icon(Icons.thumb_up,size:200.0 ,color: Color.fromARGB(255, 237, 160, 169),),
        title: Text("Thank you!",style: TextStyle(fontSize: 20,color: Colors.black26),),
        content: Text("Thank you for sharing your valuable review and rating us"),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(60, 236, 193, 193),
        title: Center(child: const Text('Rate Us')),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              //icon
              CircleAvatar(
                radius: 210.0,
                backgroundColor: Color.fromARGB(255, 235, 236, 236),
                backgroundImage: NetworkImage(
                  "https://cdn5.vectorstock.com/i/1000x1000/13/54/high-rating-color-icon-vector-29051354.jpg",
                ),
              ),
              Center(
                child: Text("Review Refuelers to help us improve"),
              ),
              SizedBox(
                height: 10,
              ),
              //dialogbox
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 240, 172, 172),
                    border:
                        Border.all(color: Color.fromARGB(255, 214, 205, 205)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: TextField(
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      expands: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Write your reviews here',
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 11.0),
                    child: TextButton(
                        onPressed: (() {}),
                        child: Container(
                          height: 40.0,
                          width: 85.0,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 244, 164, 164),
                            border: Border.all(
                                color: Color.fromARGB(255, 51, 49, 49)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 7.0),
                            child: Text(
                              "Later",
                              selectionColor: Colors.black,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 112, 34, 34),
                                  fontSize: 18.0),
                            ),
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 100.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 11.0),
                    child: TextButton(
                        onPressed: (() {
                          openDialog();
                        }),
                        child: Container(
                          height: 40.0,
                          width: 105.0,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 225, 214, 214),
                            border: Border.all(
                                color: Color.fromARGB(255, 51, 49, 49)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 7.0),
                            child: Text(
                              "Submit",
                              selectionColor: Colors.black,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 112, 34, 34),
                                  fontSize: 18.0),
                            ),
                          ),
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
