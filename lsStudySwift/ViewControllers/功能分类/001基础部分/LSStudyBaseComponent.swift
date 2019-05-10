//
//  LSStudyBaseComponent.swift
//  lsStudySwift
//
//  Created by 李硕 on 2019/5/9.
//  Copyright © 2019 LSPO. All rights reserved.
//
//  基础部分

import UIKit

class LSStudyBaseComponent: UIViewController {

    // 这是一个注释
    /*
     这也是一个注释
     */

    /*
     分号，与其他大部分编程语言不同，Swift 并不强制要求你在每条语句的结尾处使用分号（;），
     当然，你也可以按照你自己的习惯添加分号。
     */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 设置背景色
        self.view.backgroundColor = UIColor.randomColor;
        // 常量和变量
        self.constantsAndVariables();
        // 类型标注
        self.typeAnnotation();
        // 整型和浮点型
        self.lsIntegerAndFloatStudy();
        // 数据型类型转换
        self.lsNumericTypeConversion();
    }
    
    /// 常量和变量
    func constantsAndVariables() {
        /*
         常量的值一旦设定就不能改变，而变量的值可以随意更改
        */
        
        // 声明一个常量 lsFirstConstant，并给它一个值10
        let lsFirstConstant = 10;
        // 声明一个变量 lsFirstVariables，并将它初始化为0
        var lsFirstVariables = 0;
        lsFirstVariables = 1;
        
        // 你可以在一行中声明多个常量或多个变量，用逗号隔开
        let xLet = 0.0, yLet = 0, zLet = 0.0;
        var xVar = 0.0, yVar = 0, zVar = 0.0;
        xVar = 0.1;
        yVar = 1;
        zVar = 0.2;
        
        
        print(lsFirstConstant,lsFirstVariables, separator: "\n", terminator: "\n");
        print(xLet,yLet,zLet, separator: "---", terminator: "\n");
        print(xVar,yVar,zVar, separator: "---", terminator: "\n");
        /*
         注意； 如果你的代码中有不需要改变的值，请使用 let 关键字将它声明为常量。只将需要改变的值声明为变量
         */
        
        /*
         常量和变量名可以包含任何字符，包括 Unicode 字符
         
         常量与变量名不能包含数学符号，箭头，保留的（或者非法的）Unicode码位，
         连线与制表符。也不能以数字开头，但是可以在常量与变量名的其他地方包含数字。
         
         一旦你将常量或者变量声明为确定的类型，你就不能使用相同的名字再次进行声明，
         或者改变其存储的值的类型。同时，你也不能将常量与变量进行互转
         */
        let π = 3.1415926;
        let 你好啊 = "不，你不好";
        let 😺🐈 = "就是这么任性";
        
        print(π,你好啊,😺🐈, separator: "\n", terminator: "\n");
        
        /*
         注意
         如果你需要使用与 Swift 保留关键字相同的名称作为常量或者变量名，
         你可以使用反引号（`）将关键字包围的方式将其作为名字使用。
         (德玛西亚：这个操作我想测试下，可是没测出来)
         无论如何，你应当避免使用关键字作为常量或变量名，除非你别无选择。
         */
        
    }
    
    /// 类型标注
    func typeAnnotation() {
        /*
         当你声明常量或者变量的时候可以加上类型标注（type annotation），说明常量或者变量中要存储的值的类型。如果要添加类型标注，需要在常量或者变量名后面加上一个冒号和空格，然后加上类型名称
         规定声明常量或变量的类型
         */
        
        var lsWelcomeMessage: String;
        lsWelcomeMessage = "hello";
        
        var red, green, blue: UIColor;
        red = UIColor.red;
        green = UIColor.green;
        blue = UIColor.blue;
        
        print(lsWelcomeMessage,red,green,blue);
        
    }
    
    // 输出常量和变量、打印结果
    func lsPrintAction() {
        /*
         打印
         Any 要打印的内容，有多个内容用逗号分隔开
         separator 多个内容的分割符
         terminator 结尾分隔符
         */
        print("hello word","你好，世界","你好，swift", separator: "\n", terminator: "\n");
    }
    
    /// 整数
    func lsIntegerAndFloatStudy() {
        /*
         整数就是没有小数部分的数字，比如 42 和 -23 。整数可以是 有符号（正、负、零）或者 无符号（正、零）。
         Swift 提供了8、16、32和64位的有符号和无符号整数类型。这些整数类型和 C 语言的命名方式很像，比如8位无符号整数类型是 UInt8，32位有符号整数类型是 Int32 。就像 Swift 的其他类型一样，整数类型采用大写命名法
         */
        
         // 整数范围
         // minValue 为0，是UInt8 类型
        let minValue = UInt8.min;
        // maxValue 为255，是UInt8 类型
        let maxValue = UInt8.max;
        print(minValue,maxValue, separator: "\n", terminator: "\n");
        
        // 在32位平台上，Int 和 Int32 长度相同。
        // 在64位平台上，Int 和 Int64 长度相同
        let minThisAppValue = Int.min;
        let maxThisAppValue = Int.max;
        print(minThisAppValue,maxThisAppValue, separator: "\n", terminator: "\n");
        
        // Swift 也提供了一个特殊的无符号类型 UInt，长度与当前平台的原生字长相同
        /*
         注意
         尽量不要使用 UInt，除非你真的需要存储一个和当前平台原生字长相同的无符号整数。
         除了这种情况，最好使用 Int，即使你要存储的值已知是非负的。
         统一使用 Int 可以提高代码的可复用性，避免不同类型数字之间的转换，并且匹配数字的类型推断。
         */
        
        /*
         Double 表示64位浮点数。当你需要存储很大或者很高精度的浮点数时请使用此类型。
         Float 表示32位浮点数。精度要求不高的话可以使用此类型
         Double 精确度很高，至少有15位数字，而 Float 只有6位数字。
         选择哪个类型取决于你的代码需要处理的值的范围，在两种类型都匹配的情况下，将优先选择 Double
         */
        
    }
    
    /// 数值型类型转换
    func lsNumericTypeConversion() {
        /*
         不同整数类型的变量和常量可以存储不同范围的数字。
         Int8 类型的常量或者变量可以存储的数字范围是 -128~127，
         而 UInt8 类型的常量或者变量能存储的数字范围是 0~255。
         如果数字超出了常量或者变量可存储的范围，编译的时候会报错
         */
//        let tooSmallInt: UInt64 = -1;
        
        // 类型不同的数字不可以直接加减
        
        // 整数转换
        let lsUint16: UInt16 = 2_000;
        let lsUint8: UInt8 = 1;
        let lsUint16AndlsUint8 = lsUint16 + UInt16(lsUint8);
        
        print(lsUint16AndlsUint8);
        
        // 整数和浮点数转换
        let lsInt = 3;
        let lsPoint = 0.1323;
        let lsPointAndInt = Double(lsInt) + lsPoint;
        
        print(lsPointAndInt);
        
        /*
         注意
         结合数字类常量和变量不同于结合数字类字面量。字面量 3 可以直接和字面量 0.14159 相加，因为数字字面量本身没有明确的类型。它们的类型只在编译器需要求值的时候被推测
         */
        
    }

}


