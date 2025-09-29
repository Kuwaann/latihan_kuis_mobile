import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_kuis_mobile/models/movies_data.dart';
import 'package:latihan_kuis_mobile/screens/detailpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 0, 36),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0), 
          child: Container(
            color: const Color.fromARGB(255, 255, 255, 255), 
          ),
        ),
        title: Text(
          "TonTon",
          style: GoogleFonts.dynaPuff(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.w900,
          ),
          ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 2, 0, 36),
                Color.fromARGB(255, 16, 15, 19),
              ],
            )
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search for movies",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 121, 117, 182)
                    ),
                    suffixIcon: Icon(Icons.search, color: Color.fromARGB(255, 85, 187, 255)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 33, 30, 88)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 33, 30, 88)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: ElevatedButton(
                          onPressed: (){}, 
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 85, 187, 255),
                            elevation: 0,
                          ),
                          child: Text(
                            "Trending",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: (){}, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 12, 10, 46),
                          elevation: 0,
                          side: BorderSide(color: Colors.transparent),
                        ),
                        child: Text(
                          "For You",
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: (){}, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 12, 10, 46),
                          elevation: 0,
                          side: BorderSide(color: Colors.transparent),
                        ),
                        child: Text(
                          "Horror",
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: (){}, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 12, 10, 46),
                          elevation: 0,
                          side: BorderSide(color: Colors.transparent),
                        ),
                        child: Text(
                          "Action",
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: (){}, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 12, 10, 46),
                          elevation: 0,
                          side: BorderSide(color: Colors.transparent),
                        ),
                        child: Text(
                          "Drama",
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 129, 225, 255).withOpacity(0.3),
                        spreadRadius: 4,
                        blurRadius: 10,
                      ),
                      BoxShadow(
                        color: const Color.fromARGB(255, 250, 255, 187).withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 10,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset("assets/images/loginthumbnail.jpg")
                  ),
                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Explore Trending Movies",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        ),
                      Text(
                        "View More",
                        style: TextStyle(
                          color: Color.fromARGB(255, 85, 187, 255),
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),
                        ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 30),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16, 
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.7, // Ubah nilai ini untuk mengatur tinggi item
                ), 
                itemBuilder: (context, index){
                  return _moviesList(context, index);
                },
                itemCount: movieList.length,
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      )
    );
  }

  Widget _moviesList(context, int index){
    return Ink(
      decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => DetailPage(index: index),
          ));
        },
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Image.network(
                    alignment: Alignment.center,
                    movieList[index].imgUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                movieList[index].title,
                maxLines: 1,
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w400,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}