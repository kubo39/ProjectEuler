import std.stdio;

void main()
{
    for (uint a = 1; a < 333; ++a)
    {
        for (uint b = 2; b < 500; ++b)
        {
            if (a >= b)
                continue;
            uint c = 1000 - (a + b);
            if (b>=c)
                continue;
            if (c * c - (a * a + b * b) == 0)
            {
                writeln(a * b * c);
                return;
            }
        }
    }
}
