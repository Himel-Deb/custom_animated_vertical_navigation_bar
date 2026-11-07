import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:navigation_vertical/profile_card/widget/popularity.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 5,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: 500,
            width: 350,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: AlignmentGeometry.bottomCenter,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(20),
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Image.network(
                          "https://thumbs.dreamstime.com/b/photo-beautiful-skyscape-daytime-sun-rays-cloudy-skyphoto-sky-285949962.jpg?w=768",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Positioned(
                      bottom: -60,
                      child: CircleAvatar(
                        radius: 70,
                        child: CircleAvatar(
                          radius: 63,
                          backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLKuR2lL42YNnrQ0Rqg4V_pcbWtNNkjsCyWvXWMjv7jA&s=10",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60),
                Text(
                  "Hi I am a Flutter developer",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 20),

                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Popularity(title: '72.9k', subTitle: 'Likes'),
                      Popularity(title: '856', subTitle: 'Posts'),
                      Popularity(title: '432.7k', subTitle: 'Views'),
                    ],
                  ),
                ),

                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: (){},
                     icon: FaIcon(FontAwesomeIcons.instagram)
                    ),
                    IconButton(onPressed: (){},
                     icon: FaIcon(FontAwesomeIcons.x)
                    ),
                    IconButton(onPressed: (){},
                     icon: FaIcon(FontAwesomeIcons.linkedin)
                    )
                  ],
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
