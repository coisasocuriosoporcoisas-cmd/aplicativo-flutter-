import 'package:flutter_application_1/features/chat/domain/entities/conversa.dart';

sealed class ConversaListEvent {}

class ConversaListInitialize extends ConversaListEvent{}

class ConversaListDuplicateConversa extends ConversaListEvent{
  final Conversa conversa;
  ConversaListDuplicateConversa({required this.conversa});
}