import 'package:flutter/material.dart';
import 'package:shop_store/colors/colors.dart';

class TextCreation extends StatelessWidget {
  const TextCreation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(
          'Create Post',
          style: TextStyle(fontSize: 20, color: black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 20),
            child: Text(
              'Post',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w800, color: black),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Mathan Thiruvenkadam',
                        style: header.copyWith(
                          color: black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 120,
                        color: Colors.grey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.person,
                            ),
                            Text(
                              'Friends',
                              style: header.copyWith(
                                color: black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              minLines:
                  6, // any number you need (It works as the rows for the textarea)
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(hintText: 'Write a Message'),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: color.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Container(
                      height: 80,
                      width: 80,
                      color: color[index],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.image,
                  color: Colors.green,
                ),
                SizedBox(width: 20),
                Text(
                  'Photo/Videos',
                  style: header.copyWith(fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.person_add,
                  color: Color.fromARGB(255, 44, 33, 243),
                ),
                SizedBox(width: 20),
                Text(
                  'Tag friends',
                  style: header.copyWith(fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.red,
                ),
                SizedBox(width: 20),
                Text(
                  'Add Location',
                  style: header.copyWith(fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.face,
                  color: Color.fromARGB(255, 232, 189, 37),
                ),
                SizedBox(width: 20),
                Text(
                  'Feeling/Activity',
                  style: header.copyWith(fontSize: 18),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.video_call,
                  color: Colors.red,
                ),
                SizedBox(width: 20),
                Text(
                  'Go Live',
                  style: header.copyWith(fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 18, 40, 208),
                  border: Border.all(color: black, width: 2)),
              child: Text(
                'Post',
                style: header.copyWith(
                    fontSize: 18, color: black, fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}

List<Color> color = [
  red,
  black,
  liteyellow,
  liteBlack,
  Colors.yellow,
  Colors.green,
  Colors.blue,
  Colors.amber,
];
