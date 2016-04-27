import std.stdio;

ulong f(int n)
{
    ulong total = 1;
    for (int i=3; i <= n; i+=2)
    {
        total += 4 * i * i - 6*(i - 1);
    }
    return total;
}

unittest
{
    assert(f(3) == 25);
    assert(f(5) == 101);
}


void main()
{
    f(1001).writeln;
}
