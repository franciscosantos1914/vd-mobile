import 'package:dio/dio.dart';

class Http {
  final String url = 'https://provider.vidadigital.co.ao/api/mobile';
  final Dio dio = Dio();

  Future Login(data) async {
    final response = await dio.post(url + '/login');
    print(response);
  }

  Future Logout(id) async {
    final response = await dio.get(url + '/logout');
    print(response);
  }

  Future getJobs() async {
    final response = await dio.get(url + '/jobs');
    return response;
  }

  Future getSingleJob(id) async {
    final response = await dio.get(url + '/jobs');
    print(response);
  }

  Future saveJob(data) async {
    final response = await dio.post(url + '/jobs');
    print(response);
  }

  Future updateJob(id, data) async {
    final response = await dio.post(url + '/updateJob');
    print(response);
  }

  Future deleteJob(id) async {
    final response = await dio.get(url + '/delJob');
    print(response);
  }

  Future getRepos() async {
    final response = await dio.get(url + '/repos');
    print(response);
  }

  Future getSingleRepo(id) async {
    final response = await dio.get(url + '/repos');
    print(response);
  }

  Future saveRepo(data) async {
    final response = await dio.post(url + '/repos');
    print(response);
  }

  Future updateRepo(id, data) async {
    final response = await dio.post(url + '/updateRepo');
    print(response);
  }

  Future deleteRepo(id) async {
    final response = await dio.get(url + '/delRepo');
    print(response);
  }

  Future getUsers() async {
    final response = await dio.get(url + '/users');
    print(response);
  }

  Future getSingleUser(id) async {
    final response = await dio.get(url + '/users');
    print(response);
  }

  Future saveUser(data) async {
    final response = await dio.post(url + '/users');
    print(response);
  }

  Future updateUser(id, data) async {
    final response = await dio.post(url + '/updateUser');
    print(response);
  }

  Future deleteUser(id) async {
    final response = await dio.get(url + '/delUser');
    print(response);
  }
}
