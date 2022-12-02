

class BasicTile {
  final String title;
  final List<BasicTile> tiles;
  BasicTile({this.tiles = const [], required this.title});
}

final basicTilesList = <BasicTile>[
  BasicTile(
    title: "Country",
    tiles: [
      BasicTile(title: "India"),
      BasicTile(title: "Canada"),
      BasicTile(title: "USA"),
    ],
  ),
  BasicTile(
    title: "Dates",
    tiles: [
      BasicTile(title: "2020", tiles: buildMonths()),
      BasicTile(title: "2021", tiles: []),
      BasicTile(title: "2022"),
    ],
  )
];

List<BasicTile> buildMonths() => [
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
    ].map<BasicTile>(buildMonth).toList();

BasicTile buildMonth(String month) => BasicTile(title: month);
