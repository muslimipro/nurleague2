import 'package:flutter/material.dart';

class LeagueTable extends StatefulWidget {
  @override
  _LeagueTableState createState() => _LeagueTableState();
}

class _LeagueTableState extends State<LeagueTable> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DataTable(
          columnSpacing: 30.0,
          sortColumnIndex: 4,
          sortAscending: false,
          columns: [
            DataColumn(
                label:
                    Text('Pos', style: TextStyle(fontWeight: FontWeight.w900)),
                numeric: true),
            DataColumn(
                label: Text('Team',
                    style: TextStyle(fontWeight: FontWeight.w900))),
            DataColumn(
                label:
                    Text('GP', style: TextStyle(fontWeight: FontWeight.w900)),
                numeric: true),
            DataColumn(
                label:
                    Text('GD', style: TextStyle(fontWeight: FontWeight.w900)),
                numeric: true),
            DataColumn(
                label:
                    Text('PS', style: TextStyle(fontWeight: FontWeight.w900)),
                numeric: true),
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(Text('1')),
                DataCell(Container(
                  width: 200,
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/logos/chelsea-fc.png'),
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(width: 10),
                      Text('Chelsea'),
                    ],
                  ),
                )),
                DataCell(Text('25')),
                DataCell(Text('15')),
                DataCell(Text('68')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('2')),
                DataCell(Container(
                  width: 200,
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/logos/arsenal-fc.png'),
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(width: 10),
                      Text('Arsenal'),
                    ],
                  ),
                )),
                DataCell(Text('25')),
                DataCell(Text('10')),
                DataCell(Text('67')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('3')),
                DataCell(Container(
                  width: 200,
                  child: Row(
                    children: [
                      Image(
                        image:
                            AssetImage('assets/logos/manchester-united-fc.png'),
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(width: 10),
                      Text('Manchester'),
                    ],
                  ),
                )),
                DataCell(Text('25')),
                DataCell(Text('9')),
                DataCell(Text('70')),
              ],
            )
          ]),
    );
  }
}
