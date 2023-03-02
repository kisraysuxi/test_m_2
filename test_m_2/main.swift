//Составить игру крестики и нолики используя инструменты ООП и инструменты программирования. Создать класс Game подписать на протокол Menu c функцией startGame(), endGame(). Как реализовать логику. Создайте 3 массива и принтуйте постоянно. К массивам у вас есть доступ к индексам. Получается указываете столбец и строку куда нужно поставить символ X и О. Игра идет до победы либо до конца возможных ходов.

var arr1: [String] = ["", "", ""]
var arr2: [String] = ["", "", ""]
var arr3: [String] = ["", "", ""]

for i in 1...9 {
    print("Введите символ:")
    let go = readLine()!
    var sign = ""
    var num = 0
    
    if ((go.last?.isNumber) != nil) {
        num = Int(String(go.last!)) ?? 0
    }
    
    if i % 2 == 0 {
        sign = "O"
    }else{
        sign = "X"
    }
    
//    switch go{
//    case "1":
//        arr1[num - 1] = sign
//    case "2":
//        arr2[num - 1] = sign
//    case "3":
//        arr3[num - 1] = sign
//
//    default:
//        ()
//    }
    if go.first == "1" {
        arr1[num - 1] = sign
    } else if go.first == "2"{
        arr2[num - 1] = sign
    } else if go.first == "3"{
        arr3[num - 1] = sign
    }
    
    print(arr1)
    print(arr2)
    print(arr3)
}
