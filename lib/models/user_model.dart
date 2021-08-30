class UserModel {
  final username;
  final email;
  final password;

  UserModel({this.username, this.email, this.password});
}

List<UserModel> dummyData = [
  new UserModel(
      username: 'Francisco dos Santos',
      email: 'jp21011900@gmail.com',
      password: '**********'),
  new UserModel(
      username: 'Bonifácio Fernandes',
      email: 'bf21011900@gmail.com',
      password: '**********'),
  new UserModel(
      username: 'Hélio Francisco',
      email: 'jhf900@gmail.com',
      password: '**********'),
  new UserModel(
      username: 'António Jacinto',
      email: 'antonio@gmail.com',
      password: '**********'),
  new UserModel(
      username: 'Mauro Sebastião',
      email: 'mauro@sebastiao.co',
      password: '**********')
];
