import 'package:flutter/material.dart';
import 'package:lineup/utils/colors.dart';
import 'package:lineup/utils/positions.dart';

class CustomPlayerWidget extends StatefulWidget {
  final String playerName;
  final String playerUrl;
  final String position;

  const CustomPlayerWidget({
    super.key,
    required this.playerName,
    required this.playerUrl,
    required this.position,
  });

  @override
  State<CustomPlayerWidget> createState() => _CustomPlayerWidgetState();
}

class _CustomPlayerWidgetState extends State<CustomPlayerWidget> {
  bool _show = false;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: getCoordinates(widget.position).leftPercentage *
            MediaQuery.of(context).size.width,
        top: getCoordinates(widget.position).topPercentage *
            MediaQuery.of(context).size.height,
        child: _show
            ? foundPlayer(widget.playerName, widget.playerUrl)
            : notFoundPlayer());
  }

  Widget foundPlayer(String playerName, String playerUrl) {
    return Column(
      children: [
        CircleAvatar(
          radius: 22.0,
          backgroundColor: AppColors.primaryLight,
          backgroundImage: NetworkImage(playerUrl),
        ),
        Container(
          width: 75.0,
          decoration: BoxDecoration(
            color: AppColors.secondary,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Center(
            child: Text(
              playerName,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 13,
                color: AppColors.secondaryDark,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }

  Widget notFoundPlayer() {
    return Column(
      children: [
        const CircleAvatar(
          radius: 22.0,
          backgroundColor: AppColors.secondaryDark,
          child: Icon(Icons.question_mark, color: AppColors.primaryLight),
        ),
        Container(
          width: 75.0,
        ),
      ],
    );
  }

  void show() {
    // Add your logic here to show the player widget
    setState(() {
      _show = true;
    });
  }
}
