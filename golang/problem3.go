package main

import "fmt"


func get_biggest_one(n int64) int64 {
	// 素因数の最大値は2で割った値(小数点切り捨て)
	var i, tmp int64

	i = 2
	tmp = n

	for {
		if tmp == i {
			break
		}

		if tmp % i == 0 {
			tmp /= i
		} else {
			i += 1
		}
	}
	return tmp
}


func main() {
	fmt.Println(get_biggest_one(600851475143))
}