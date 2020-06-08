import 'package:flutter/material.dart';

class PageModel {
  String _title;
  String _image;
  String _description;
  IconData _icons;

  PageModel(this._title, this._image, this._description, this._icons);

  String get title => _title;

  String get image => _image;

  String get description => _description;

  IconData get icons => _icons;
}
