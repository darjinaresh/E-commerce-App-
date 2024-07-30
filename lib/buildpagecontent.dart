import 'package:flutter/material.dart';
class buildPageContent extends StatefulWidget {
  const buildPageContent({super.key});

  @override
  State<buildPageContent> createState() => _buildPageContentState();
}

class _buildPageContentState extends State<buildPageContent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(22),
                  // margin: EdgeInsets.all(10),
                  height: 130,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(
                        width: 80.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.black,
                          image: DecorationImage(
                              image: NetworkImage('https://images.bewakoof.com/t640/king-reborn-oversized-full-sleeve-t-shirt-554409-1668493678-1.jpg'),
                              fit: BoxFit.cover
                          ),
                          // image: DecorationImage(
                          //   image: AssetImage(
                          //       'assets/images/logo7.png'),
                          //   // fit: BoxFit.fill,
                          // ),
                          // shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 15),

                      Container(
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black,
                            image: DecorationImage(
                                image: NetworkImage('https://images.bewakoof.com/t640/men-s-white-blue-all-over-printed-oversized-shirt-624420-1713528795-1.jpg'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),

                      // SizedBox(height: 10),
                      SizedBox(width: 15),



                      Container(
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                          image: DecorationImage(
                              image: NetworkImage('https://images.bewakoof.com/t640/men-s-brown-all-over-printed-shirt-624344-1716205728-1.jpg'),
                              fit: BoxFit.cover
                          ),
                        ),
                      ),
                      // SizedBox(height: 10),
                      SizedBox(width: 15),



                      Container(
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                          image: DecorationImage(
                              image: NetworkImage('https://images.bewakoof.com/uploads/grid/app/PC-Size-Banner-480x457-AIR-1714035736.jpg'),
                              fit: BoxFit.cover
                          ),
                        ),
                      ),
                      // SizedBox(height: 10),
                      SizedBox(width: 15),



                      Container(
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                          image: DecorationImage(
                              image: NetworkImage('https://images.bewakoof.com/t640/men-s-black-the-myth-graphic-printed-oversized-shirt-604478-1716287626-1.jpg'),
                              fit: BoxFit.cover
                          ),
                        ),
                      ),
                      // SizedBox(height: 10),
                      SizedBox(width: 15),



                      Container(
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                          image: DecorationImage(
                              image: NetworkImage('https://images.bewakoof.com/t640/men-s-black-all-over-printed-oversized-shirt-624319-1715160377-1.jpg'),
                              fit: BoxFit.cover
                          ),
                        ),
                      ),
                      // SizedBox(height: 10),
                      SizedBox(width: 15),



                      Container(
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                          image: DecorationImage(
                              image: NetworkImage('https://images.bewakoof.com/t640/men-s-jet-black-oversized-shirt-630886-1714977505-1.jpg'),
                              fit: BoxFit.cover
                          ),
                        ),
                      ),
                      // SizedBox(height: 10),
                      SizedBox(width: 15),



                      Container(
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                          image: DecorationImage(
                              image: NetworkImage('https://images.bewakoof.com/t640/men-s-blue-grey-all-over-printed-oversized-shirt-624388-1713528776-1.jpg'),
                              fit: BoxFit.cover
                          ),
                        ),
                      ),
                      // SizedBox(width: 10,)
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 0,),
          Container(
            // padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(22),
            height: 425,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black,
              image: DecorationImage(
                image: NetworkImage('https://images.bewakoof.com/uploads/grid/app/OOFSale-1X1-men-1716555561.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(22),
                  // margin: EdgeInsets.all(10),
                  height: 240,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(
                        width: 140.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.black,
                          image: DecorationImage(
                              image: NetworkImage('https://images.bewakoof.com/uploads/grid/app/YFED-1x1-backprint-common-1716541547.jpg'),
                              fit: BoxFit.cover
                          ),
                          // image: DecorationImage(
                          //   image: AssetImage(
                          //       'assets/images/logo7.png'),
                          //   // fit: BoxFit.fill,
                          // ),
                          // shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 15),

                      Container(
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                          image: DecorationImage(
                              image: NetworkImage('https://images.bewakoof.com/uploads/grid/app/HC---1X1-cargo-pants---common-1716375735.jpg'),
                              fit: BoxFit.cover
                          ),
                        ),
                      ),

                      // SizedBox(height: 10),
                      SizedBox(width: 15),



                      Container(
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                          image: DecorationImage(
                              image: NetworkImage('https://images.bewakoof.com/uploads/grid/app/Summer-tee-Trio-Common-1x1-hc-Banner--1--1716563238.jpg'),
                              fit: BoxFit.cover
                          ),
                        ),
                      ),
                      // SizedBox(height: 10),
                      SizedBox(width: 15),



                      Container(
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                          image: DecorationImage(
                              image: NetworkImage('https://images.bewakoof.com/uploads/grid/app/1x1-Banner-Pajamas-Common-1716372035.jpg'),
                              fit: BoxFit.cover
                          ),
                        ),
                      ),
                      // SizedBox(height: 10),
                      SizedBox(width: 15),



                      Container(
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                          image: DecorationImage(
                              image: NetworkImage('https://images.bewakoof.com/uploads/grid/app/Feb-1x1-vests299--5--1716567173.jpg'),
                              fit: BoxFit.cover
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            // padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(22),
            height: 190,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black,
              image: DecorationImage(
                  image: NetworkImage('https://images.bewakoof.com/uploads/grid/app/Desktop-midsize-graphic-printed-os-tees-Rm-1712574078-1716564500.webp'),
                  fit: BoxFit.cover
              ),
            ),
          ),


          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 161.0,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.black,
                        image: DecorationImage(
                            image: NetworkImage('https://images.bewakoof.com/uploads/grid/app/OOFSale-1X1-women-1716563081.jpg'),
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: 161,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                        image: DecorationImage(
                            image: NetworkImage('https://images.bewakoof.com/uploads/grid/app/YFED-1x1-backprint-women-1716541121.jpg'),
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 161.0,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.black,
                        image: DecorationImage(
                            image: NetworkImage('https://images.bewakoof.com/uploads/grid/app/HC---1X1-cargo-pants---women-1716373021.jpg'),
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: 161,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                        image: DecorationImage(
                            image: NetworkImage('https://images.bewakoof.com/uploads/grid/app/HC-BANNERS---1X1---dresses--1--1716564994.jpg'),
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 161.0,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.black,
                        image: DecorationImage(
                            image: NetworkImage('https://images.bewakoof.com/uploads/grid/app/Pajamas-under-699-WOMEN-1X1-Banner-1716565634.jpg'),
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: 161,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                        image: DecorationImage(
                            image: NetworkImage('https://images.bewakoof.com/t640/women-s-black-scooby-doo-graphic-printed-oversized-t-shirt-597300-1715257779-1.jpg'),
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),


          Container(
            // padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(22),
            height: 190,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black,
              image: DecorationImage(
                  image: NetworkImage('https://images.bewakoof.com/uploads/category/desktop/Oversized-T-shirts_Inside_Desktop-Banner_IK-1713161577.jpg'),
                  fit: BoxFit.cover
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 161.0,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.black,
                        image: DecorationImage(
                            image: NetworkImage('https://images.bewakoof.com/t1080/men-s-blue-spidermiles-graphic-printed-oversized-t-shirt-637347-1715781921-1.jpg'),
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: 161,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                        image: DecorationImage(
                            image: NetworkImage('https://images.bewakoof.com/t640/goosebumps-oversized-fit-full-sleeve-t-shirt-564612-1672061287-1.jpg'),
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 161.0,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.black,
                        image: DecorationImage(
                            image: NetworkImage('https://images.bewakoof.com/t1080/men-s-orange-quakinn-around-graphic-printed-oversized-acid-wash-t-shirt-617142-1715160147-1.jpg'),
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: 161,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                        image: DecorationImage(
                            image: NetworkImage('https://images.bewakoof.com/t1080/men-s-purple-hidden-leaf-naruto-graphic-printed-oversized-t-shirt-635641-1715750847-1.jpg'),
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 161.0,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.black,
                        image: DecorationImage(
                            image: NetworkImage('https://images.bewakoof.com/t1080/king-reborn-oversized-full-sleeve-t-shirt-554409-1668493678-1.jpg'),
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: 161,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                        image: DecorationImage(
                            image: NetworkImage('https://images.bewakoof.com/t640/men-s-blue-over-the-sea-graphic-printed-oversized-t-shirt-637046-1715592191-1.jpg'),
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ), // Wishlist page// Wishlist page
        ],
      ),
    );
  }
}
