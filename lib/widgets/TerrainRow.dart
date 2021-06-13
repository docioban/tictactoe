import 'package:flutter/material.dart';
import 'package:tic_tac_toe/widgets/TerrainCell.dart';

class TerrainRow extends StatelessWidget {
  final int column;

  TerrainRow({required this.column});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TerrainCell(row: 0, column: column),
        ),
        Expanded(child: TerrainCell(row: 1, column: column)),
        Expanded(child: TerrainCell(row: 2, column: column)),
      ],
    );
  }
}