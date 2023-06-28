import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/row_spacer.dart';

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
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  bool isMount = true;

  @override
  void initState() {
    super.initState();

    audioplayer.onPlayerStateChanged.listen((state) {
      setState(() => isPlaying = state == PlayerState.PLAYING);
    });
    // audioplayer.onDurationChanged.listen((newDuration) {
    //   log('New Position' + newDuration.toString());
    //   setState(() => duration = newDuration);
    // });

    // audioplayer.onAudioPositionChanged.listen((newPosition) {
    //   setState(() => position = newPosition);
    // });
  }

  @override
  void dispose() {
    // audioplayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          boxShadow: kElevationToShadow[6],
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    AppSvgImages.moonLittle,
                    height: 18,
                  ),
                  Text(
                    ' ${widget.numberSura}',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: AppColors.contentBlue4,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const ColumnSpacer(1.7),
              Text(
                widget.arabName,
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: AppColors.black, fontWeight: FontWeight.w500),
              ),
              const ColumnSpacer(1.2),
              Text(
                widget.description,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: AppColors.black, fontWeight: FontWeight.w300),
              ),
              const ColumnSpacer(1.6),
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.contentBlue4,
                      ),
                      child: IconButton(
                        onPressed: () async {
                          if (isPlaying) {
                            await audioplayer.pause();
                          } else {
                            await audioplayer.play(widget.audio);
                          }
                        },
                        icon: Icon(
                          isPlaying ? Icons.pause : Icons.play_arrow,
                          color: AppColors.whiteColor,
                        ),
                        iconSize: 24,
                      ),
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
                    // Text(formatTime(position)),
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
