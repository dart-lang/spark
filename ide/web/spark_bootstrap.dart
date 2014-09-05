// Copyright (c) 2014, Google Inc. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/**
 * This script initializes Spark when run in a non-deployed build.
 */
library spark.bootstrap;

import 'package:polymer/polymer.dart';
import 'package:spark_widgets/common/spark_widget.dart';
import 'package:spark_widgets/spark_button/spark_button.dart';
import 'package:spark_widgets/spark_dialog/spark_dialog.dart';
import 'package:spark_widgets/spark_dialog_button/spark_dialog_button.dart';
import 'package:spark_widgets/spark_icon/spark_icon.dart';
import 'package:spark_widgets/spark_menu/spark_menu.dart';
import 'package:spark_widgets/spark_menu_button/spark_menu_button.dart';
import 'package:spark_widgets/spark_menu_item/spark_menu_item.dart';
import 'package:spark_widgets/spark_menu_separator/spark_menu_separator.dart';
import 'package:spark_widgets/spark_modal/spark_modal.dart';
import 'package:spark_widgets/spark_overlay/spark_overlay.dart';
import 'package:spark_widgets/spark_progress/spark_progress.dart';
import 'package:spark_widgets/spark_selection/spark_selection.dart';
import 'package:spark_widgets/spark_selector/spark_selector.dart';
import 'package:spark_widgets/spark_splitter/spark_splitter.dart';
import 'package:spark_widgets/spark_split_view/spark_split_view.dart';
import 'package:spark_widgets/spark_status/spark_status.dart';
// Unused: import 'package:spark_widgets/spark_suggest_box/spark_suggest_box.dart';
// Unused: import 'package:spark_widgets/spark_toggle_button/spark_toggle_button.dart';
import 'package:spark_widgets/spark_toolbar/spark_toolbar.dart';
// Unused: import 'package:spark_widgets/spark_tree_view/spark_tree_view.dart';

import 'lib/ui/commit_message_view/commit_message_view.dart';
import 'lib/ui/goto_line_view/goto_line_view.dart';
import 'spark_polymer_ui.dart';

void registerWidgetsWithPolymer() {
  // Init Polymer.
  startPolymer([], false);

  // Register Polymer components (ones that are actually used in the app).
  // NOTE: The order is important, following the dependency graph.
  Polymer.register('spark-widget', SparkWidget);

  Polymer.register('spark-button', SparkButton);
  Polymer.register('spark-overlay', SparkOverlay);
  Polymer.register('spark-modal', SparkModal);
  Polymer.register('spark-dialog', SparkDialog);
  Polymer.register('spark-dialog-button', SparkDialogButton);
  Polymer.register('spark-icon', SparkIcon);
  Polymer.register('spark-selection', SparkSelection);
  Polymer.register('spark-selector', SparkSelector);
  Polymer.register('spark-menu-item', SparkMenuItem);
  Polymer.register('spark-menu-separator', SparkMenuSeparator);
  Polymer.register('spark-menu', SparkMenu);
  Polymer.register('spark-menu-button', SparkMenuButton);
  Polymer.register('spark-progress', SparkProgress);
  Polymer.register('spark-splitter', SparkSplitter);
  Polymer.register('spark-split-view', SparkSplitView);
  Polymer.register('spark-status', SparkStatus);
  // Unused: suggest-box
  // Unused: toggle-button
  Polymer.register('spark-toolbar', SparkToolbar);
  // Unused: tree-view

  Polymer.register('commit-message-view', CommitMessageView);
  Polymer.register('goto-line-view', GotoLineView);
  Polymer.register('spark-polymer-ui', SparkPolymerUI);
}
