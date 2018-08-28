List<ChatsModel> DummyData = [
  new ChatsModel(
    name: 'Flutter App',
    time: '10:49',
    message: 'Hello There Flutter',
    avatar: 'https://s3.amazonaws.com/uifaces/faces/twitter/jgoillot/128.jpg'
  ),
  new ChatsModel(
    name: 'Miguel Angel',
    time: '11:49',
    message: 'I did it! Hurray',
    avatar: 'https://s3.amazonaws.com/uifaces/faces/twitter/sillyleo/128.jpg'
  ),
  new ChatsModel(
    name: 'James Andre',
    time: '11:41',
    message: 'This is it Pancit!',
    avatar: 'https://s3.amazonaws.com/uifaces/faces/twitter/rogie/128.jpg'
  ),
  new ChatsModel(
    name: 'Ian Cabigon',
    time: '11:60',
    message: 'Lets go get them!',
    avatar: 'https://s3.amazonaws.com/uifaces/faces/twitter/dancounsell/128.jpg'
  )
] ;

class ChatsModel{
  final String name;
  final String time;
  final String avatar;
  final String message;

  ChatsModel({this.name, this.time, this.avatar, this.message});
}