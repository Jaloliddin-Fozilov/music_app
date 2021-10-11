import 'package:flutter/material.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

import '../models/list_model.dart';

class PlayerPage extends StatefulWidget {
  @override
  State<PlayerPage> createState() => _PlayerPageState();
  final List<ListModeli> royxatlar;
  final int id;
  PlayerPage(this.royxatlar, this.id);
}

class _PlayerPageState extends State<PlayerPage> {
  Duration progress = Duration(milliseconds: 150000);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            overflow: Overflow.visible,
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(250),
                  bottomRight: Radius.circular(250),
                ),
                child: Image.network(
                  "${widget.royxatlar[widget.id].image}",
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 300,
                child: Container(
                  width: 250,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.skip_previous,
                          size: 36,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.pause_circle_outline,
                          size: 36,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.skip_next,
                          size: 36,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 50, left: 40, right: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "PLAYLIST",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 10),
                        ),
                        Text(
                          "${widget.royxatlar[widget.id].name}",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_drop_down_circle_outlined,
                        color: Colors.black54,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            size: 18,
                            color: Colors.red,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.loop,
                            size: 18,
                            color: Colors.black54,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shuffle,
                            size: 18,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${widget.royxatlar[widget.id].musician}",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                      Text(
                        "${widget.royxatlar[widget.id].name}",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz,
                      color: Colors.black54,
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 55, right: 70, top: 10),
                child: ProgressBar(
                  progress: progress,
                  total: widget.royxatlar[widget.id].total,
                  progressBarColor: Colors.red,
                  baseBarColor: Colors.red.withOpacity(0.24),
                  bufferedBarColor: Colors.red.withOpacity(0.24),
                  thumbColor: Colors.red,
                  timeLabelLocation: TimeLabelLocation.above,
                  timeLabelType: TimeLabelType.totalTime,
                  barHeight: 2.0,
                  thumbRadius: 6.0,
                  onSeek: (duration) {
                    setState(() {
                      progress = duration;
                    });
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
