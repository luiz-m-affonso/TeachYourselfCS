package main
import (
	"fmt"
	"strconv"
)

func BinarySearchRecursive(arr []int, l int, r int, x int) int {
	if r >= l {
		mid := l + (r-l)/2
		if arr[mid] == x {
			return mid
		}
		if arr[mid] > x {
			return BinarySearchRecursive(arr, l, mid-1, x)
		}
		return BinarySearchRecursive(arr, mid+1, r, x)
	}
	return -1
}

func BinarySearch(nums []int, target int) int {
	return BinarySearchRec(nums, target, 0, len(nums)-1)
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
	numsLists := [][]int{
		{},
		{0, 1},
		{1, 2, 3},
		{-1, 0, 3, 5, 9, 12},
		{-1, 0, 3, 5, 9, 12},
	}

	targetList := []int{12, 1, 3, 9, 2}
	for i, nums := range numsLists {
		target := targetList[i]
		index := BinarySearch(nums, target)
		fmt.Printf("%d. Array to search: %s\n", i+1, ArrayToString(nums))
		fmt.Printf("   Target: %d\n", target)
		if index != -1 {
			fmt.Printf("   %d exists in the array at index %d\n", target, index)
		} else {
			fmt.Printf("   %d does not exist in the array so the return value is %d\n", target, index)
		}
		fmt.Printf(
			"----------------------------------------------------------------------------------------------------\n\n",
		)
	}
}