import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'lista_historiales_model.dart';
export 'lista_historiales_model.dart';

/// Generate a page named "Document List" for the psychologist's application.
///
/// The screen must include a simple "AppBar" with the title "Patient Clinical
/// Files".
///
/// The body of the page must contain a "ListView" that generates items
/// dynamically from a list of URLs (List<String>) received as a page
/// parameter.
///
/// Each item in the ListView should be a card or "ListTile" containing:
/// 1. A PDF file Icon (colored blue or purple).
/// 2. A main Text element that reads: "Clinical Record - Session [Session
/// Number]".
/// 3. A navigation arrow (chevron icon) on the right.
///
/// The action upon tapping the card must be "Launch URL" to open the document
/// link corresponding to the current item in the list.
class ListaHistorialesWidget extends StatefulWidget {
  const ListaHistorialesWidget({
    super.key,
    required this.pacienteRef,
  });

  final DocumentReference? pacienteRef;

  static String routeName = 'ListaHistoriales';
  static String routePath = '/listaHistoriales';

  @override
  State<ListaHistorialesWidget> createState() => _ListaHistorialesWidgetState();
}

class _ListaHistorialesWidgetState extends State<ListaHistorialesWidget> {
  late ListaHistorialesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListaHistorialesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 20.0,
            buttonSize: 40.0,
            icon: Icon(
              Icons.arrow_back_outlined,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
            onPressed: () async {
              context.pushNamed(ListaPacientesPsicologoWidget.routeName);
            },
          ),
          title: Text(
            'Historiales clínicos',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.interTight(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  fontSize: 24.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: StreamBuilder<PacientesRecord>(
                  stream: PacientesRecord.getDocument(widget.pacienteRef!),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }

                    final listViewPacientesRecord = snapshot.data!;

                    return Builder(
                      builder: (context) {
                        final archivoItem = listViewPacientesRecord
                            .historialClinicoPdf
                            .toList();

                        return ListView.separated(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: archivoItem.length,
                          separatorBuilder: (_, __) => SizedBox(height: 8.0),
                          itemBuilder: (context, archivoItemIndex) {
                            final archivoItemItem =
                                archivoItem[archivoItemIndex];
                            return Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Material(
                                color: Colors.transparent,
                                child: ListTile(
                                  dense: false,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16.0, 8.0, 16.0, 8.0),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
