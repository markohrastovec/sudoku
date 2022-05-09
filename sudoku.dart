import "dart:convert";
import "dart:io";

void main () {
  int improvement = 0;
  List<List<List<List<int>>>> solution = <List<List<List<int>>>>[];
  // hard
  /*List<List<int>> row0 = <List<int>>[[ ], [4], [ ], [ ], [9], [ ], [ ], [ ], [ ]];
  List<List<int>> row1 = <List<int>>[[7], [ ], [ ], [ ], [3], [6], [ ], [ ], [ ]];
  List<List<int>> row2 = <List<int>>[[ ], [ ], [ ], [8], [ ], [7], [2], [ ], [ ]];
  List<List<int>> row3 = <List<int>>[[ ], [ ], [ ], [ ], [5], [ ], [ ], [ ], [ ]];
  List<List<int>> row4 = <List<int>>[[ ], [ ], [ ], [ ], [ ], [ ], [9], [3], [ ]];
  List<List<int>> row5 = <List<int>>[[ ], [2], [3], [ ], [4], [ ], [5], [ ], [6]];
  List<List<int>> row6 = <List<int>>[[ ], [5], [ ], [ ], [7], [ ], [ ], [ ], [3]];
  List<List<int>> row7 = <List<int>>[[ ], [ ], [ ], [5], [ ], [ ], [ ], [ ], [2]];
  List<List<int>> row8 = <List<int>>[[ ], [1], [6], [3], [ ], [ ], [8], [ ], [ ]];*/
  // hard
  /*List<List<int>> row0 = <List<int>>[[ ], [ ], [ ], [ ], [8], [ ], [7], [ ], [ ]];
  List<List<int>> row1 = <List<int>>[[ ], [ ], [1], [ ], [5], [2], [ ], [4], [ ]];
  List<List<int>> row2 = <List<int>>[[3], [ ], [2], [1], [ ], [ ], [ ], [ ], [ ]];
  List<List<int>> row3 = <List<int>>[[7], [8], [3], [ ], [2], [ ], [ ], [ ], [ ]];
  List<List<int>> row4 = <List<int>>[[ ], [9], [ ], [ ], [ ], [ ], [ ], [7], [ ]];
  List<List<int>> row5 = <List<int>>[[ ], [ ], [ ], [ ], [7], [ ], [3], [8], [1]];
  List<List<int>> row6 = <List<int>>[[ ], [ ], [ ], [ ], [ ], [5], [8], [ ], [4]];
  List<List<int>> row7 = <List<int>>[[ ], [1], [ ], [2], [6], [ ], [5], [ ], [ ]];
  List<List<int>> row8 = <List<int>>[[ ], [ ], [5], [ ], [3], [ ], [ ], [ ], [ ]];*/
  // medium
  /*List<List<int>> row0 = <List<int>>[[ ], [ ], [9], [ ], [3], [8], [ ], [ ], [ ]];
  List<List<int>> row1 = <List<int>>[[4], [ ], [ ], [7], [ ], [6], [ ], [ ], [ ]];
  List<List<int>> row2 = <List<int>>[[ ], [ ], [ ], [1], [ ], [9], [6], [ ], [8]];
  List<List<int>> row3 = <List<int>>[[9], [ ], [ ], [ ], [ ], [ ], [8], [ ], [ ]];
  List<List<int>> row4 = <List<int>>[[ ], [4], [6], [ ], [ ], [ ], [1], [2], [ ]];
  List<List<int>> row5 = <List<int>>[[ ], [ ], [7], [ ], [ ], [ ], [ ], [ ], [5]];
  List<List<int>> row6 = <List<int>>[[8], [ ], [4], [9], [ ], [1], [ ], [ ], [ ]];
  List<List<int>> row7 = <List<int>>[[ ], [ ], [ ], [4], [ ], [2], [ ], [ ], [ ]];
  List<List<int>> row8 = <List<int>>[[ ], [ ], [ ], [8], [7], [ ], [9], [ ], [ ]];*/
  // easy
  /*List<List<int>> row0 = <List<int>>[[ ], [ ], [ ], [ ], [8], [2], [ ], [3], [ ]];
  List<List<int>> row1 = <List<int>>[[ ], [4], [7], [ ], [ ], [9], [ ], [2], [8]];
  List<List<int>> row2 = <List<int>>[[ ], [ ], [9], [ ], [ ], [ ], [5], [ ], [ ]];
  List<List<int>> row3 = <List<int>>[[ ], [3], [ ], [ ], [2], [5], [ ], [1], [ ]];
  List<List<int>> row4 = <List<int>>[[ ], [7], [ ], [ ], [ ], [ ], [ ], [ ], [2]];
  List<List<int>> row5 = <List<int>>[[4], [9], [ ], [7], [3], [ ], [ ], [ ], [5]];
  List<List<int>> row6 = <List<int>>[[9], [ ], [8], [3], [1], [ ], [ ], [ ], [4]];
  List<List<int>> row7 = <List<int>>[[ ], [2], [ ], [6], [ ], [4], [ ], [ ], [ ]];
  List<List<int>> row8 = <List<int>>[[5], [1], [4], [ ], [ ], [ ], [6], [ ], [3]];*/
  // easy
  /*List<List<int>> row0 = <List<int>>[[7], [8], [ ], [5], [ ], [ ], [ ], [ ], [ ]];
  List<List<int>> row1 = <List<int>>[[ ], [6], [ ], [ ], [ ], [ ], [2], [ ], [ ]];
  List<List<int>> row2 = <List<int>>[[9], [ ], [5], [ ], [7], [6], [ ], [ ], [ ]];
  List<List<int>> row3 = <List<int>>[[4], [5], [ ], [ ], [6], [ ], [9], [ ], [3]];
  List<List<int>> row4 = <List<int>>[[ ], [ ], [6], [9], [5], [8], [1], [ ], [ ]];
  List<List<int>> row5 = <List<int>>[[2], [ ], [1], [ ], [3], [ ], [ ], [6], [5]];
  List<List<int>> row6 = <List<int>>[[ ], [ ], [ ], [7], [2], [ ], [5], [ ], [6]];
  List<List<int>> row7 = <List<int>>[[ ], [ ], [7], [ ], [ ], [ ], [ ], [4], [ ]];
  List<List<int>> row8 = <List<int>>[[ ], [ ], [ ], [ ], [ ], [5], [ ], [8], [9]];*/
  print ('Enter your sudoku row by row. Enter nine characters for each row. Use spaces for empty fields.');
  List<List<List<int>>> row = <List<List<int>>>[];
  RegExp regex = RegExp (r"[0-9 ]{9}");
  for (int i = 0; i < 9; i++) {
    row.add (<List<int>>[]);
    print ('Enter row ${i + 1}:');
    print ('123456789');
    print ('_________');
    String? line = stdin.readLineSync ();
    if (line != null && line.length == 9 && regex.hasMatch (line)) {
      for (int j = 0; j < 9; j++) {
        String n = line.substring (j, j + 1);
        if (n != ' ') {
          row[i].add (<int>[int.parse (n)]);
        }
        else {
          row[i].add (<int>[]);
        }
      }
    }
    else {
      print ('There is an error in the entered line. Try again.');
      i--;
    }
  }
  List<List<List<int>>> sudoku = <List<List<int>>>[row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8]];
  print ("Starting sudoku");
  print_sudoku (sudoku);
  for (int i = 0; i < sudoku.length; i++) {
    for (int j = 0; j < sudoku.length; j++) {
      if (sudoku[i][j].length == 0) {
        sudoku[i][j] = List<int>.generate (9, (int index) => index + 1, growable: true);
      }
    }
  }
  print ("Starting with all possibilities");
  print_sudoku (sudoku);
  while ((improvement = optimize (sudoku)) > 0) {
    print('Improvement: $improvement');
    print_sudoku(sudoku);
  }
  if (solved (sudoku)) {
    print ('End');
    print_sudoku (sudoku);
  }
  else {
    solution.add (deep_copy (sudoku));
    while (!all_solved (solution)) {
      for (int s = 0; s < solution.length; s++) {
        if (!solved (solution[s])) {
          int i = 0, j = 0;
          while (solution[s][i][j].length == 1 && i < 9 && j < 9) {
            j++;
            if (j > 8) {
              j = 0;
              i++;
            }
          }
          if (solution[s][i][j].length > 1) {
            // add possible solutions
            print ("Adding solutions for ${i}, ${j}: ${solution[s][i][j]}");
            for (int d = 1; d < solution[s][i][j].length; d++) {
              solution.insert (s, deep_copy (solution[s]));
            }
            // make choices
            List<int> choices = <int>[...solution[s][i][j]];
            for (int d = 0; d < choices.length; d++) {
              solution[d + s][i][j] = <int>[choices[d]];
            }
            // move beyond added solutions
            s += choices.length - 1;
          }
          else if (solution[s][i][j].length < 1) {
            // should never come here; remove the solution as it is not ok
            solution.removeAt(s);
            s--;
          }
        }
      }
      for (int s = 0; s < solution.length; s++) {
        while ((improvement = optimize (solution[s])) > 0) {
          print('Improvement: $improvement');
          print_sudoku(solution[s]);
        }
        if (improvement < 0) {
          solution.removeAt(s);
          s--;
        }
      }
    }
  }
  print ('End');
  for (int s = 0; s < solution.length; s++) {
    if (valid_solution (solution[s])) {
      print ("Solution ${s + 1}");
      print_sudoku (solution[s]);
    }
  }
}

void print_sudoku (List<List<List<int>>> s) {
  for (int i = 0; i < s.length; i++) {
    for (int j = 0; j < s[i].length; j++) {
      stdout.write (s[i][j]);
    }
    print ('');
  }
}

int optimize (List<List<List<int>>> s) {
  int c = 0;
  // minimize possibilities
  for (int i = 0; i < 9; i++) {
    for (int j = 0; j < 9; j++) {
      if (s[i][j].length > 1) {
        // rows
        List<List<int>> rn = row_neighbours (s, i, j);
        for (int x = 0; x < rn.length; x++) {
          if (rn[x].length == 1 && s[i][j].contains (rn[x][0])) {
            s[i][j].remove (rn[x][0]);
            if (s[i][j].isEmpty || !valid_solution (s)) return -1;
            c++;
          }
        }
        // columns
        List<List<int>> cn = column_neighbours (s, i, j);
        for (int y = 0; y < cn.length; y++) {
          if (cn[y].length == 1 && s[i][j].contains (cn[y][0])) {
            s[i][j].remove (cn[y][0]);
            if (s[i][j].isEmpty || !valid_solution (s)) return -1;
            c++;
          }
        }
        // squares
        List<List<int>> sn = square_neighbours (s, i, j);
        for (int z = 0; z < sn.length; z++) {
          if (sn[z].length == 1 && s[i][j].contains (sn[z][0])) {
            s[i][j].remove (sn[z][0]);
            if (s[i][j].isEmpty || !valid_solution (s)) return -1;
            c++;
          }
        }
      }
    }
  }
  //print ('After optimizations');
  //print_sudoku (s);
  // look for unambiguous solutions
  // rows
  for (int i = 0; i < 9; i++) {
    List<List<int>> rn = row_neighbours (s, i, 8);
    rn.add (s[i][8]);
    for (int n = 1; n <= 9; n++) {
      int p = 0;
      int x = -1;
      for (int k = 0; k < rn.length; k++) {
        if (rn[k].contains (n)) {
          p++;
          x = k;
        }
      }
      if (p == 1 && x > -1 && rn[x].length > 1) {
        rn[x] = <int>[n];
        s[i][x] = <int>[n];
        if (!valid_solution (s)) return -1;
        c++;
      }
    }
  }
  //columns
  for (int j = 0; j < 9; j++) {
    List<List<int>> cn = column_neighbours (s, 8, j);
    cn.add (s[8][j]);
    for (int n = 1; n <= 9; n++) {
      int p = 0;
      int y = -1;
      for (int k = 0; k < cn.length; k++) {
        if (cn[k].contains (n)) {
          p++;
          y = k;
        }
      }
      if (p == 1 && y > -1 && cn[y].length > 1) {
        cn[y] = <int>[n];
        s[y][j] = <int>[n];
        if (!valid_solution (s)) return -1;
        c++;
      }
    }
  }
  //squares
  for (int si = 0; si < 3; si++) {
    for (int sj = 0; sj < 3; sj++) {
      List<List<int>> sn = square_neighbours (s, si * 3, sj * 3);
      sn.insert (0, s[si * 3][sj * 3]);
      for (int n = 1; n <= 9; n++) {
        int p = 0;
        int xy = -1;
        for (int k = 0; k < sn.length; k++) {
          if (sn[k].contains (n)) {
            p++;
            xy = k;
          }
        }
        if (p == 1 && xy > -1 && sn[xy].length > 1) {
          sn[xy] = <int>[n];
          s[si * 3 + xy ~/ 3][sj * 3 + xy % 3] = <int>[n];
          if (!valid_solution (s)) return -1;
          c++;
        }
      }
    }
  }
  return c;
}

List<List<int>> row_neighbours (List<List<List<int>>> s, int i, int j) {
  List<List<int>> r = [];
  for (int x = 0; x < 9; x++) {
    if (x != j) {
      r.add (s[i][x]);
    }
  }
  return r;
}

List<List<int>> column_neighbours (List<List<List<int>>> s, int i, int j) {
  List<List<int>> r = [];
  for (int y = 0; y < 9; y++) {
    if (y != i) {
      r.add (s[y][j]);
    }
  }
  return r;
}

List<List<int>> square_neighbours (List<List<List<int>>> s, int i, int j) {
  List<List<int>> r = [];
  int x = j ~/ 3;
  int y = i ~/ 3;
  for (int si = 0; si < 3; si++) {
    for (int sj = 0; sj < 3; sj++) {
      if (x * 3 + sj != j || y * 3 + si != i) {
        r.add (s[y * 3 + si][x * 3 + sj]);
      }
    }
  }
  return r;
}

bool solved (List<List<List<int>>> s) {
  for (int i = 0; i < s.length; i++) {
    for (int j = 0; j < s[i].length; j++) {
      if (s[i][j].length > 1) return false;
    }
  }
  return true;
}

bool all_solved (List<List<List<List<int>>>> s) {
  for (int i = 0; i < s.length; i++) {
    if (!solved (s[i])) {
      return false;
    }
  }
  return true;
}

bool valid_solution (List<List<List<int>>> s) {
  for (int i = 0; i < s.length; i++) {
    for (int j = 0; j < s[i].length; j++) {
      if (s[i][j].length == 1) {
        List<List<int>> rn = row_neighbours(s, i, j);
        for (int k = 0; k < rn.length; k++) {
          if (rn[k].length == 1 && s[i][j][0] == rn[k][0]) return false;
        }
        List<List<int>> cn = column_neighbours(s, i, j);
        for (int k = 0; k < cn.length; k++) {
          if (cn[k].length == 1 && s[i][j][0] == cn[k][0]) return false;
        }
        List<List<int>> sn = square_neighbours(s, i, j);
        for (int k = 0; k < sn.length; k++) {
          if (sn[k].length == 1 && s[i][j][0] == sn[k][0]) return false;
        }
      }
    }
  }
  return true;
}

List<List<List<int>>> deep_copy (List<List<List<int>>> s) {
  List<List<List<int>>> ret = <List<List<int>>>[];
  for (int i = 0; i < s.length; i++) {
    ret.add (<List<int>>[]);
    for (int j = 0; j < s[i].length; j++) {
      // copy last one-dimensional in one line
      ret[i].add (<int>[...s[i][j]]);
      // or longer version in a loop
      /*ret[i].add (<int>[]);
      for (int k = 0; k < s[i][j].length; k++) {
        ret[i][j].add (s[i][j][k]);
      }*/
    }
  }
  return ret;
}
