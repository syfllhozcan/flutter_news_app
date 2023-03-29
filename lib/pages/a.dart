// ignore_for_file: sized_box_for_whitespace, use_key_in_widget_constructors, camel_case_types
/*
import 'package:flutter/material.dart';
import 'package:news_app/constands/failed_picture.dart';

class A extends StatelessWidget {
  const A({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
        backgroundColor: const Color(0xffea4f5e),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          //UpCardScrollWidget(),
          const SizedBox(
            height: 15,
          ),
          card2(),
          const SizedBox(
            height: 15,
          ),
          card3(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 300,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  foregroundDecoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment(0.2, 0.3),
                      stops: [0.1, 1],
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(
                      'https://img.medyafaresi.com/rcman/Cw940h529q95gc/storage/files/images/2023/03/07/6-mart-2023-reyting-sonuclari-fox-haber-alparslan-buyuk-selcuklu-omer-yasak-elma-3ToN.jpg',
                      fit: BoxFit.fitHeight,
                      colorBlendMode: BlendMode.color,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: Text(
                    'Elazığda bugün bol miktarda yağmur yağdı',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class card3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 300,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            foregroundDecoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0.1, 1],
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                'https://img.medyafaresi.com/rcman/Cw940h529q95gc/storage/files/images/2023/03/07/6-mart-2023-reyting-sonuclari-fox-haber-alparslan-buyuk-selcuklu-omer-yasak-elma-3ToN.jpg',
                fit: BoxFit.fitHeight,
                colorBlendMode: BlendMode.color,
              ),
            ),
          ),
          const Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Text(
              'Elazığda bugün bol miktarda yağmur yağdı',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 300,
            /* foregroundDecoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0, 1],
              ),
            ),*/
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.1), BlendMode.dstATop),
              child: Image.network(
                'https://img.medyafaresi.com/rcman/Cw940h529q95gc/storage/files/images/2023/03/07/6-mart-2023-reyting-sonuclari-fox-haber-alparslan-buyuk-selcuklu-omer-yasak-elma-3ToN.jpg',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          const Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Text(
              'Elazığda bugün bol miktarda yağmur yağdı',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UpCardScrollWidget extends StatelessWidget {
  final String link;

  const UpCardScrollWidget({super.key, required this.link});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        
        margin: const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
        //width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black26,
          boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 3,
          blurRadius: 3,
          offset: const Offset(0, 2), // changes position of shadow
        ),
      ],
        ),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  link,
                  fit: BoxFit.cover,
                  height: 200,
                  width: 280,
                )),
          ],
        ),
      ),
    );
  }
}
*/
