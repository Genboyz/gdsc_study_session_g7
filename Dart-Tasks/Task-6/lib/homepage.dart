import 'package:e_book/list.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  _Homepage createState() {
    return _Homepage();
  }
}

class _Homepage extends State<Homepage> {
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
                    color: Color.fromARGB(255, 229, 233, 236),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 270,
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
            const Padding(
              padding: EdgeInsets.only(right: 240),
              child: Text(
                "Categories",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(228, 4, 4, 4),
                  fontSize: 30.0,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 100,
                    height: 50,
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
                              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Icon(Icons.biotech, color: Colors.black)),
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
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Container(
                    height: 50,
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
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Icon(Icons.science, color: Colors.black)),
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
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Container(
                    height: 50,
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
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Icon(Icons.precision_manufacturing,
                                  color: Colors.black)),
                          Padding(
                            padding: EdgeInsets.only(
                              right: 10.0,
                            ),
                            child: Text(
                              "Technology",
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 50,
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
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Icon(Icons.psychology_outlined,
                                  color: Colors.black)),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Text(
                              "Philosophy",
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
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 50,
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
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
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
            const SizedBox(height: 15),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 136, left: 12),
                  child: Text(
                    "Recommendation",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color.fromARGB(234, 0, 0, 0),
                      fontSize: 29.0,
                    ),
                  ),
                ),
                Icon(
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
                  return Padding(
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
                                color: Colors.black.withOpacity(0.8),
                                spreadRadius: 2,
                                blurRadius: 8,
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
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.yellow[900],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                            ),
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(
                                bottom: 148, left: 98, top: 11, right: 11),
                            child: const Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  '4.5', // Replace with your actual rating
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
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
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 304, left: 12),
                  child: Text(
                    "New",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color.fromARGB(218, 0, 0, 0),
                      fontSize: 29.0,
                    ),
                  ),
                ),
                Icon(
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
                  return Padding(
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
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 250, left: 12),
                  child: Text(
                    "Trending",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color.fromARGB(218, 0, 0, 0),
                      fontSize: 29.0,
                    ),
                  ),
                ),
                Icon(
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
                  return Padding(
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
                  );
                },
              ),
            ),
            const SizedBox(height: 15),
            BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: true,
              onTap: (value) {},
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.view_cozy_outlined,
                    color: Colors.black,
                    size: 40,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu_book_rounded,
                    color: Colors.black,
                    size: 40,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                    size: 40,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.source_rounded,
                    color: Colors.black,
                    size: 40,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_2_outlined,
                    color: Colors.black,
                    size: 40,
                  ),
                  label: "",
                ),
              ],
            )
          ],
        ),
        // ),
      ),
    );
  }
}
