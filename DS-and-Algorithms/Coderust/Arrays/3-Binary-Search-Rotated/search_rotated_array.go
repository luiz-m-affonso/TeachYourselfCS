package main
import (
	"fmt"
	"strconv"
)

func BinarySearchRotated(nums []int, target int) int {
	start := 0
	end := len(nums) - 1
	if start > end {
		return -1
	}

	for start <= end {
		mid := start + (end-start)/2

		// Target value found in the middle of array
		if nums[mid] == target {
			return mid
		}
		// Started to mid is sorted
		if nums[start] <= nums[mid] {
			// Target is in the left side of the array
			if nums[start] <= target && target < nums[mid] {
				end = mid - 1
			} else {
				start = mid + 1
			}
		} else {
			// Target is in the right side of the array
			if nums[mid] < target && target <= nums[end] {
				start = mid + 1
			} else {
				end = mid - 1
			}
		}
}

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
	numsList := [][]int{
		{6, 7, 1, 2, 3, 4, 5},
		{6, 7, 1, 2, 3, 4, 5},
		{4, 5, 6, 1, 2, 3},
		{4, 5, 6, 1, 2, 3},
	}
	targetList := []int{3,6,3,6}

	for i, list := range targetList {
		fmt.Printf("%d. Rotated array: %s\n", i + 1, ArrayToString(numsList[i]))
		fmt.Printf(
			"   target %d found at index %d\n",
			list, BinarySearchRotated(numsList[i], list),
		)
		fmt.Printf(
			"----------------------------------------------------------------------------------------------------\n\n",
		)
	}
}