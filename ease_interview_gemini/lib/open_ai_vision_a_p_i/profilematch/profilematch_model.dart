import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/suggestioncard_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/open_ai_vision_a_p_i/loading_widget/loading_widget_widget.dart';
import 'dart:async';
import 'dart:math';
import '/custom_code/actions/index.dart' as actions;
import 'profilematch_widget.dart' show ProfilematchWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfilematchModel extends FlutterFlowModel<ProfilematchWidget> {
  ///  Local state fields for this page.

  bool showResponse = false;

  String sample = '';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (profilematchgeminipro)] action in Button widget.
  ApiCallResponse? aiResponse;
  // Stores action output result for [Custom Action - convertToJson] action in Button widget.
  dynamic? finalResponse;
  // Models for Suggestioncard dynamic component.
  late FlutterFlowDynamicModels<SuggestioncardModel> suggestioncardModels;

  @override
  void initState(BuildContext context) {
    suggestioncardModels =
        FlutterFlowDynamicModels(() => SuggestioncardModel());
  }

  @override
  void dispose() {
    suggestioncardModels.dispose();
  }
}
