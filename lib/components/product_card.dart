import 'package:flutter/material.dart';
import 'package:ready_shout/screens/Archive/archive_screen.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.width = 140,
    this.aspectRetio = 1.02,
  }) : super(key: key);

  final double width, aspectRetio;

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      child: GestureDetector(
        onTap: () =>{
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Column(
            children: [
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ArchiveScreen();
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 142,
                    width: 108,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: Theme.of(context).scaffoldBackgroundColor),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "images/image5.png",
                          ))
                  ),
            child: Center(child: Icon(Icons.play_circle_outline,
            color:  Colors.white60,),
            ),
                    ),
                ),
                SizedBox(width: 15),
                Container(
                  height: 142,
                  width: 108,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: Theme.of(context).scaffoldBackgroundColor),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "images/image2.png",
                          ))),
                  child: Center(child: Icon(Icons.play_circle_outline,
                    color:  Colors.white60,),),
                ),
                SizedBox(width: 15),
                Container(
                  height: 142,
                  width: 108,
                  decoration: BoxDecoration(

                      border: Border.all(
                          width: 1,
                          color: Theme.of(context).scaffoldBackgroundColor),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "images/image3.png",
                          ))),
                  child: Center(child: Icon(Icons.play_circle_outline,
                    color:  Colors.white60,),),
                ),

              ],
            ),
              SizedBox(height: 5),
              Row(
                children: [
                  Container(
                    height: 142,
                    width: 108,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "images/image4.png",
                            ))),
                  ),
                  SizedBox(width: 15),
                  Container(
                    height: 142,
                    width: 108,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "images/image5.png",
                            ))),
                    child: Center(child: Icon(Icons.play_circle_outline,
                      color:  Colors.white60,),),
                  ),
                  SizedBox(width: 15),
                  Container(
                    height: 142,
                    width: 108,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "images/image6.png",
                            ))),
                    child: Center(child: Icon(Icons.play_circle_outline,
                      color:  Colors.white60,),),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
