let reverseArray = (arr) => {
    let newArr = [];
    for (let i = arr.length - 1; i >= 0; i--) {
        newArr.push(arr[i]);
    }
    return newArr;
}

let rotateArray = (arr, k) => {
    let newArr = [];
    for (let i = 0; i < arr.length; i++) {
        newArr.push(arr[(i + k) % arr.length]);
    }
    return newArr;
}