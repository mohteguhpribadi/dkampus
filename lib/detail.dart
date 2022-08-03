import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image(
              fit: BoxFit.cover,
              image: new NetworkImage(
                'https://cdns.klimg.com/merdeka.com/i/w/news/2020/02/11/1146665/670x335/5-objek-wisata-keren-di-pulau-bawean-gresik-yang-tak-banyak-diketahui.jpg',
              ),
            ),
          ),
          SafeArea(
              child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                // margin: EdgeInsets.only(top: 20),
                child: Row(children: [
                  MaterialButton(
                    padding: EdgeInsets.only(left: 7, right: 9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Icon(Icons.arrow_back),
                    color: Colors.white,
                    minWidth: 0,
                    height: 40,
                    onPressed: () => Navigator.pop(context),
                  ),
                ]),
              ),
              Spacer(),
              Spacer(),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.black.withOpacity(0.5)),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 15.0),
                      Expanded(
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ListTile(
                                title: Text(
                                  "Gili Noko Island",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28.0),
                                ),
                                trailing: IconButton(
                                  color: Colors.white,
                                  icon: Icon(Icons.bookmark_border_rounded),
                                  onPressed: () {},
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 13),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.place,
                                      size: 20.0,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      "Gili Noko",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: (20),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ExpansionTile(
                                title: Text(
                                  "Detail Tempat",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.topLeft,
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      "This is the details widget. Here you can see more details of the product",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        height: 70,
                        width: double.infinity,
                        child: MaterialButton(
                          onPressed: () {},
                          // padding: EdgeInsets.symmetric(
                          //   vertical: 15,
                          //   horizontal: 130,
                          // ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          color: Colors.blue,
                          child: Text(
                            'Open Maps',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
