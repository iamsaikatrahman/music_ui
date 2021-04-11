import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_ui/controller/audio_controller.dart';

class PlayControl extends StatelessWidget {
  final String musicUrl;

  const PlayControl({Key? key, required this.musicUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AudioController>(
      init: AudioController(),
      builder: (value) => GestureDetector(
        onTap: () {
          value.audioState == "Playing"
              ? value.pauseAudio()
              : value.playAudio(musicUrl);
        },
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Color(0xffedd3cb),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-3, -4),
                  spreadRadius: -2,
                  blurRadius: 10)
            ],
          ),
          child: Stack(
            children: <Widget>[
              Center(
                child: Container(
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Color(0xff6f3d2e),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(-3, -4),
                            spreadRadius: -2,
                            blurRadius: 20)
                      ]),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Color(0xffedd3cb), shape: BoxShape.circle),
                  child: Center(
                      child: Icon(
                    value.audioState == "Playing"
                        ? Icons.pause
                        : Icons.play_arrow,
                    size: 50,
                    color: Color(0xff6f3d2e),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
