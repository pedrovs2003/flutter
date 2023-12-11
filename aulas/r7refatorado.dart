  import 'package:flutter/material.dart';

Expanded caixaExpanded(String text, double fonte, Color cor) {
    return Expanded(
      flex: 3,
      child: Container(
        alignment: Alignment.center,
        color: cor,
        child: Text(
          text,
          style: TextStyle(fontSize: fonte),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }