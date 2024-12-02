import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/login2/edit_profile2/edit_profile2_widget.dart';
import 'dart:math';
import 'createprofile2_widget.dart' show Createprofile2Widget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Createprofile2Model extends FlutterFlowModel<Createprofile2Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for editProfile2 component.
  late EditProfile2Model editProfile2Model;

  @override
  void initState(BuildContext context) {
    editProfile2Model = createModel(context, () => EditProfile2Model());
  }

  @override
  void dispose() {
    editProfile2Model.dispose();
  }
}
