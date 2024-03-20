import 'package:assessment/data/doctordata.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DoctorData doctordata = DoctorData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Stack(children: [
        GNav(
          tabs: [
            GButton(
              icon: Icons.home_outlined,
              iconActiveColor: Colors.purple.shade200,
            ),
            GButton(
              icon: Icons.location_on_outlined,
              iconActiveColor: Colors.purple.shade200,
            ),
            GButton(
              icon: Icons.calendar_month_outlined,
              iconActiveColor: Colors.purple.shade200,
            ),
            GButton(
              icon: Icons.person_2_outlined,
              iconActiveColor: Colors.purple.shade200,
            )
          ],
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.white], // Gradient colors
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 4), // changes position of shadow
                ),
              ],
            ),
            child: FloatingActionButton(
              backgroundColor:
                  Colors.transparent, // Set background color as transparent
              elevation: 0, // Remove default elevation
              shape: CircleBorder(),
              onPressed: () {
                // Add your action here
              },
              child: Icon(Icons.search, color: Colors.white),
            ),
          ),
        ),
      ]),
      appBar: AppBar(
        leading: Padding(
            padding: const EdgeInsets.all(15),
            child: Center(
              child: GestureDetector(
                child: Container(
                  height: 30,
                  width: 32,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(244, 243, 243, 1),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: const Center(
                      child: Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                  )),
                ),
              ),
            )),
        title: const Text(
          "Doctors",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w900,
            // fontFamily: 'Montserrat'
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              child: Container(
                height: 30,
                width: 32,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(244, 243, 243, 1),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: const Center(
                    child: Icon(
                  Icons.more_horiz,
                  size: 15,
                )),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Row(
                children: [
                  const Text(
                    "Favourite Doctor",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See All",
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 2, 14, 14),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                ),
                itemCount: doctordata.favdoctors.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                            decoration: BoxDecoration(
                              color:
                                  doctordata.favdoctors[index].backgroundColor,
                              image: DecorationImage(
                                  image: AssetImage(
                                doctordata.favdoctors[index].image,
                              )),
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.25),
                                  spreadRadius: 2,
                                  blurRadius: 8,
                                  offset: const Offset(0, 8),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                const Spacer(),
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0)),
                                    color: Colors.white,
                                  ),
                                  width: double.infinity,
                                  height: 65,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 4, 2, 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          doctordata.favdoctors[index].name,
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              doctordata.favdoctors[index]
                                                  .specialization,
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.blue),
                                            ),
                                            const SizedBox(width: 6),
                                            Expanded(
                                              child: Text(
                                                '@ ${doctordata.favdoctors[index].hospital}',
                                                // maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  fontSize: 10,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              doctordata
                                                  .favdoctors[index].rating
                                                  .toString(),
                                              style:
                                                  const TextStyle(fontSize: 11),
                                            ),
                                            const SizedBox(width: 6),
                                            RatingBarIndicator(
                                                itemCount: 5,
                                                itemSize: 12,
                                                rating: doctordata
                                                    .favdoctors[index].rating,
                                                itemBuilder: (context, _) =>
                                                    const Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                    )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                      const Positioned(
                          right: 20,
                          top: 20,
                          child: Icon(
                            Icons.favorite,
                            size: 20,
                            color: Colors.pink,
                          ))
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Row(
                children: [
                  const Text(
                    "Top Doctors",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See All",
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: doctordata.doctors.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(14, 7, 14, 16),
                    child: Container(
                      height: 90,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 2,
                              blurRadius: 8,
                              offset: const Offset(
                                  0, 8), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18)),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              gradient: RadialGradient(colors: [
                                Colors.white,
                                doctordata.doctors[index].backgroundColor
                              ], radius: 0.45),
                              color: doctordata.doctors[index].backgroundColor,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            width: 100,
                            child: Image.asset(doctordata.doctors[index].image),
                          ),
                          const SizedBox(width: 12),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  doctordata.doctors[index].name,
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      doctordata.doctors[index].specialization,
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.blue),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      '@ ${doctordata.doctors[index].hospital}',
                                      style: const TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(doctordata.doctors[index].rating
                                        .toString()),
                                    const SizedBox(width: 6),
                                    RatingBarIndicator(
                                        itemCount: 5,
                                        itemSize: 14,
                                        rating:
                                            doctordata.doctors[index].rating,
                                        itemBuilder: (context, _) => const Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ))
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
