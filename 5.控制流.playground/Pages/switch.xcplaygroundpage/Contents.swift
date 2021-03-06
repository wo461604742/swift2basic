//: - switch语句:超过2个以上条件判断的场合,支持各种匹配条件。


//: - 1⃣️范围匹配:如根据室外温度来自动调节室内温度的空调
var temp = 39

switch temp {
case 35...42:
    print("强力制冷模式")
case 25...34:
    print("制冷模式")
case 18...24:
    print("除湿模式")
case 0...17:
    print("制暖模式")
default:
    print("温度超出工作范围！")
}




//: - 2⃣️元组匹配(选修):如某坐标(含x和y两个变量)所在象限判断.
坐标图1()

//判断坐标 是否位于 原点 X轴 Y轴 或  2 * 2的坐标区域内
let 坐标1 = (0, 2)

switch 坐标1 {
case (0, 0):
    print("原点")
case (_, 0):
    print("坐标在X轴上")
case (0, _):
    print("坐标在Y轴上")
case (-2...2, -2...2):
    print("坐标在2*2范围内")
default:
    break
}

//: - 3⃣️值绑定:一个case里可以绑定临时变量,以便在执行语句中使用.
//把坐标的值显示出来
let 坐标2 = (13, 12)

switch 坐标2 {
case (0, 0):
    print("原点")
case (let x, 0):
    print("坐标在X轴上:", x)
case (0, let y):
    print("坐标在Y轴上:", y)
case (let x, let y):
    print(x, y)
}

//: - 4⃣️值绑定的where再匹配:
坐标图2()
//判断坐标是否在对角线上
let 坐标3 = (2.5, 1.5)

switch 坐标3 {
case (let x, let y) where x == y:
    print("坐标在45度对角线上")
case (let x, let y) where x == -y:
    print("坐标在135度对角线上")
default:
    print("坐标不在任何对角线上")
}



