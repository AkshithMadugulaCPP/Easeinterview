import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/suggestioncard_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/open_ai_vision_a_p_i/loading_widget/loading_widget_widget.dart';
import 'dart:async';
import 'dart:math';
import '/custom_code/actions/index.dart' as actions;
import 'coverletter_pending_widget.dart' show CoverletterPendingWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CoverletterPendingModel
    extends FlutterFlowModel<CoverletterPendingWidget> {
  ///  Local state fields for this page.

  bool showResponse = false;

  String sample = '';

  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (profilematchgeminipro)] action in Button widget.
  ApiCallResponse? aiResponse;
  // Stores action output result for [Custom Action - convertToJson] action in Button widget.
  dynamic? finalResponse;
  // Model for Suggestioncard component.
  late SuggestioncardModel suggestioncardModel;

  @override
  void initState(BuildContext context) {
    suggestioncardModel = createModel(context, () => SuggestioncardModel());
  }

  @override
  void dispose() {
    suggestioncardModel.dispose();
  }
}
