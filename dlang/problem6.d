import std.stdio;
import std.algorithm;
import std.range;
import std.math;

void main()
{
    writeln(pow(iota(101).reduce!((a, b) => a + b), 2) - iota(101).map!"a * a".reduce!"a + b");
}
