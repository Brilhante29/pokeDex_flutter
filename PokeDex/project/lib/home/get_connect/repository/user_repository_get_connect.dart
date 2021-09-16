import 'package:project/model/user_model.dart';
import 'package:project/repository/i_user_repository.dart';
import 'package:project/shared/rest_client.dart';

class UserRepositoryGetConnect implements IUserRepository {
  final RestClient restClient;

  UserRepositoryGetConnect(this.restClient);

  @override
  Future<List<UserModel>> findAllUsers() async {
    final response = await restClient
        .get('https://613e73d694dbd600172abbab.mockapi.io/api/pokemons',
            decoder: (body) {
      if (body is List) {
        return body.map<UserModel>((resp) => UserModel.fromMap(resp)).toList();
      }
      return null;
    });

    if (response.hasError) {
      throw Exception('Erro ao buscar usuários');
    }

    return response.body!;
  }
}
