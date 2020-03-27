import 'dart:async';
import 'dart:convert';
import 'dart:io';

void main()
{
  var numbers = new File('points.json')
    .readAsString()
    .then((String contents) {
      print(contents);
    });
}
