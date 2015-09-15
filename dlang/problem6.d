import std.stdio;
import std.algorithm;
import std.range;

void main(){
  auto sum1 = iota(1, 101).reduce!((a, b) => a + b);
  auto sum2 = iota(1, 101).map!((a) => a * a).reduce!((a, b) => a + b);
  writeln((sum1*sum1) - sum2);
}
