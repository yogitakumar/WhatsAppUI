class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarurl;
  final int notifications;

  ChatModel({this.name, this.message, this.time, this.avatarurl,this.notifications});
}
  List<ChatModel> chatData = [
    new ChatModel(
      name: "Renuka",
      message: "Hello, Good evening!",
      time:"7.30pm",
      avatarurl: "http://www.thaqafnafsak.com/wp-content/uploads/2014/11/letter-r-خلفيات-حرف-r-15.jpg",
        notifications:2,
    ),
    new ChatModel(
        name: "Supriya",
        message: "Very nice app",
        time:"1:20pm",
        avatarurl: "https://assets.wallpapersin4k.org/uploads/2017/04/Love-S-Letter-Wallpaper-2.jpeg",
        notifications:5,
    ),
    new ChatModel(
        name: "Flutter Master",
        message: "Nice Efforts",
        time:"11.03am",
        avatarurl: "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png",
        notifications:7,
    ),
    new ChatModel(
        name: "TechPowerGirls",
        message: "Lets do it!",
        time:"10.30am",
        avatarurl: "https://media.istockphoto.com/photos/the-letter-t-red-plastic-picture-id105679701?k=6&m=105679701&s=612x612&w=0&h=NX1yxMlNl5ExguynaKNVz1vQ-06ahiu8Qr6Bqtslxc0=",
        notifications:1,
    ),
    new ChatModel(
        name: "Nisha",
        message: "How are you?",
        time:"9.03am",
        avatarurl: "https://media.istockphoto.com/illustrations/cute-beautiful-shy-little-girl-illustration-id501261975?k=6&m=501261975&s=612x612&w=0&h=9uCl6l0yrCCkJhCu3OVb6bju6yrlYgZJ3Qw5zB-WTLE=",
        notifications:4,
    ),
    new ChatModel(
        name: "Harsha",
        message: "Hello, r u free today?",
        time:"08.13am",
        avatarurl: "https://i.pinimg.com/736x/32/6d/e1/326de1dbaa93e2b5f8605c840b421cab--frilly-dresses-kid-pictures.jpg",
        notifications:0
    ),
  ];
