import std.stdio;
import std.conv;


void main(){
    int str = 0;
    foreach_reverse(i; 100 .. 999){
	foreach_reverse(j; 100 .. 999){
	    string tmp = to!string(i * j);
	    if (tmp == tmp.dup.reverse) {
		auto x = to!int(tmp.dup);
		if(str < x) str = x;
	    }
	}
    }
    writeln(str);
}
