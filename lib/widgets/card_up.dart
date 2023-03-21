import 'package:flutter/material.dart';

class CardUp extends StatelessWidget {
  const CardUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal:50.0),
      padding: const EdgeInsets.all(5),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          //margin: const EdgeInsets.symmetric(horizontal: 50),
          width: MediaQuery.of(context).size.width * 0.6,
          height: MediaQuery.of(context).size.height*0.35,
          child: Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://genesisairway.com/wp-content/uploads/2019/05/no-image.jpg',
                    fit: BoxFit.cover,
                  )),
              const SizedBox(
                height: 8,
              ),
              const Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal:8.0),
                    child: Text(
                      'Elazığda bugün bol miktarda yağmur yağdı',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  )),
          
             /* const Text(
                  'Bugün olan yoğun yağıştan ötürü yollar kapandı. Kapanan yolları belediye araçları açtı.'),
            */],
          ),
        ),
      ),
    );
  }
}