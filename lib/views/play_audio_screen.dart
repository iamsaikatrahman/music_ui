import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_ui/controller/audio_controller.dart';
import 'package:music_ui/controller/playControl.dart';
import 'package:music_ui/model/audio_model.dart';
import 'package:music_ui/widget/common_widget.dart';
import 'package:music_ui/widget/controls_widget.dart';

class PlayAudioScreen extends StatelessWidget {
  final AudioModel audioModel;

  const PlayAudioScreen({Key? key, required this.audioModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Now Playing",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            buildHeaderTitle(
              title: audioModel.name,
              isPlaying: true,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: screenHeight * 0.4,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      audioModel.audioImgUrl,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
              child: GetBuilder<AudioController>(
                init: AudioController(),
                builder: (value) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      (value.position == null)
                          ? ''
                          : value.position.toString().split('.').first,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      (value.totalDuration == null)
                          ? ''
                          : value.totalDuration.toString().split('.').first,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliderTheme(
              data: SliderThemeData(
                trackHeight: 5,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
              ),
              child: GetBuilder<AudioController>(
                init: AudioController(),
                builder: (value) => Slider(
                  value: value.position == null
                      ? 0
                      : value.position!.inMilliseconds.toDouble(),
                  activeColor: Color(0xff6f3d2e),
                  inactiveColor: Color(0xffedd3cb),
                  onChanged: (vlue) {
                    value.seekAudio(Duration(milliseconds: vlue.toInt()));
                  },
                  min: 0,
                  max: value.totalDuration == null
                      ? 20
                      : value.totalDuration!.inMilliseconds.toDouble(),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Controls(
                //   icon: Icons.repeat,
                // ),
                Controls(
                  icon: Icons.skip_previous,
                ),
                PlayControl(
                  musicUrl: audioModel.audioUrl,
                ),
                Controls(
                  icon: Icons.skip_next,
                ),
                // Controls(
                //   icon: Icons.shuffle,
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
