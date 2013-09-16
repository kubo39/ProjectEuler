package main

import (
	"fmt"
	"strconv"
)


func problem4() int {
	var retVal int

	for i := 101; i < 1000; i++ {
		for j := 101; j < 1000; j++ {
			tmp := i * j

			flag := false

			x := strconv.Itoa(tmp)

			for t := 0; t < len(x) / 2; t++ {
				if x[t] == x[len(x)-t-1] {
					flag = true
				} else {
					flag = false
					break
				}
			}

			if flag && tmp > retVal {
				retVal = tmp
			}

			flag = false
		}
	}
	return retVal
}


func main() {
	fmt.Println(problem4())
}
