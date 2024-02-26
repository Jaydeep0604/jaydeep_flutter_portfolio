class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  Project(this.name, this.description, this.image, this.link);
}

List<Project> projectList = [
  Project(
    'Conduit',
    'Presenting "Conduit" - Conduit is a mobile app developed using Dart and the Flutter framework. It is a powerful platform that allows users to create, manage, and share articles, customize the appearance of their posts, interact with other users through comments and reactions, and discover new content with a personalized feed and trending articles.',
    'assets/images/coffee.png',
    'https://github.com/Jaydeep0604/conduit',
  ),
  Project(
    'Notes & To-Do',
    "I've developed a comprehensive notes and to-do application featuring robust functionalities. It includes localization support for multiple languages, app mode customization, and advanced security features such as fingerprint and password protection for app lock. Additionally, users can export their data for backup or sharing purposes, ensuring a seamless and secure experience.",
    'assets/images/car.png',
    'https://github.com/Jaydeep0604/notes-and-todo-sqflite',
  ),
  Project(
      'Flutter Web',
      'Introducing my latest project: a responsive Flutter web application designed to seamlessly adapt to various devices, including mobile, tablet, and web. Experience a fluid and intuitive user interface across all platforms with this versatile app!',
      'assets/images/alarm.jpg',
      'https://github.com/Jaydeep0604/flutter_web'),
  Project(
      'Event Booking Application-UI',
      'Excited to present my latest creation: an Event Booking Application UI that offers a seamless and engaging experience for users to discover, book, and manage events effortlessly. Dive into a visually stunning interface designed to make event planning a breeze!',
      'assets/images/cui.png',
      'https://github.com/Jaydeep0604/event_booking'),
  Project(
      'Flutter Web Navigation',
      'Announcing my latest project: Flutter Web Navigation! With automatic route setting, this app simplifies web navigation for users, ensuring a seamless browsing experience as they explore various sections. Enjoy effortless browsing with dynamically set routes!',
      'assets/images/player.png',
      'https://github.com/Jaydeep0604/Flutter_Web_Navigation'),
  Project(
      'Rapid Apis ',
      'A Rapid APIs Application, It includes Multiple Rapid Apis Like translation, Currency Exchange etc.',
      'assets/images/recipe.png',
      'https://github.com/Jaydeep0604/rapid_apis'),
  Project(
      'Firebase Chat',
      "Firebase Chat Application enabling users to engage in one-on-one and group conversations effortlessly. Experience seamless communication and collaboration through real-time messaging, all powered by Firebase's robust backend infrastructure!",
      'assets/images/task.png',
      'https://github.com/Jaydeep0604/firebase_chat'),
  Project(
      'Futter Testing',
      'Flutter Testing Application, meticulously crafted as a practice ground for unit testing and widget testing. Dive into the world of testing methodologies and strengthen your Flutter skills with this hands-on application!  ',
      'assets/images/chat.png',
      'https://github.com/Jaydeep0604/flutter_testing'),
  Project(
      'Flutter GetX',
      'Flutter application leveraging GetX for state management, designed as a personal skill development exercise. Explore the power of GetX and enhance your proficiency in state management with this hands-on application!"',
      'assets/images/doctor.png',
      'https://github.com/Jaydeep0604/flutter_getx'),
];
