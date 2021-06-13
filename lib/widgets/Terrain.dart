import 'package:flutter/material.dart';
import 'TerrainRow.dart';

class Terrain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          children: [
            Expanded(
              child: TerrainRow(column: 0),
            ),
            Expanded(
              child: TerrainRow(column: 1),
            ),
            Expanded(
              child: TerrainRow(column: 2),
            ),
          ],
        ),
      ),
    );
  }
}