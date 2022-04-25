package main
import (
	"fmt"
	"strconv"
)

// ReverseArray is a helper function that is used to reverse an array.
func ReverseArray(nums []int, start int, end int) {
	for start < end {
		temp := nums[start]
		nums[start] = nums[end]
		nums[end] = temp
		start += 1
		end -= 1
	}
}

func RotateArray(nums []int, n int) []int{
	length := len(nums)

	// Normalizing the 'n' rotations
	n = n % length
	if n < 0 {
		n = n + length
	}

	// reversing the whole array
	ReverseArray(nums, 0, length-1)
	// fixing the order of the rotated n elements
	ReverseArray(nums, 0, n-1)
	// fixing the order of the remaining (l-n) elements
	ReverseArray(nums, n, length-1)

	return nums
}

/* ArrayToString is used to convert a string array to string.
ArrayToString is used as an helper function in a main function for
printing purposes. */
func ArrayToString(nums []int) string{
	if len(nums) == 0 {
		return "[]"
	}
	res := "["
	for _, num := range nums {
		res += strconv.Itoa(num) + ", "
	}
	res += "]"
	return res[:len(res) - 3] + "]"
}

func main() {
	arr := []int{1, 10, 20, 0, 59, 86, 32, 11, 9, 40}
	fmt.Printf("Array Before Rotation\n")
	fmt.Printf("%s\n", ArrayToString(arr))
	fmt.Printf("Array After 2 Rotations\n")
	fmt.Printf("%s\n", ArrayToString(RotateArray(arr, 2)))
}