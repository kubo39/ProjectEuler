import std.stdio;
import std.algorithm;
import std.string;
import std.conv;
import std.range;

void main()
{
    auto f = File("./problem8.txt");
    char[] chars = f.byLine.map!chomp.join("");

    ulong x;
    for (ulong i; (chars.length - i) > 12; ++i)
    {
        ulong tmp = chars[i .. i+13].map!(a => a.to!ulong - 48).reduce!((a, b) => a * b);
        if (tmp > x) x = tmp;
    }
    x.writeln;
}
