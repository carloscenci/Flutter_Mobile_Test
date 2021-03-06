// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:new_project/app.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: App(),
    theme: ThemeData(primarySwatch: Colors.blueGrey),
    debugShowCheckedModeBanner: false,
  ));
}
