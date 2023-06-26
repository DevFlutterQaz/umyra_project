import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';

class SureWidget extends StatefulWidget {
  final String arabName;
  final String description;
  final int numberSura;
  final int index;
  final String audio;
  const SureWidget({
    super.key,
    required this.arabName,
    required this.description,
    required this.numberSura,
    required this.index,
    required this.audio,
  });

  @override
  State<SureWidget> createState() => _SureWidgetState();
}

class _SureWidgetState extends State<SureWidget> {
  final AudioPlayer audioplayer = AudioPlayer();
  bool isPlaying = false;
  bool isMount = true;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    audioplayer.onPlayerStateChanged.listen((event) {
      isMount
          ? setState(() {
              isPlaying = event == PlayerState.PLAYING;
            })
          : null;
    });
    super.initState();
    audioplayer.onDurationChanged.listen((event) {
      isMount
          ? setState(() {
              duration = event;
            })
          : null;
    });

    audioplayer.onAudioPositionChanged.listen((event) {
      isMount
          ? setState(() {
              position = event;
            })
          : null;
    });
  }

  @override
  void dispose() {
    audioplayer.dispose();
    isMount = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.darkBlue,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '1:${widget.numberSura.toString()}',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: AppColors.whiteColor),
            ),
            const ColumnSpacer(1.7),
            Text(
              widget.arabName,
              textAlign: TextAlign.end,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: AppColors.whiteColor),
            ),
            const ColumnSpacer(1.2),
            Text(
              widget.description,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: AppColors.whiteColor),
            ),
            const ColumnSpacer(1.6),
            Container(
              decoration: const BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () async {
                      if (isPlaying) {
                        await audioplayer.pause();
                      } else {
                        // await audioplayer.release();
                        String url = widget.audio;
                        log(url);
                        await audioplayer.play(url);
                      }
                    },
                    icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                    iconSize: 30,
                  ),
                  // Slider(
                  //   min: 0,
                  //   inactiveColor: AppColors.lightgrayColor6,
                  //   activeColor: AppColors.darkBlue2,
                  //   max: duration.inSeconds.toDouble(),
                  //   value: position.inSeconds.toDouble(),
                  //   onChanged: (value) async {
                  //     final position = Duration(seconds: value.toInt());
                  //     await audioplayer.seek(position);

                  //     await audioplayer.resume();
                  //   },
                  // ),
                  Text(formatTime(position)),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text(formatTime(position)),
                  //     Text(formatTime(duration - position)),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }
}
