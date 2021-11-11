import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MifwWidget extends StatefulWidget {
  MifwWidget({Key key}) : super(key: key);

  @override
  _MifwWidgetState createState() => _MifwWidgetState();
}

class _MifwWidgetState extends State<MifwWidget> {
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  bool _loadingButton3 = false;
  bool _loadingButton4 = false;
  bool _loadingButton5 = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 150,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                    child: Image.network(
                      'https://png.pngtree.com/png-clipart/20190904/original/pngtree-hand-drawn-cartoon-purple-girl-hair-accessory-png-image_4477184.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    'Hello World',
                    style: FlutterFlowTheme.bodyText1,
                  ),
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: '2000',
                    options: FFButtonOptions(
                      width: 100,
                      height: 35,
                      color: Color(0xFFE09F34),
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 12,
                    ),
                    loading: _loadingButton1,
                  )
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
          child: Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                  child: Image.network(
                    'https://w7.pngwing.com/pngs/381/684/png-transparent-clothing-accessories-pink-m-fashion-cartoon-crown.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  'Hello World',
                  style: FlutterFlowTheme.bodyText1,
                ),
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: '2000',
                  options: FFButtonOptions(
                    width: 100,
                    height: 35,
                    color: Color(0xFFE09F34),
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                  loading: _loadingButton2,
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
          child: Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                  child: Image.network(
                    'https://png.pngtree.com/element_our/20190528/ourmid/pngtree-rose-red-bow-png-free-material-image_1133426.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  'Hello World',
                  style: FlutterFlowTheme.bodyText1,
                ),
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: '2000',
                  options: FFButtonOptions(
                    width: 100,
                    height: 35,
                    color: Color(0xFFE09F34),
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                  loading: _loadingButton3,
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
          child: Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                  child: Image.network(
                    'https://img.pikbest.com/png-images/qiantu/pink-bow-cartoon-ribbon_2605480.png!wc340wm',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  'Hello World',
                  style: FlutterFlowTheme.bodyText1,
                ),
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: '2000',
                  options: FFButtonOptions(
                    width: 100,
                    height: 35,
                    color: Color(0xFFE09F34),
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                  loading: _loadingButton4,
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 150,
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                      child: Image.network(
                        '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',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      'Hello World',
                      style: FlutterFlowTheme.bodyText1,
                    ),
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: '2000',
                      options: FFButtonOptions(
                        width: 100,
                        height: 35,
                        color: Color(0xFFE09F34),
                        textStyle: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 12,
                      ),
                      loading: _loadingButton5,
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
