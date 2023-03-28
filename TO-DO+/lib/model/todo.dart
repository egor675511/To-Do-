class ToDo_1 {
  String? id;
  String? todoText;
  bool isDone;

  ToDo_1({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo_1> todoList() {
    return [
      ToDo_1(id: '01', todoText: 'Сделать курсовую по мобильным приложениям ' ),
      ToDo_1(id: '02', todoText: 'Проверить почту' ),
      ToDo_1(id: '03', todoText: 'Прочесть книгу', ),
    ];
  }
}