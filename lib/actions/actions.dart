import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

Future despachadorLogico(BuildContext context) async {
  List<PacientesRecord>? pacienteEncontrado;

  if (loggedIn) {
    pacienteEncontrado = await queryPacientesRecordOnce(
      queryBuilder: (pacientesRecord) => pacientesRecord.where(
        'email_invitado',
        isEqualTo: currentUserEmail,
      ),
      limit: 1,
    );
    if ((pacienteEncontrado).isNotEmpty) {
      await currentUserReference!.update(createUsersRecordData(
        rol: 'paciente',
      ));

      await pacienteEncontrado
          .elementAtOrNull(0)!
          .reference
          .update(createPacientesRecordData(
            userUidLink: currentUserUid,
          ));

      context.pushNamedAuth(HomePacienteWidget.routeName, context.mounted);
    } else {
      if (valueOrDefault(currentUserDocument?.rol, '') == 'psicologo') {
        context.pushNamedAuth(HomePsicologoWidget.routeName, context.mounted);
      } else {
        var confirmDialogResponse = await showDialog<bool>(
              context: context,
              builder: (alertDialogContext) {
                return AlertDialog(
                  title: Text('Cuenta no encontrada'),
                  content: Text(
                      'No encontramos una invitación para este correo. Si eres un paciente, contacta a tu psicólogo.'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(alertDialogContext, false),
                      child: Text('Salir'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(alertDialogContext, true),
                      child: Text('Soy psicólogo'),
                    ),
                  ],
                );
              },
            ) ??
            false;
        if (confirmDialogResponse) {
          await currentUserReference!.update(createUsersRecordData(
            rol: 'psicologo',
          ));

          context.pushNamedAuth(
              RegistroPsicologoWidget.routeName, context.mounted);
        } else {
          GoRouter.of(context).prepareAuthEvent();
          await authManager.signOut();
          GoRouter.of(context).clearRedirectLocation();
        }
      }
    }
  }
}
