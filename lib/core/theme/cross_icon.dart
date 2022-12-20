import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CrossIcon {
  static IconData share = Platform.isIOS ? CupertinoIcons.share : Icons.share;
}
