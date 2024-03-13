// ignore_for_file: file_names

import 'package:ebookwithdetail/DataModel.dart';
import 'package:ebookwithdetail/homePage.dart';
import 'package:ebookwithdetail/list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class CosmosHome extends StatelessWidget {
  final Model details;
  const CosmosHome({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.48,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(details.url),
                      colorFilter: const ColorFilter.mode(
                          Colors.black45, BlendMode.darken),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back_ios_rounded),
                            onPressed: () {
                              Get.to(() => const Homepage(),
                                  transition: Transition.rightToLeftWithFade,
                                  duration: const Duration(seconds: 2) * 0.6);
                            },
                            color: const Color.fromARGB(255, 233, 231, 231),
                            iconSize: 32,
                          ),
                          IconButton(
                            icon: const Icon(Icons.more_vert_outlined),
                            onPressed: () {},
                            color: const Color.fromARGB(255, 255, 255, 255),
                            iconSize: 35,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.55,
                  height: MediaQuery.of(context).size.height * 0.28,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.15,
                      left: MediaQuery.of(context).size.width * 0.225),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        width: 2),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(details.url),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 215, 213, 213),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    details.name,
                    style: const TextStyle(
                        color: Color.fromARGB(214, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text('Book by Some Guy | 2h 30m',
                        style: TextStyle(fontWeight: FontWeight.w600)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: RatingBarIndicator(
                      itemBuilder: (_, __) => const Icon(
                          Icons.star_purple500_outlined,
                          color: Color.fromARGB(255, 255, 111, 0)),
                      rating: 3.5,
                      itemCount: 5,
                      itemSize: 20,
                      unratedColor: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.white),
                          child: const Center(
                              child: Text('Free',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color:
                                          Color.fromARGB(255, 151, 150, 150)))),
                        ),
                        Container(
                          width: 60,
                          height: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.white),
                          child: const Center(
                            child: Icon(Icons.favorite_border_rounded,
                                color: Color.fromARGB(255, 117, 117, 117)),
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.white),
                          child: const Center(
                            child: Icon(Icons.share,
                                color: Color.fromARGB(255, 117, 117, 117)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 10, right: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 6,
                          height: 30,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 111, 0),
                              borderRadius: BorderRadius.circular(6)),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Text(
                          'Book Information',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 9.0),
                      child: Text(
                        'It is one of the bestselling science books of all time. In clear-eyed prose, Sagan reveals a jewel-like blue world inhabited by a life form that is just starting to comprehend the universe.',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 95, 95, 95)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    //----------------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 6,
                          height: 30,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 111, 0),
                              borderRadius: BorderRadius.circular(6)),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Text(
                          'About Author',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 9.0),
                      child: Text(
                        'It is one of the bestselling science books of all time. In clear-eyed prose, Sagan reveals a jewel-like blue world inhabited by a life form that is just starting to comprehend the universe.',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 95, 95, 95)),
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'User Review',
                          style: TextStyle(fontSize: 20),
                        ),
                        Icon(
                          Icons.navigate_next,
                          size: 33,
                        )
                      ],
                    ),

                    const SizedBox(height: 7),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.07,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/profile.png"),
                              ),
                              borderRadius: BorderRadius.circular(35)),
                        ),
                        const SizedBox(
                          width: 17,
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'OLIMARS',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 143, 143, 143),
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'This is Amazing Book',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              'Oct 2023',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 143, 143, 143),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 25),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Related Books',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.w400),
                          ),
                          Icon(
                            Icons.navigate_next,
                            size: 33,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 260,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: imgURL.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CosmosHome(
                                    details: Rdetail[index],
                                  ),
                                ),
                              );
                            },
                            child: (details.url != Rdetail[index].url)
                                ? Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 200,
                                          width: 140,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(
                                                    0.8), // Shadow color
                                                spreadRadius:
                                                    2, // Spread radius
                                                blurRadius: 8, // Blur radius
                                                offset: const Offset(0, 3),
                                              ),
                                            ],
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(10)),
                                            image: DecorationImage(
                                              image: AssetImage(imgURL[index]),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          books[index],
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : Container(),
                          );
                        },
                      ),
                    ),

                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.58,
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 56, 56, 56)
                                  .withOpacity(0.7), // Shadow color
                              // Spread radius
                              blurRadius: 8, // Blur radius
                              offset: const Offset(0, 5),
                            ),
                          ],
                          color: const Color.fromARGB(255, 18, 117, 255),
                          borderRadius: BorderRadius.circular(25)),
                      child: const Center(
                        child: Text(
                          'Start Reading',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const SizedBox(height: 90),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
