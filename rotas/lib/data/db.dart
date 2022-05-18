import 'package:flutter/material.dart';

class Book {
  final int id;
  final String name;
  final String genre;

  const Book({
    required this.id,
    required this.name,
    required this.genre,
  });
}

class BooksDB {
  List<Book> books = const [
    Book(id: 1, genre: 'Fiction', name: 'Anna Karenina'),
    Book(id: 2, genre: 'Fiction', name: 'The Great Gatsby'),
    Book(id: 3, genre: 'Comic', name: 'Amazing Spider-Man'),
    Book(id: 4, genre: 'Comic', name: 'Batman'),
    Book(id: 5, genre: 'Comic', name: 'The Incredible Hulk'),
    Book(id: 6, genre: 'Fiction', name: 'The Big Sleep'),
    Book(id: 7, genre: 'Fiction', name: 'Woman in White'),
  ];

  Book findBookById(int id) {
    return books.firstWhere(
      (book) => book.id == id,
      orElse: () => throw ('Can not find book with id $id'),
    );
  }
}

class BooksDBProvider extends InheritedWidget {
  final booksDb = BooksDB();

  // ignore: use_key_in_widget_constructors
  BooksDBProvider({required Widget child}) : super(child: child);

  @override
  // ignore: avoid_renaming_method_parameters
  bool updateShouldNotify(_) {
    return false;
  }

  static BooksDB? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<BooksDBProvider>()
        ?.booksDb;
  }
}

class UsersDB {
  final List<User> users = [
    User(id: 1, name: 'User one', email: 'userone@email.com', books: [
      const Book(id: 1, genre: 'Fiction', name: 'Anna Karenina'),
      const Book(id: 2, genre: 'Fiction', name: 'The Great Gatsby'),
      const Book(id: 3, genre: 'Comic', name: 'Amazing Spider-Man'),
    ]),
    User(id: 2, name: 'User two', email: 'usertwo@email.com', books: [
      const Book(id: 5, genre: 'Comic', name: 'The Incredible Hulk'),
      const Book(id: 6, genre: 'Fiction', name: 'The Big Sleep'),
      const Book(id: 7, genre: 'Fiction', name: 'Woman in White'),
    ])
  ];

  User findUserById(int id) {
    return users.firstWhere(
      (user) => user.id == id,
      orElse: () => throw ('Can not find user with id $id'),
    );
  }
}

class User {
  final int id;
  final String name;
  final String email;
  final List<Book> books;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.books,
  });
}

class UsersDBProvider extends InheritedWidget {
  final usersDB = UsersDB();

  // ignore: use_key_in_widget_constructors
  UsersDBProvider({required Widget child}) : super(child: child);

  @override
  // ignore: avoid_renaming_method_parameters
  bool updateShouldNotify(_) {
    return false;
  }

  static UsersDB? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<UsersDBProvider>()
        ?.usersDB;
  }
}
