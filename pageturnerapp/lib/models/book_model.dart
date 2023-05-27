import '../images/images_paths.dart';

class Book {
  String? name;
  String? image;
  String? author;
  String? read;
  int? part;
  String? synopsis;
  String? saved;

  Book({
    required this.saved,
    required this.name,
    required this.image,
    required this.author,
    required this.read,
    required this.part,
    required this.synopsis,
  });
}

class Books {
  static Book happyPlace = Book(
      name: "Happy Place",
      image: ImagesPath().happyPlace,
      author: "Emily Henry",
      read: "2.3M",
      saved: "3.3M",
      part: 33,
      synopsis:
          '''Harriet and Wyn have been the perfect couple since they met in college—they go together like salt and pepper, honey and tea, lobster and rolls. Except, now—for reasons they’re still not discussing—they don’t.

They broke up six months ago. And still haven’t told their best friends.

Which is how they find themselves sharing the largest bedroom at the Maine cottage that has been their friend group’s yearly getaway for the last decade. Their annual respite from the world, where for one vibrant, blue week they leave behind their daily lives; have copious amounts of cheese, wine, and seafood; and soak up the salty coastal air with the people who understand them most.
''');
  static Book orange = Book(
      name: "A Clockwork \nOrange ",
      image: ImagesPath().orange,
      author: "Anthony Burgess",
      read: "4.6M",
      saved: "3M",
      part: 25,
      synopsis:
          '''A Clockwork Orange takes place in a futuristic city governed by a repressive, totalitarian super-State. In this society, ordinary citizens have fallen into a passive stupor of complacency, blind to the insidious growth of a rampant, violent youth culture. The protagonist of the story is Alex, a fifteen-year-old boy who narrates in a teenage slang called nadsat, which incorporates elements of Russian and Cockney English. Alex leads a small gang of teenage criminals—Dim, Pete, and Georgie—through the streets, robbing and beating men and raping women. Alex and his friends spend the rest of their time at the Korova Milkbar, an establishment that serves milk laced with drugs, and a bar called the Duke of New York.

''');
  static Book greatGatsby = Book(
      name: "The Great Gatsby ",
      saved: "2M",
      image: ImagesPath().greatGatsby,
      author: "F. Scott Fitzgerald",
      read: "8.1M",
      part: 25,
      synopsis:
          '''F. Scott Fitzgerald's third book, stands as the supreme achievement of his career. This exemplary novel of the Jazz Age has been acclaimed by generations of readers. The story of the fabulously wealthy Jay Gatsby and his love for the beautiful Daisy Buchanan, of lavish parties on Long Island at a time when The New York Times noted "gin was the national drink and sex the national obsession," it is an exquisitely crafted tale of America in the 1920s.
''');
  static Book throneWinter = Book(
      saved: "3M",
      name: "Throne of Winter ",
      image: ImagesPath().throneWinter,
      author: "Sophie Davis",
      read: "8.1M",
      part: 25,
      synopsis: '''She's the Fire Fae of Legend.
He's the Warlock Heir to the Throne of Winter.
Maybrie Hawkins is the badass who dominates the Dark Court’s fight pits where fae and shifters battle for powers. The royals chant her name, like she's a goddess instead of a lowly entertainer.
Like all Casters, Kai needs the shared powers of a fae to do more than basic magic on his own. The strongest bonds are forged via love, and it's time for him to find a match.

His sights are set on her.
She's not impressed.
Maybrie doesn't have time to be courted by the Prince of Winter. A rebellion is brewing, an uprising against the Casters. The dome of the Dark Court is the only thing protecting them from the frozen wasteland beyond, but the fae are done pandering to the Magicals in exchange for safety.
And Brie doesn’t pander to anyone.
Can Kai keep up?''');
  static Book throneOfGlass = Book(
      saved: "4M",
      name: "Throne of Glass ",
      image: ImagesPath().throneGlass,
      author: "Sarah J. Maas",
      read: "3.2M",
      part: 25,
      synopsis:
          '''In a land without magic, where the king rules with an iron hand, an assassin is summoned to the castle. She comes not to kill the king, but to win her freedom. If she defeats twenty-three killers, thieves, and warriors in a competition, she is released from prison to serve as the king's champion. Her name is Celaena Sardothien.
The Crown Prince will provoke her. The Captain of the Guard will protect her. But something evil dwells in the castle of glass—and it's there to kill. When her competitors start dying one by one, Celaena's fight for freedom becomes a fight for survival, and a desperate quest to root out the evil before it destroys her world.''');

  static Book lecume = Book(
      name: "L'Écume des Jours",
      saved: "10M",
      image: ImagesPath().borisVian,
      author: "Boris Vian",
      read: "8.1M",
      part: 12,
      synopsis:
          '''Dans un univers absurde et surréaliste, l'auteur met en place une forme de fatalité tragique où toutes choses se confondent dans une trajectoire morbide qui ne laisse aucune place à l'amour et à la beauté. La maladie et l'obsession avalent tout. " Pourquoi ça ne suffit pas de toujours rester ensemble, il faut encore qu'on ait peur ", se demande Colin. L'Écume des jours de Boris Vian paraît en 1947.''');
  final List<Book> books = [
    greatGatsby,
    orange,
    happyPlace,
    lecume,
    throneWinter,
    throneOfGlass,
  ];
}
