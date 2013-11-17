import std.stdio;
import std.algorithm;


void main(){
  int[] arr;

  for (int i=1;i < 101; ++i) {
    arr ~= i;
  }
  auto sum1 = reduce!"a + b"(arr);
  auto sum2 = reduce!"a + b"(map!"a * a"(arr));
  writeln((sum1*sum1) - sum2);
}
