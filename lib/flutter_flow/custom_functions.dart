import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import '../../auth/auth_util.dart';

String check(
  String you,
  String anser,
) {
  if (you == anser) {
    return 'https://media1.giphy.com/media/26tknCqiJrBQG6bxC/giphy.gif';
  }
  return 'https://media2.giphy.com/media/Wq9RLX06zRg4UM42Qf/200w.gif?cid=82a1493bu6tjcgp7ejm4lsegv1tua8gq704m09cua8mt7aiy&rid=200w.gif&ct=g';
}

String text(
  String kk,
  String aa,
) {
  if (kk == aa) {
    return '+1000';
  }
  return 'Try again';
}
