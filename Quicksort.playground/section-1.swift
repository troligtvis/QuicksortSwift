/*
    Custom quicksort in Swift by Kj Drougge
    2014-06-13
*/

import Cocoa

func partition(a: Int[], first: Int, last: Int) -> Int{
    var pivot: Int = a[first]
    var up: Int = first
    var down: Int = last
    
    do{
        while up < last && pivot >= a[up]{
            up++
        }
    
        while pivot < a[down]{
            down--
        }
        
        if up < down{
            var temp: Int = a[up]
            a[up] = a[down]
            a[down] = temp
        }
    } while up < down
    
    var temp: Int = a[first]
    a[first] = a[down]
    a[down] = temp
    
    return down
}

func quick(a: Int[], f: Int, l: Int){
    var pivIndex: Int
    var first: Int = f
    var last: Int = l
    
    if first < last{
        pivIndex = partition(a, first, last)
        quick(a, first, pivIndex-1)
        quick(a, pivIndex+1, last)
    }
}

var a: Int[] = [15,3,5,7,2,4,11,76,23,10,0,12,13,55]

quick(a, 0, a.count-1)

// quicksorted a :D
a