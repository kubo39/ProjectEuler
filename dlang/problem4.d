import std.stdio;
import std.algorithm;
import std.range;
import std.conv : to;

void main(){
    int p = 0;
    foreach_reverse (i; 100 .. 999)
    {
        foreach_reverse (j; 100 .. 999)
        {
            auto s = to!string(i * j);
            if (iota(s.length / 2)
                .all!(a => s[a] == s[s.length - a - 1]))
            {
                auto x = s.to!int;
                if(p < x)
                    p = x;
            }
        }
    }
    p.writeln;
}
