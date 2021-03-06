// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_gallery/demo/material/chip_demo.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Chip demo has semantic labels', (WidgetTester tester) async {
    final SemanticsHandle handle = tester.ensureSemantics();
    await tester.pumpWidget(new MaterialApp(
      theme: new ThemeData(platform: TargetPlatform.iOS),
      home: new ChipDemo(),
    ));

    expect(tester.getSemanticsData(find.byIcon(Icons.vignette)), matchesSemanticsData(
      isButton: true,
      hasEnabledState: true,
      isEnabled: true,
      hasTapAction: true,
      label: 'Update border shape',
    ));

    expect(tester.getSemanticsData(find.byIcon(Icons.refresh)), matchesSemanticsData(
      isButton: true,
      hasEnabledState: true,
      isEnabled: true,
      hasTapAction: true,
      label: 'Reset chips',
    ));

    handle.dispose();
  });
}
