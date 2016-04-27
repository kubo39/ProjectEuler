import std.stdio;
import std.algorithm;
import std.range;

void main()
{
    iota(1, 1000)
        .filter!(a => a % 3 == 0 || a % 5 == 0)
        .reduce!((a, b) => a + b)
        .writeln;
}
