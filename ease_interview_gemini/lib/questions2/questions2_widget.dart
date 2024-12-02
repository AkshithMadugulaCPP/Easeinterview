import '/components/question_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'questions2_model.dart';
export 'questions2_model.dart';

class Questions2Widget extends StatefulWidget {
  /// UI Layout
  /// Header Section
  /// Featured Image:
  ///
  /// Place a large, visually appealing image at the top of the screen.
  /// Ensure the image is responsive to different screen sizes and maintains its
  /// aspect ratio.
  /// Add a subtle gradient overlay if needed to improve text readability.
  /// Back Button:
  ///
  /// Position a back button in the top-left corner of the header.
  /// Use an icon (e.g., a left-facing arrow or "chevron") styled with a clean,
  /// minimalistic look.
  /// Apply touch-friendly padding around the button for better usability.
  /// Add a hover or pressed state animation (e.g., slight scaling or color
  /// change).
  /// Content Section
  /// Detailed Description:
  ///
  /// Below the featured image, include a text section for detailed
  /// descriptions.
  /// Support rich content formats like:
  /// Paragraphs: For general information.
  /// Bullet Points: For quick lists of features or benefits.
  /// Numbered Lists: For step-by-step instructions or rankings.
  /// Typography:
  ///
  /// Use contrasting fonts for headers and body text for better readability.
  /// Maintain consistent margins and padding to avoid visual clutter.
  /// Interactive Buttons:
  /// Button Row:
  ///
  /// Add a horizontal row of buttons for actions like Share, Save, or Bookmark.
  /// Use rounded edges to give buttons a modern, approachable look.
  /// Apply soft shadows for depth.
  /// Button Styling:
  ///
  /// Default State: Use vibrant or theme-consistent colors with bold
  /// text/icons.
  /// Hover/Pressed State: Add smooth transitions for color, scale, or shadow
  /// changes (e.g., slightly darker shade on press).
  /// Functionality
  /// Smooth Transition:
  /// Card Expansion:
  ///
  /// When the user selects a card, it should animate smoothly to fill the
  /// screen.
  /// Maintain context by transitioning elements (e.g., scaling and
  /// repositioning) instead of completely replacing them.
  /// Animation Libraries:
  ///
  /// Use animation libraries to create the effect:
  /// React Native: Use Animated or third-party libraries like
  /// react-navigation-shared-element.
  /// Flutter: Use Hero for seamless transitions or AnimatedContainer for custom
  /// animations.
  /// Swipe-Up Animation:
  /// Triggering Expansion:
  ///
  /// Detect swipe-up gestures using gesture recognizers (e.g., GestureDetector
  /// in Flutter or PanResponder in React Native).
  /// Animate the card expansion when a swipe-up is detected, transitioning to
  /// the detailed view.
  /// Animation Details:
  ///
  /// Duration: Keep the animation smooth (e.g., 300–500ms).
  /// Easing: Use easing functions (e.g., easeInOut) for a polished effect.
  /// Return Gesture/Action:
  /// Back Navigation:
  ///
  /// Implement a tap event on the back button to navigate to the previous
  /// screen.
  /// Use navigation stacks (Navigator.pop() in Flutter, goBack() in React
  /// Native) for smooth transitions.
  /// Swipe-Down Gesture:
  ///
  /// Add a swipe-down gesture to minimize the detail screen.
  /// Use animations to reverse the expansion (scale down and reposition the
  /// elements).
  /// Combine gesture and navigation logic for seamless usability.
  /// Additional Tips:
  /// Responsiveness: Ensure all elements adapt to different screen sizes and
  /// orientations.
  /// Accessibility: Use large touch targets, readable fonts, and proper color
  /// contrast.
  /// Performance Optimization: Optimize image loading (e.g., lazy loading,
  /// caching) and animation performance to prevent frame drops.
  const Questions2Widget({super.key});

  @override
  State<Questions2Widget> createState() => _Questions2WidgetState();
}

class _Questions2WidgetState extends State<Questions2Widget> {
  late Questions2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Questions2Model());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(25.0, 50.0, 10.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Questions',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Inter Tight',
                              fontSize: 28.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).primaryText,
                        borderRadius: 12.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        icon: Icon(
                          Icons.close_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(35.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Get AI Generated Questions to Crack the interview',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(35.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'CompanyName',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(35.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'JobTtile',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 10.0)),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Container(
                height: 250.0,
                child: Stack(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final questions = List.generate(
                              random_data.randomInteger(5, 5),
                              (index) => random_data.randomString(
                                    0,
                                    0,
                                    true,
                                    false,
                                    false,
                                  )).toList().take(10).toList();

                          return FlutterFlowSwipeableStack(
                            onSwipeFn: (index) {},
                            onLeftSwipe: (index) {},
                            onRightSwipe: (index) {},
                            onUpSwipe: (index) {},
                            onDownSwipe: (index) {},
                            itemBuilder: (context, questionsIndex) {
                              final questionsItem = questions[questionsIndex];
                              return Align(
                                alignment: AlignmentDirectional(-0.55, -1.22),
                                child: QuestionCardWidget(
                                  key: Key(
                                      'Keydut_${questionsIndex}_of_${questions.length}'),
                                  question: questionsItem,
                                ),
                              );
                            },
                            itemCount: questions.length,
                            controller: _model.swipeableStackController,
                            loop: false,
                            cardDisplayCount: 1,
                            scale: 0.0,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
