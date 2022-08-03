import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:library_on/userdetail.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/logo.png',
          fit: BoxFit.contain,
          height: 25,
        ),
        // title: Text(
        //   'Visit Bawean',
        //   style: TextStyle(color: Colors.black),
        // ),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: 10),
            icon: Icon(Icons.shopping_basket_rounded),
            color: Colors.black,
            onPressed: () {},
          ),
          IconButton(
            padding: EdgeInsets.only(right: 20),
            icon: Icon(Icons.person),
            color: Colors.black,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UserDetail()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                //
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      // height: 180,

                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 19 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    ),
                    items: [
                      Container(
                        // margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: new NetworkImage(
                                'https://cdni.iconscout.com/illustration/premium/thumb/man-woman-outdoors-activity-2888579-2406929.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        // child: Column(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   crossAxisAlignment: CrossAxisAlignment.center,
                        //   children: <Widget>[
                        //     Text(
                        //       'Usable Flower for Health',
                        //       style: TextStyle(
                        //         color: Colors.black,
                        //         fontWeight: FontWeight.bold,
                        //         fontSize: 18.0,
                        //       ),
                        //     ),
                        //     Padding(
                        //       padding: const EdgeInsets.all(15.0),
                        //       child: Text(
                        //         'Lorem Ipsum is simply dummy text use for printing and type script',
                        //         style: TextStyle(
                        //           color: Colors.white,
                        //           fontSize: 15.0,
                        //         ),
                        //         textAlign: TextAlign.center,
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: new NetworkImage(
                                'https://static.vecteezy.com/system/resources/thumbnails/000/687/256/small/black-friday-sale-promotion-poster-or-banner-template-vector.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: new NetworkImage(
                                'https://media.istockphoto.com/vectors/cartoon-people-walking-in-urban-park-illustration-vector-id1149263420?k=6&m=1149263420&s=612x612&w=0&h=9L0oChP0x6Cs5fsUmLK1hat8la1C6cJXcJrW3tuAO3s='),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //
                // Container(
                //   padding: EdgeInsets.all(20),
                //   child: TextField(
                //     keyboardType: TextInputType.number,
                //     decoration: InputDecoration(
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(8.0),
                //         borderSide: BorderSide.none,
                //       ),
                //       filled: true,
                //       fillColor: Color(0xFFe7edeb),
                //       hintText: "Mau kemana ?",
                //       prefixIcon: Icon(
                //         Icons.search_sharp,
                //         color: Colors.grey[600],
                //       ),
                //     ),
                //   ),
                // ),

                // Container(
                //   margin: EdgeInsets.all(20),
                //   width: 330.0,
                //   height: 180,
                //   decoration: new BoxDecoration(
                //     borderRadius: BorderRadius.all(Radius.circular(8.0)),
                //     color: Colors.blue,
                //     image: new DecorationImage(
                //       fit: BoxFit.cover,
                //       image: new NetworkImage(
                //         'https://media.istockphoto.com/vectors/cartoon-people-walking-in-urban-park-illustration-vector-id1149263420?k=6&m=1149263420&s=612x612&w=0&h=9L0oChP0x6Cs5fsUmLK1hat8la1C6cJXcJrW3tuAO3s=',
                //       ),
                //     ),
                //   ),
                //   child: Container(
                //     child: MaterialButton(
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(8.0),
                //       ),
                //       onPressed: () {},
                //     ),
                //   ),
                // ),

//
//
//Kategori
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    'Spesial Untuk Kamu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
                //
                Container(
                  margin: EdgeInsets.only(left: 15, top: 5),
                  child: Row(
                    children: [
                      Container(
                        height: 190,
                        width: 160,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          color: Colors.grey[200],
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                              ),
                              Image.asset("assets/kos.png", height: 70),
                              Container(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Text(
                                      "dkos",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: (22),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Cari kos favorit kamu dengan mudah",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: (14),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 190,
                        width: 160,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          color: Colors.grey[200],
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                              ),
                              Image.asset("assets/print.png", height: 70),
                              Container(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Text(
                                      "dprint",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: (22),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Cetak dokumen kamu lebih cepat",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: (14),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, top: 5),
                  child: Row(
                    children: [
                      Container(
                        height: 190,
                        width: 160,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          color: Colors.grey[200],
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                              ),
                              Image.asset("assets/sayor.png", height: 70),
                              Container(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Text(
                                      "dsayor",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: (22),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Hidup sehat dengan sayur organik ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: (14),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 190,
                        width: 160,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          color: Colors.grey[200],
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                              ),
                              Image.asset("assets/service.png", height: 70),
                              Container(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Text(
                                      "dservice",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: (22),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Benerin masalah laptop kamu",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: (14),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //
                //
                // Container(
                //   height: 60,
                //   width: double.infinity,
                //   margin: EdgeInsets.all((20)),
                //   padding: EdgeInsets.symmetric(
                //     horizontal: (20),
                //     vertical: (15),
                //   ),
                //   decoration: BoxDecoration(
                //     color: Colors.blue[500],
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   child: Text.rich(
                //     TextSpan(
                //       style: TextStyle(
                //         color: Colors.white,
                //       ),
                //       children: [
                //         TextSpan(
                //           text: "Butuh Bantuan ?",
                //           style: TextStyle(
                //             fontSize: (18),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
