import 'package:flutter/material.dart';
import 'package:flutter_ui_concept_actors_profile/animations/fade_animation.dart';
import 'package:flutter_ui_concept_actors_profile/widgets/make_video.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 450,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  background: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Sans-titre-3.jpg'),
                          fit: BoxFit.cover),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.black,
                          Colors.black.withOpacity(.3)
                        ]),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const FadeAnimation(
                              1,
                              Text(
                                "Fabrice SAWEGNON",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: const [
                                FadeAnimation(
                                  1.2,
                                  Text(
                                    "Make it happen !",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16),
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "DG de Voodoo Group",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const FadeAnimation(
                            1.6,
                            Text(
                              "Directeur Général de Voodoo Group le premier Groupe de communication d’Afrique noire francophone, il est Président de plusieurs médias, notamment de  Life TV, Life Radio et Elle.ci des médias généralistes miroirs de la jeunesse ivoirienne et qui contribuent à la révélation des talents locaux.",
                              style: TextStyle(color: Colors.grey, height: 1.4),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const FadeAnimation(
                            1.6,
                            Text(
                              "Né le",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const FadeAnimation(
                            1.6,
                            Text(
                              "18 Janvier 1972, Abidjan, Côte d'Ivoire",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const FadeAnimation(
                            1.6,
                            Text(
                              "Nationalité",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const FadeAnimation(
                            1.6,
                            Text(
                              "Ivoirienne",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const FadeAnimation(
                            1.6,
                            Text(
                              "Videos",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FadeAnimation(
                            1.8,
                            SizedBox(
                              height: 200,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  makeVideo(
                                      image:
                                          'assets/images/Cyber-Conference-Africa-2022-5.jpg'),
                                  makeVideo(
                                      image: 'assets/images/FS-Cover.jpg'),
                                  makeVideo(image: 'assets/images/SIMA.jpg'),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 120,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned.fill(
            bottom: 50,
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xffcb1929),
                  ),
                  child: const Align(
                      child: Text(
                    "Suivre",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
