import '/components/jobcard_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'jobr_search_widget.dart' show JobrSearchWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class JobrSearchModel extends FlutterFlowModel<JobrSearchWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for jobcard component.
  late JobcardModel jobcardModel;

  @override
  void initState(BuildContext context) {
    jobcardModel = createModel(context, () => JobcardModel());
  }

  @override
  void dispose() {
    jobcardModel.dispose();
  }
}
