//
//  main.swift
//  Swiftme-FirestApp
//
//  Created by Ян Кшецкий on 24.10.2021.
//

//// Создадим переменные для ввода чисел
//var a: Int?
//var b: Int?
//var c: String?
//
//// Указатели на то, что число введено успешно
//var isA = false
//var isB = false
//var isC = false
//
//repeat{
//    print("Введите первое значение")
//    // Попробуем узнать, является ли это значение числом
//    guard let numA = Int(readLine() ?? "") else {
//        print("Введено некорректное значение")
//        continue
//    }
//    a = numA
//    isA = true
//} while !isA
//
//repeat{
//    print("Введите второе значение")
//    // Проверяем, что cтроку можно перевести в Int
//    guard let numB = Int(readLine() ?? "") else {
//        print("Введено некорректное значение")
//        continue
//    }
//    b = numB
//    isB = true
//} while !isB
//
//repeat{
//    print("""
//    Введите знак операции:
//    / - деление
//    * - умножение
//    + - сложение
//    - - вычитание
//    ^ - возведение в степень
//    """)
//    c = readLine()
//    // Проверяем, что cтрока является математическим символом
//    if c != nil && (c! == "/" || c! == "*" || c! == "+" || c! == "-" || c! == "^") {
//        isC = true
//    } else {
//        print("Введен некорректный знак")
//    }
//} while !isC
//
//var result = calc(String(a!), String(b!), c)
//print("Результат - \(result)")




var count: Int?
var numArr = [Int]()
var znak: String?
var num: Int?
var a: Int?
var b: Int?
var indexNum = 1

var countFlag = false
var isNum = false
var isZnak = false
var isA = false
var isB = false

// Спросим у пользователя, что он хочет сделать с числами?
repeat{
    print("""
    Введите знак операции:
    / - деление
    * - умножение
    + - сложение
    - - вычитание
    ^ - возведение в степень
    """)
    znak = readLine()
    // Проверяем, что cтрока является математическим символом
    if znak != nil && (znak! == "/" || znak! == "*" || znak! == "+" || znak! == "-" || znak! == "^") {
        isZnak = true
    } else {
        print("Введен некорректный знак")
    }
} while !isZnak

if znak != "^" {
    repeat {
        // Сколько знаков пользователь хочет ввести?
        print("Введите количество аргументов")
        
        guard let myCount = Int(readLine() ?? ""), myCount != Int("0") else {
            print("Неправильно введённое число.")
            continue
        }
        
        count = myCount
        countFlag = true
    } while !countFlag

    numArr = arrayByCount(count!)

    // Проверим количество элементов массива и предложим пользователю заполнить каждый
    for _ in numArr {
        repeat {
            print("Введите аргумент №\(indexNum)")
            guard let num = Int(readLine() ?? "") else {
                print("Введите правильное число")
                continue
            }
        numArr[indexNum-1] = num
        indexNum += 1
        isNum = true
        } while !isNum
    }

    print("Результат вычисления - \(calc(numArr, znak))")
    
} else {
    repeat{
        print("Введите первое значение")
        // Попробуем узнать, является ли это значение числом
        guard let numA = Int(readLine() ?? "") else {
            print("Введено некорректное значение")
            continue
        }
        a = numA
        isA = true
    } while !isA
    
    repeat{
        print("Введите второе значение")
        // Проверяем, что cтроку можно перевести в Int
        guard let numB = Int(readLine() ?? "") else {
            print("Введено некорректное значение")
            continue
        }
        b = numB
        isB = true
    } while !isB
    
    let arrPow = [a!,b!]
    print("Результат вычисления - \(calc(arrPow, znak))")
}
