import 'dart:math' as math;

import 'package:flutter/material.dart';

num degToRad(num deg) => deg * (math.pi / 180.0);
num radToDeg(num rad) => rad * (180.0 / math.pi);
