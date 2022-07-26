import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../welcome_page/welcome_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthPageWidget extends StatefulWidget {
  const AuthPageWidget({Key? key}) : super(key: key);

  @override
  _AuthPageWidgetState createState() => _AuthPageWidgetState();
}

class _AuthPageWidgetState extends State<AuthPageWidget>
    with TickerProviderStateMixin {
  TextEditingController? confirmPasswordController;
  late bool confirmPasswordVisibility;
  TextEditingController? fullNameController;
  TextEditingController? signUpEmailAddressController;
  TextEditingController? singUpPasswordController;
  late bool singUpPasswordVisibility;
  TextEditingController? emailAddressController;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'textFieldOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 200,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 40),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 200,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 60),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 200,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 40),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 200,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 40),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 200,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 60),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 200,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 60),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    confirmPasswordController = TextEditingController();
    confirmPasswordVisibility = false;
    fullNameController = TextEditingController();
    signUpEmailAddressController = TextEditingController();
    singUpPasswordController = TextEditingController();
    singUpPasswordVisibility = false;
    emailAddressController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          FFLocalizations.of(context).getText(
            'od3zxm2j' /* Welcome */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'data:image/png;base64,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',
                      width: 200,
                      height: 80,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                Expanded(
                  child: DefaultTabController(
                    length: 2,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        TabBar(
                          labelColor: FlutterFlowTheme.of(context).primaryColor,
                          labelStyle: FlutterFlowTheme.of(context).bodyText1,
                          indicatorColor:
                              FlutterFlowTheme.of(context).secondaryColor,
                          tabs: [
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'a7sxytaa' /* Login */,
                              ),
                            ),
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'x3s7y6ys' /* Sign Up */,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 16, 0, 0),
                                    child: TextFormField(
                                      controller: emailAddressController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'xe525qz3' /* Email Address */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'w3yzkghq' /* Enter your email here... */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .lineColor,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(40),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .lineColor,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(40),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16, 24, 0, 24),
                                        prefixIcon: Icon(
                                          Icons.alternate_email,
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ).animated([
                                      animationsMap[
                                          'textFieldOnPageLoadAnimation1']!
                                    ]),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 16, 0, 0),
                                      child: TextFormField(
                                        controller: passwordController,
                                        obscureText: !passwordVisibility,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'ghzupazx' /* Password */,
                                          ),
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2,
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            '339mnnn2' /* Enter your email here... */,
                                          ),
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(40),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(40),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 24, 24, 24),
                                          suffixIcon: InkWell(
                                            onTap: () => setState(
                                              () => passwordVisibility =
                                                  !passwordVisibility,
                                            ),
                                            focusNode:
                                                FocusNode(skipTraversal: true),
                                            child: Icon(
                                              passwordVisibility
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                      .visibility_off_outlined,
                                              color: Color(0xFF57636C),
                                              size: 22,
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ).animated([
                                        animationsMap[
                                            'textFieldOnPageLoadAnimation2']!
                                      ]),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            final user = await signInWithEmail(
                                              context,
                                              emailAddressController!.text,
                                              passwordController!.text,
                                            );
                                            if (user == null) {
                                              return;
                                            }

                                            await Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    WelcomePageWidget(),
                                              ),
                                              (r) => false,
                                            );
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'dd0rkp11' /* Login */,
                                          ),
                                          options: FFButtonOptions(
                                            width: 130,
                                            height: 40,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Colors.white,
                                                    ),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 16, 0, 0),
                                    child: TextFormField(
                                      controller: fullNameController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          '5duhczen' /* Name */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'd9hq1trr' /* Please enter your full name */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .lineColor,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(40),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .lineColor,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(40),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16, 24, 0, 24),
                                        prefixIcon: Icon(
                                          Icons.alternate_email,
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ).animated([
                                      animationsMap[
                                          'textFieldOnPageLoadAnimation3']!
                                    ]),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 16, 0, 0),
                                    child: TextFormField(
                                      controller: signUpEmailAddressController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'i5rqjjit' /* Email Address */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          '6wtzesa4' /* Enter your email here... */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .lineColor,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(40),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .lineColor,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(40),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16, 24, 0, 24),
                                        prefixIcon: Icon(
                                          Icons.alternate_email,
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ).animated([
                                      animationsMap[
                                          'textFieldOnPageLoadAnimation4']!
                                    ]),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 16, 0, 0),
                                    child: TextFormField(
                                      controller: singUpPasswordController,
                                      obscureText: !singUpPasswordVisibility,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'btrafv9i' /* Password */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'wmf907nx' /* Enter your password */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .lineColor,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(40),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .lineColor,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(40),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16, 24, 24, 24),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => singUpPasswordVisibility =
                                                !singUpPasswordVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            singUpPasswordVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: Color(0xFF57636C),
                                            size: 22,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ).animated([
                                      animationsMap[
                                          'textFieldOnPageLoadAnimation5']!
                                    ]),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 16, 0, 0),
                                    child: TextFormField(
                                      controller: confirmPasswordController,
                                      obscureText: !confirmPasswordVisibility,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          '1xke27gy' /* Confirm Password */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'r0a7vdgb' /* Enter your password again */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .lineColor,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(40),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .lineColor,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(40),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16, 24, 24, 24),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => confirmPasswordVisibility =
                                                !confirmPasswordVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            confirmPasswordVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: Color(0xFF57636C),
                                            size: 22,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ).animated([
                                      animationsMap[
                                          'textFieldOnPageLoadAnimation6']!
                                    ]),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 16, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              if (singUpPasswordController
                                                      ?.text !=
                                                  confirmPasswordController
                                                      ?.text) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Passwords don\'t match!',
                                                    ),
                                                  ),
                                                );
                                                return;
                                              }

                                              final user =
                                                  await createAccountWithEmail(
                                                context,
                                                signUpEmailAddressController!
                                                    .text,
                                                singUpPasswordController!.text,
                                              );
                                              if (user == null) {
                                                return;
                                              }

                                              final usersCreateData =
                                                  createUsersRecordData(
                                                email:
                                                    signUpEmailAddressController!
                                                        .text,
                                                displayName:
                                                    fullNameController!.text,
                                              );
                                              await UsersRecord.collection
                                                  .doc(user.uid)
                                                  .update(usersCreateData);

                                              await Navigator
                                                  .pushAndRemoveUntil(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      WelcomePageWidget(),
                                                ),
                                                (r) => false,
                                              );
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'uqu4dfun' /* Sign Up */,
                                            ),
                                            options: FFButtonOptions(
                                              width: 130,
                                              height: 40,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                      ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
