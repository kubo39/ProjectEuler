import std.stdio;

void main()
{
  int count;
  uint i;
  for(i=1;i<1000;++i)
    if(i % 3 == 0 || i % 5 == 0) count += i;
  count.writeln;
}
