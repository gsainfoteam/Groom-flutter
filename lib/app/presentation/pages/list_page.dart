import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groom_flutter/app/domain/entities/user_entity.dart';
import 'package:groom_flutter/app/domain/entities/user_list_entity.dart';
import 'package:groom_flutter/app/presentation/bloc/user_list_bloc.dart';
import 'package:groom_flutter/app/presentation/widgets/profile_card_widget.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key, required this.uuid});
  final int uuid;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserListBloc()..add(UserListEvent.load(uuid)),
      child: Scaffold(
        appBar: AppBar(title: const Text("Groom-App")),
        body: BlocBuilder<UserListBloc, UserListState>(
          builder: (context, state) {
            return state.when(
              init: () {
                return Center(child: Text("유저 리스트를 준비 중입니다."));
              },
              loading: () {
                return Center(child: CircularProgressIndicator());
              },
              done: (UserListEntity userListEntity) {
                List<UserEntity> userList = userListEntity.list;
                return Container(
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
                  child: ListView.builder(
                    itemCount: userListEntity.count,
                    itemBuilder: (context, index) {
                      return ProfileCardWidget(user: userList[index]);
                    },
                  ),
                );
              },
              error: (String e) {
                return Center(child: Text("오류가 발생하였습니다\n$e"));
              },
            );
          },
        ),
      ),
    );
  }
}
