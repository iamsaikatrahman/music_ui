import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_ui/model/audio_model.dart';
import 'package:music_ui/model/data.dart';
import 'package:music_ui/views/play_audio_screen.dart';
import 'package:music_ui/widget/common_widget.dart';

class NavigationRailBody extends StatelessWidget {
  const NavigationRailBody({
    Key? key,
    required this.screenWidth,
    required this.title,
  }) : super(key: key);

  final double screenWidth;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF09D15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          buildHeaderTitle(
            title: 'Browse ' + title + ' Podcast',
            isPlaying: false,
          ),
          SizedBox(height: 15),
          Expanded(
            child: Container(
              width: screenWidth,
              padding: EdgeInsets.only(top: 30, right: 10, left: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                ),
              ),
              child: SingleChildScrollView(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: audioList.length,
                  itemBuilder: (context, index) {
                    AudioModel audioModel = audioList[index];
                    return GestureDetector(
                      onTap: () {
                        Get.to(PlayAudioScreen(
                          audioModel: audioList[index],
                        ));
                      },
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          child: ListTile(
                            leading: Image.network(
                              audioModel.audioImgUrl,
                              width: 50,
                            ),
                            title: Text(audioModel.name),
                            subtitle: Text(
                              audioModel.composer,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
