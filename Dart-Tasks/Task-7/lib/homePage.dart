import 'package:ebookwithdetail/CosmosApp.dart';
import 'package:ebookwithdetail/FirstPage.dart';
import 'package:ebookwithdetail/list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              leading: const Icon(
                Icons.sort,
                size: 36,
              ),
              backgroundColor: Colors.white,
              title: const Text(
                'GDSC BOOKSTORE',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 229, 233, 236),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        margin: const EdgeInsets.only(top: 10),
                        child: TextFormField(
                          style: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0)),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Looking for...",
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 126, 125, 125)),
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 70, 69, 69),
                        size: 30.0,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.13,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 50, 107, 212),
                    borderRadius: BorderRadius.circular(17.0),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.tune,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 180,
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Color.fromARGB(255, 21, 74, 173),
                  Color.fromARGB(133, 35, 80, 163),
                ]),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Sep 23, 2023',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 36.0),
                        child: Icon(Icons.pause, size: 34, color: Colors.white),
                      ),
                      Text(
                        'Today a reader',
                        style: TextStyle(
                            height: 0.1,
                            color: Colors.white70,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 36.0),
                        child: Icon(Icons.pause,
                            size: 34,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ],
                  ),
                  Text(
                    'tomorrow a',
                    style: TextStyle(
                        height: 0.1,
                        color: Colors.white70,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'LEADER',
                    style: TextStyle(
                        color: Color.fromARGB(236, 255, 255, 255),
                        fontSize: 45,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.g_translate,
                        color: Colors.white,
                        size: 25.0,
                      ),
                      SizedBox(
                        width: 22.0,
                      ),
                      Icon(
                        Icons.bookmark,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      SizedBox(
                        width: 22.0,
                      ),
                      Icon(Icons.share, color: Colors.white, size: 30.0),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.94,
              child: const Text(
                "Categories",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(228, 4, 4, 4),
                  fontSize: 26.0,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Container(
                          width: 90,
                          height: 40,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 94, 90, 90)
                                    .withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 5),
                              ),
                            ],
                            color: const Color.fromARGB(255, 227, 226, 239),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 4, 0),
                                    child: Icon(Icons.biotech,
                                        color: Colors.black)),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  child: Text(
                                    "Health",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 94, 90, 90)
                                    .withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 5),
                              ),
                            ],
                            color: const Color.fromARGB(255, 227, 226, 239),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 4, 0),
                                    child: Icon(Icons.science,
                                        color: Colors.black)),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  child: Text(
                                    "Science",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 94, 90, 90)
                                    .withOpacity(0.5), // Shadow color
                                spreadRadius: 2,
                                blurRadius: 5, // Blur radius
                                offset: const Offset(0, 5),
                              ),
                            ],
                            color: const Color.fromARGB(255, 227, 226, 239),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 2, 0),
                                    child: Icon(Icons.precision_manufacturing,
                                        color: Colors.black)),
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: 8.0,
                                  ),
                                  child: Text(
                                    "Technology",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 94, 90, 90)
                                    .withOpacity(0.5), // Shadow color
                                spreadRadius: 2,
                                blurRadius: 5, // Blur radius
                                offset: const Offset(0, 5),
                              ),
                            ],
                            color: const Color.fromARGB(255, 227, 226, 239),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 2, 0),
                                    child: Icon(Icons.psychology_outlined,
                                        color: Colors.black)),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                  child: Text(
                                    "Philosophy",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 94, 90, 90)
                                    .withOpacity(0.5), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 5, // Blur radius
                                offset: const Offset(0, 5),
                              ),
                            ],
                            color: const Color.fromARGB(255, 227, 226, 239),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 2, 0),
                                    child: Icon(Icons.history_edu_rounded,
                                        color: Colors.black)),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  child: Text(
                                    "History",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.88,
                    child: const Text(
                      "Recommendation",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Color.fromARGB(234, 0, 0, 0),
                        fontSize: 26.0,
                      ),
                    ),
                  ),
                ),
                const Icon(
                  Icons.navigate_next_outlined,
                  size: 30.0,
                  color: Colors.black54,
                ),
              ],
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
                      Get.to(() => CosmosHome(details: Rdetail[index]),
                          transition: Transition.rightToLeftWithFade,
                          duration: const Duration(seconds: 2) * 0.5);
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 200,
                            width: 140,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black
                                      .withOpacity(0.8), // Shadow color
                                  spreadRadius: 2, // Spread radius
                                  blurRadius: 8, // Blur radius
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
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
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Text(
                      "New",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Color.fromARGB(218, 0, 0, 0),
                        fontSize: 29.0,
                      ),
                    ),
                  ),
                ),
                const Icon(
                  Icons.navigate_next_outlined,
                  size: 30.0,
                  color: Colors.black54,
                ),
              ],
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
                      Get.to(() => CosmosHome(details: Ndetail[index]),
                          transition: Transition.rightToLeftWithFade,
                          duration: const Duration(seconds: 2) * 0.5);
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 200,
                            width: 140,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black
                                      .withOpacity(0.8), // Shadow color
                                  spreadRadius: 2, // Spread radius
                                  blurRadius: 8, // Blur radius
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                image: AssetImage(ReimgURL[index]),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            recommended[index],
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Text(
                      "Trending",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Color.fromARGB(218, 0, 0, 0),
                        fontSize: 29.0,
                      ),
                    ),
                  ),
                ),
                const Icon(
                  Icons.navigate_next_outlined,
                  size: 30.0,
                  color: Colors.black54,
                ),
              ],
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
                      Get.to(() => CosmosHome(details: Tdetail[index]),
                          transition: Transition.rightToLeftWithFade,
                          duration: const Duration(seconds: 2) * 0.5);
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 200,
                            width: 140,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black
                                      .withOpacity(0.8), // Shadow color
                                  spreadRadius: 2, // Spread radius
                                  blurRadius: 8, // Blur radius
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                image: AssetImage(TreimgURL[index]),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            Trending[index],
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
        // ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: true,
        onTap: (value) {},
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.home),
              color: Colors.black,
              iconSize: 40,
              onPressed: () {
                Get.to(() => const Firstpage(),
                    transition: Transition.fadeIn,
                    duration: const Duration(seconds: 1));
              },
            ),
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Icon(
                Icons.menu_book_rounded,
                color: Colors.black,
                size: 40,
              ),
            ),
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.view_comfy_outlined,
              color: Colors.black,
              size: 40,
            ),
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.source_rounded,
              color: Colors.black,
              size: 40,
            ),
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
              color: Colors.black,
              size: 40,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
