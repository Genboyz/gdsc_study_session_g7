import 'package:flutter/material.dart';
import 'package:project2/users.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  _Homepage createState() => _Homepage();
}

class _Homepage extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //var bold;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 12, 87, 148),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          iconSize: 25.0,
          color: const Color.fromARGB(255, 255, 255, 255),
          onPressed: () {},
        ),
        title: const Text(
          'Basic',
          style: TextStyle(
            fontSize: 23.0,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert_rounded),
            iconSize: 25.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.grey[400]),
              child: ListView.builder(
                  itemCount: chats.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Accounts chat = chats[index];
                    return Container(
                      margin: const EdgeInsets.only(
                          top: 2.0, bottom: 2.0, right: 5.0, left: 5.0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 18.0),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(17.0),
                            topRight: Radius.circular(17.0),
                            bottomLeft: Radius.circular(17.0),
                            bottomRight: Radius.circular(17.0),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 35.0,
                                backgroundImage: AssetImage(chat.imageurl),
                              ),
                              const SizedBox(width: 10.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(chat.name,
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  const SizedBox(height: 5.0),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                    child: Text(
                                      chat.message,
                                      style: const TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                chat.time,
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                width: 40.0,
                                height: 12.0,
                                alignment: Alignment.center,
                              ),
                              if (chat.msgcount > 0) ...[
                                CircleAvatar(
                                  backgroundColor:
                                      const Color.fromARGB(255, 17, 195, 26),
                                  radius: 13,
                                  child: Text(
                                    "${chat.msgcount}",
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ] else ...[
                                const Icon(
                                  Icons.done_all,
                                  color: Colors.blueAccent,
                                ),
                              ],
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
