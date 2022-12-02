// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:meditation/features/meditation/presentation/constants/colors.dart';
import 'package:meditation/features/meditation/presentation/constants/textstyle.dart';
import 'package:meditation/features/meditation/presentation/screens/sleep/rubbish/rubbish_data.dart';

class Rubbish extends StatefulWidget {
  const Rubbish({Key? key}) : super(key: key);

  @override
  State<Rubbish> createState() => _RubbishState();
  showToast() {
    Fluttertoast.showToast(
      msg: "msg",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER_LEFT,
      backgroundColor: kGreen,
    );
  }
}

class _RubbishState extends State<Rubbish> {
  UniqueKey? keyTile;
  bool isExpanded = false;

  void expandTile() {
    setState(() {
      isExpanded = true;
      keyTile = UniqueKey();
    });
  }

  void shrinkTile() {
    setState(() {
      isExpanded = false;
      keyTile = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kLemonGreen,
        title: const Text(
          "Rubbish",
          style: TextStyle(
            color: kBlack,
          ),
        ),
      ),
      extendBody: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Fluttertoast.showToast(
                msg: "TOAST MESSAGE",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.CENTER_LEFT,
                backgroundColor: kGreen,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: kLightSunOrange,
              ),
              child: const Text(
                "nothing here",
                style: kw300size16colBlack,
              ),
            ),
            ExpansionTile(
              childrenPadding: const EdgeInsets.only(bottom: 20),
              tilePadding: const EdgeInsets.only(left: 20, right: 20),
              leading: const Icon(Icons.ac_unit_outlined),
              title: const Text("Expansion Tile"),
              maintainState: true,
              children: [
                ...List.generate(
                  5,
                  (index) => Text(
                    index.toString(),
                  ),
                ),
              ],
              onExpansionChanged: (d) {
                print(d);
              },
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(color: kBlack, width: 2),
              ),
              elevation: 3,
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () => isExpanded ? shrinkTile() : expandTile(),
                      child: buildImage()),
                  buildText(context),
                ],
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: ListView(
                shrinkWrap: true,
                children: basicTilesList
                    .map((tile) => BasicTileWidget(tile: tile))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildImage() => SvgPicture.asset(
        "assets/vectors/meadows.svg",
        fit: BoxFit.cover,
        height: 300,
      );

  Widget buildText(BuildContext context) => ExpansionTile(
        key: keyTile,
        initiallyExpanded: isExpanded,
        childrenPadding: const EdgeInsets.all(15).copyWith(top: 0),
        title: const Text(
          "ExpansionTile",
          style: kw700size18colBlack,
        ),
        children: const [
          Text(
              "A single-line ListTile with an expansion arrow icon that expands or collapses the tile to reveal or hide the children. This widget is typically used with ListView to create an 'expand / collapse' list entry. When used with scrolling widgets like ListView, a unique PageStorageKey must be specified to enable the ExpansionTile to save and restore its expanded state when it is scrolled in and out of view., ")
        ],
      );
}

class BasicTileWidget extends StatelessWidget {
  final BasicTile tile;
  const BasicTileWidget({Key? key, required this.tile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = tile.title;
    final tiles = tile.tiles;
    if (tiles.isEmpty) {
      return ListTile(
        title: Text(title),
        onTap: () => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("tapped!"),
            backgroundColor: kLemonGreen,
          ),
        ),
      );
    } else {
      return ExpansionTile(
        title: Text(title),
        children: tiles.map((tile) => BasicTileWidget(tile: tile)).toList(),
      );
    }
  }
}
