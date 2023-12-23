class Accounts {
  final String name;
  final String message;
  final String time;
  final String imageurl;
  final int msgcount;
  Accounts(
      {required this.name,
      required this.message,
      required this.time,
      required this.imageurl,
      required this.msgcount});
}

List<Accounts> chats = [
  Accounts(
    name: 'Greg',
    message: 'Good morning, what\'s your plan for today',
    time: '6:0 AM',
    imageurl: 'images/9.jpg',
    msgcount: 1,
  ),
  Accounts(
    name: 'sam',
    message: 'Wanna chat randomly with other users?',
    time: '2:34 PM',
    imageurl: 'images/3.jpg',
    msgcount: 2,
  ),
  Accounts(
    name: 'Aries',
    message: 'I will call you',
    time: '1:02 PM',
    imageurl: 'images/20.jpg',
    msgcount: 0,
  ),
  Accounts(
    name: 'Charlie',
    message: 'I\'m so excited to see you',
    time: '7:28 PM',
    imageurl: 'images/62.jpg',
    msgcount: 1,
  ),
  Accounts(
    name: 'Steve',
    message: 'You realize that\'s not in USA right',
    time: '11:4 PM',
    imageurl: 'images/33.jpg',
    msgcount: 3,
  ),
  Accounts(
    name: 'Sofia',
    message: 'Charlie wants to talk to you',
    time: '5:05 PM',
    imageurl: 'images/17.jpg',
    msgcount: 0,
  ),
  Accounts(
    name: 'Jacob',
    message: 'Good night',
    time: '9:33 PM',
    imageurl: 'images/46.jpeg',
    msgcount: 0,
  ),
  Accounts(
    name: 'Betty',
    message: 'I did not type that message, I am sure about that',
    time: '2:22 PM',
    imageurl: 'images/86.jpg',
    msgcount: 0,
  ),
  Accounts(
    name: 'Isabella',
    message: 'Sounds nice, let\'s do it tommorow',
    time: '6:34 PM',
    imageurl: 'images/84.jpg',
    msgcount: 1,
  ),
];
