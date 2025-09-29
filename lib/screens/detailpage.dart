import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_kuis_mobile/models/movies_data.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  final int index;
  const DetailPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 0, 36),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 2, 0, 36),
                  Color.fromARGB(255, 2, 0, 36),
                ],
              ),
            ),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                    color: Colors.black,
                    width: double.infinity,
                    height: 250,
                    child: Image.network(
                      movieList[index].imgUrl,
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.play_arrow), 
                        color: Colors.white.withOpacity(0.9),
                        iconSize: 60,),
                    )
                  ]
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                          Colors.black,
                          Color.fromARGB(255, 2, 0, 36),
                        ]
                        )
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${movieList[index].title}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "${movieList[index].year}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              Container(
                                width: 1,
                                height: 10, // sesuaikan tinggi dengan kebutuhan
                                color: Colors.white,
                                margin: EdgeInsets.symmetric(horizontal: 10),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.orange, size: 15),
                                  SizedBox(width: 5),
                                  Text(
                                    "${movieList[index].rating}",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 1,
                                height: 10, // sesuaikan tinggi dengan kebutuhan
                                color: Colors.white,
                                margin: EdgeInsets.symmetric(horizontal: 10),
                              ),
                              Text(
                                "${movieList[index].genre}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              Container(
                                width: 1,
                                height: 10, // sesuaikan tinggi dengan kebutuhan
                                color: Colors.white,
                                margin: EdgeInsets.symmetric(horizontal: 10),
                              ),
                              Container(
                                height: 20,
                                child: ElevatedButton(
                                  onPressed: (){
                                    _launchWikipedia(movieList[index].movieUrl);
                                  }, 
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white.withOpacity(0.1),
                                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  child: Text(
                                    "Wikipedia",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  )),
                              )
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(
                            "${movieList[index].synopsis}",
                            style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w100,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Director",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              Text(
                                "${movieList[index].director}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                          ],
                          ),
                          SizedBox(height: 15),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Casts",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15),
                                SizedBox(
                                  height: 50,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal, 
                                    itemCount: movieList[index].casts.length,
                                    itemBuilder: (context, castIndex) {
                                      return Container(
                                        margin: EdgeInsets.only(right: 12),
                                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.1),
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: Center(
                                          child: Text(
                                            movieList[index].casts[castIndex],
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                )
                  
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 30, // sesuaikan dengan kebutuhan
            left: 10,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                shape: BoxShape.circle
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget _castList(context, int movieIndex, int castIndex){
  //   return Text(
  //     movieList[movieIndex].casts[castIndex],
  //     style: TextStyle(
  //       color: Colors.white,
  //       fontSize: 15,
  //       fontWeight: FontWeight.w200,
  //     ),
      
  //     );
  // }

  Future<void> _launchWikipedia(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Tidak bisa membuka $uri');
    }
  }
}