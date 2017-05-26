inicioMetodo best_students(students)
    best_students = []
    x, y = 0, 0
    WHILE y < student.length
      current_student  = students[y][x]
          IF current_student[1] == 10 THEN
            best_students.push(current_student[0])
          ENDIF

          IF x == (students[y].length - 1) THEN
             x = 0
             y += 1
          ELSE
             x += 1
          ENDIF
      return best_students
finMetodo

INICIO

students = [[["Eliezer", 7], ["Mariam", 7], ["Deborah", 10], ["Harley", 7]],
 [["D'angelo", 10], ["Brittany", 8], ["Hubert", 7], ["Erling", 9]],
 [["Bradford", 7], ["Theodora", 10], ["Casandra", 9], ["Lindsay", 8]],
 [["Hilma", 10], ["Lina", 10], ["Isabell", 8], ["Urban", 9]]]

CALL best_students(students)

finPrograma




