import std.stdio;

void main() {
  auto x = 2 * 3 * 5 * 7 * 11  * 13 * 17 * 19;

  while(true) {
    if (x % 20 == 0 && x % 19 == 0 && x % 18 == 0 && x % 17 == 0 &&
        x % 16 == 0 && x % 15 == 0 && x % 14 == 0 && x % 13 == 0 &&
        x % 12 == 0 && x % 11 == 0) {
	    x.writeln;
	    break;
    }
    x += 2;
  }
}



