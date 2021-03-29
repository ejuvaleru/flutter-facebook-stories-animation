class User {
  final String name;
  final String profilePicUrl;
  final String storiePicUrl;

  User({
    this.name,
    this.profilePicUrl,
    this.storiePicUrl,
  });
}


List<User> usuarios = [
  new User(name: 'Miguel Green',   profilePicUrl: 'https://randomuser.me/api/portraits/men/61.jpg', storiePicUrl: 'https://images.pexels.com/photos/1274260/pexels-photo-1274260.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
  new User(name: 'Todd Lee',       profilePicUrl: 'https://randomuser.me/api/portraits/men/90.jpg', storiePicUrl: 'https://images.pexels.com/photos/2184504/pexels-photo-2184504.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
  new User(name: 'Kurt Kim',       profilePicUrl: 'https://randomuser.me/api/portraits/men/42.jpg', storiePicUrl: 'https://images.pexels.com/photos/2889492/pexels-photo-2889492.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
  new User(name: 'Alberto Fox',    profilePicUrl: 'https://randomuser.me/api/portraits/men/33.jpg', storiePicUrl: 'https://images.pexels.com/photos/1680140/pexels-photo-1680140.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
  new User(name: 'Rodney Morales', profilePicUrl: 'https://randomuser.me/api/portraits/men/52.jpg', storiePicUrl: 'https://images.pexels.com/photos/4840283/pexels-photo-4840283.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
  new User(name: 'Gordon Alvarez', profilePicUrl: 'https://randomuser.me/api/portraits/men/85.jpg', storiePicUrl: 'https://images.pexels.com/photos/7108244/pexels-photo-7108244.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
];
