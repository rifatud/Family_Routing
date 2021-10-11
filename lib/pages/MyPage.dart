import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  final String name;
  final String text_under_title;
  final Color background_color;
  final String email;
  final String bio;

  const MyPage({
    Key? key,
    required String this.name,
    required String this.text_under_title,
    required Color this.background_color,
    required String this.email,
    required String this.bio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: background_color,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 50),
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.network("https://picsum.photos/200"),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 8, top: 15, bottom: 14),
                          child: Text(
                            name,
                            style: TextStyle(
                              fontSize: 30,
                              color: Color(0xff79838B),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 0,
                            bottom: 0,
                          ),
                          child: Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xffB8C5D0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 14),
                          child: Text(
                            email,
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff79838B),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            "Position",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xffB8C5D0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 14),
                          child: Text(
                            text_under_title,
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff79838B),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            'Address',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xffB8C5D0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 14),
                          child: Text(
                            'Dhaka',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff79838B),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 20, bottom: 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            onPressed: () {},
                            child: Text(
                              'ABOUT',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                              ),
                            ),
                            color: Color(0xff4BC9FE),
                            textColor: Colors.white,
                          ),
                        ),
                        Container(
                          height: 30,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            onPressed: () {},
                            child: Text(
                              'WORK',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                              ),
                            ),
                            color: Colors.white,
                            textColor: Color(0xff4BC9FE),
                          ),
                        ),
                        Container(
                          height: 30,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            onPressed: () {},
                            child: Text(
                              'ACTIVITY',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                              ),
                            ),
                            color: Colors.white,
                            textColor: Color(0xff4BC9FE),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(17),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          'BIO',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff8E99A1),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0),
                        child: Text(
                          bio,
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff6B7379),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Back'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
