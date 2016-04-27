import std.stdio;

void main()
{
    ulong total;
    for (int x=1,y=1,z=0; x<4_000_000; z=x, x+=y, y=z)
    {
        if(x % 2 == 0)
            total += x;
    }
    total.writeln;
}
