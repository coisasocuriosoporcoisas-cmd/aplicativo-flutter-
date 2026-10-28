
import 'package:flutter_application_1/features/chat/domain/entities/conversa.dart';
import 'package:flutter_application_1/features/chat/infra/data/conversa_repository.dart';
import 'package:flutter_application_1/features/chat/presentation/bloc/conversa_list_event.dart';
import 'package:flutter_application_1/features/chat/presentation/bloc/conversa_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class ConversaListBloc extends Bloc<ConversaListEvent,ConversaListState> {
  final ConversaRepository conversaRepo = ConversaRepository();
  ConversaListBloc():super(ConversaListLoading()) {
    on<ConversaListInitialize>((event, emit) async {
      List<Conversa> dados = conversaRepo.conversas;
      await Future.delayed(Duration(seconds: 5));
      emit(ConversaListSuccess(conversas: dados));
      if(dados.isEmpty){
        emit(ConversaListSuccess(conversas: dados));
      }
      else {
        emit(ConversaListeFailure(msg: 'sem dados'));
      }

    });

    on<ConversaListDuplicateConversa>((event, emit) async{
      emit(ConversaListLoading());
      await Future.delayed(Duration(seconds: 1));

      conversaRepo.add(event.conversa);

    });

    add(ConversaListInitialize());
  }
}