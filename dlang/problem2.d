import std.stdio;

int fib(int x=1, int y=1){
    if(x >= 4000000) return 0;
    if(x%2==0)	return x + fib(x+y, x);
    else return fib(x+y, x);
}

void main(){
    writeln(fib());
}
