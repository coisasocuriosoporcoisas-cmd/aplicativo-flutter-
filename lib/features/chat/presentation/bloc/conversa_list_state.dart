import 'package:flutter_application_1/features/chat/presentation/pages/conversa_list_page.dart';

sealed class ConversaListState {}

class ConversaListLoading extends ConversaListState{}

class ConversaListSuccess extends ConversaListState{
  final List <ConversaListPage> conversas;
  ConversaListSuccess({required this.conversas});
}

class ConversaListeFailure extends ConversaListState{
  final String msg;
  ConversaListeFailure({required this.msg});
}