import std.stdio;

void main()
{
  int total = 0;
  int frontOfMonth = 1;

  int[] weekday = [0, 1, 2, 3, 4, 5, 6];

  foreach (year; 1900..2001) {
    foreach (month; 1..13) {
      if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) {
        if (frontOfMonth == 0 && year != 1900) {
          total++;
        }
        frontOfMonth = (weekday[frontOfMonth] + 31 % 7) % 7;
      }
      else if (month == 4 || month == 6 || month == 9 || month == 11) {
        if (frontOfMonth == 0 && year != 1900) {
          total++;
        }
        frontOfMonth = (weekday[frontOfMonth] + 30 % 7) % 7;
      }
      else if (month == 2 && (year % 400 != 0) && (year % 100 == 0)) {
        if (frontOfMonth == 0 && year != 1900) {
          total++;
        }
        frontOfMonth = (weekday[frontOfMonth] + 28 % 7) % 7;
      }
      else if (month == 2 && (year % 4 == 0)) {
        if (frontOfMonth == 0 && year != 1900) {
          total++;
        }
        frontOfMonth = (weekday[frontOfMonth] + 29 % 7) % 7;
      }
      else {
        if (frontOfMonth == 0 && year != 1900) {
          total++;
        }
      }
    }
  }
  total.writeln;
}
