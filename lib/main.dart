import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HotelDescriptionUI(),
      ),
    );

class HotelDescriptionUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            title: const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'DETAILS',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            expandedHeight: size.height / 2.1,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://wardandco.com/wp-content/uploads/2021/03/HOTEL-BLOG-1.jpg',
                  ),
                ),
              ),
              child: Container(
                color: Colors.black.withOpacity(0.4),
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      top: size.height / 3.2,
                      child: const Text(
                        'Crown Plaza \n Kochi, Kerala',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 27),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: size.height / 2.4,
                      child: Container(
                        height: 32,
                        width: 135,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.4),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            '8.5 in 100+ Reviews',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: size.height / 2.4,
                      child: const Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.star,
                                color: Colors.blueAccent,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.blueAccent,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.blueAccent,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.blueAccent,
                              ),
                              Icon(
                                Icons.star_border_outlined,
                                color: Colors.blueAccent,
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                '\$ 200',
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.location_on,
                                size: 20,
                                color: Colors.blueAccent,
                              ),
                              Text(
                                '8 Km From Lulu Mall',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ],
                          ),
                          const Text(
                            'Per Night',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          height: 45,
                          width: size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              'Book Now',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          height: 250,
                          width: size.width * 0.9,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                            color: Colors.blueAccent,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Experience Luxury at Crowne Plaza-Kochi',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                  // textAlign: TextAlign.start,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    'Crowne Plaza Kochi is ideally located on the new business district of city NH 47 Bypass and provides easy access to Info Park Kakkanad, Cochin Special Economic Zone, M.G. Road, Cochin Port, Shipyard, Naval Base, major sightseeing areas like Fort Kochi, Mattancherry and is 45 minutes away from Cochin International Airport.',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search'
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Favorites'
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings'
          ),
        ],
      ),
    );
  }
}
