import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/login2/edit_profile2/edit_profile2_widget.dart';
import 'edit_profile_pending_widget.dart' show EditProfilePendingWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfilePendingModel
    extends FlutterFlowModel<EditProfilePendingWidget> {
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
