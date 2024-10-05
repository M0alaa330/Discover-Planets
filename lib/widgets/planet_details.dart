import 'package:discover_planets/fonts/font_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlanetsDetailsWidget extends StatefulWidget {
  const PlanetsDetailsWidget(
      {super.key,
      required this.image,
      required this.desc,
      required this.name,
      required this.video});
  final String? image;
  final String? desc;
  final String? name;
  final String? video;

  @override
  State<PlanetsDetailsWidget> createState() => _PlanetsDetailsWidgetState();
}

class _PlanetsDetailsWidgetState extends State<PlanetsDetailsWidget> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(widget.video ?? '');
    _controller = YoutubePlayerController(
        initialVideoId: videoId ?? '',
        flags: const YoutubePlayerFlags(autoPlay: false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String cleantext = widget.desc!
        .replaceAll('\n', ' ')
        .replaceAll(RegExp(r'\s+'), ' ')
        .trim();
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(widget.image!), fit: BoxFit.fill)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      )),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                Center(
                  child: Text(
                    widget.name!,
                    style: fontStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        text: cleantext,
                        style: textstyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white)),
                    textDirection: TextDirection.ltr,
                    maxLines: 100,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: YoutubePlayer(
                      controller: _controller,
                      showVideoProgressIndicator: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
