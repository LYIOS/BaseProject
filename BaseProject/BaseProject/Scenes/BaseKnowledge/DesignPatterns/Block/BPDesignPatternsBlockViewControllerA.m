//
//  BPDesignPatternsBlockViewControllerA.m
//  BaseProject
//
//  Created by xiaruzhen on 2018/2/12.
//  Copyright © 2018年 cactus. All rights reserved.
//

#import "BPDesignPatternsBlockViewControllerA.h"
#import "BPDesignPatternsBlockViewControllerB.h"

#pragma mark - 函数声明
int max(int a,int b);

#pragma mark - 函数定义
int max(int a,int b) {
    return a>b?a:b;
}

//重定义
typedef int (*VALUE)(int,int);
typedef float (^BlockType)(float,float);

//全局变量
int b = 100;

@interface BPDesignPatternsBlockViewControllerA ()

@end

@implementation BPDesignPatternsBlockViewControllerA

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)test {
    BPDesignPatternsBlockViewControllerB *secondVC = [[BPDesignPatternsBlockViewControllerB alloc] init];
    [self.navigationController pushViewController:secondVC animated:YES];
    
    //4.回调。回到赋值页面，给block变量赋值
    //    __block FirstViewController *firstVC = self;
    //    secondVC.passValueBlock =  ^(NSString *string)
    //    {
    //        //给当前视图的控件赋值
    //        firstVC.TfFirst.text = string;
    //    };
    secondVC.passValueBlock = ^(NSString *str) {
        BPLog(@"%@",str);
    };
}

- (void)handle {
#pragma mark - 函数指针
    //重定义
    //函数名字 ： typedef int (*)(参数类型);
    //定义了一个数据类型为void（＊）（），变量名为p_sayHi，初值为NULL的一个指针变量。
    int (*p_max)(int a,int b) = NULL;
    p_max = max; //将sayHi函数的地址赋值给sayHi，那么指针变量p_sayHi就指向了sayHi的函数。p_sayHi就可以当函数名来使用。
    BPLog(@"%d",p_max(2,3));
    
#pragma mark - block 匿名函数，就是没有名字的函数。语法快
    //block变量的定义，和block语法块的实现。
    // 在block中，有一个"^"起标识作用，block语法快，其实就是一个匿名函数 它相较其他函数可以进行函数 嵌套定义。
    //        void(^sayHiBlock)() = ^void ()
    //        {
    //            BPLog(@"sds");
    //        };//定义了一个数据类型为void（^)(),变量名为sayHiBlock,初值为^void(){BPLog(@"ds");}的一个block变量。
    //block的使用
    //        sayHiBlock;
     //求两个数之和
     int (^sumBlock)(int,int) = ^int(int a,int b){
     return a+b;
     };
     int sum =  sumBlock(5,6);
     BPLog(@"%d",sum);
     
     
     //求两个数之差
     int (^subBlock)(int,int) = ^int (int a,int b)
     {
     return a - b;
     };
     BPLog(@"%d",subBlock(11,1));
     
     int (^exchange)(NSString *b) = ^int(NSString *b)
     {
     
     return [b intValue];
     
     };
     BPLog(@"%d",exchange(@"12"));
     
     //加法
     BlockType sumBlock1 = ^float (float a,float b)
     {
     return a+b;
     };
     BPLog(@"%.2f",sumBlock1(5.0,4.0));
     
     //减法
     BlockType subBlock1 = ^float(float a,float b)
     {
     return a-b;
     };
     BPLog(@"%.2f",subBlock1(5.0,4.0));
     //cheng法
     BlockType subBlock2 = ^float(float a,float b)
     {
     return a*b;
     };
     BPLog(@"%.2f",subBlock2(5.0,4.0));
     //chu法
     BlockType subBlock3 = ^float(float a,float b)
     {
     return a/b;
     };
     BPLog(@"%.2f",subBlock3(5.0,4.0));
     
     #pragma mark - block 与 变量
     // __block 告诉编译器 将所修饰的变量在block仍然被识别为可以改变的量。
     __block int a  =10;
     int (^testBlock)() = ^int()
     {
     a = 15; //对于局部变量 在block被识别为不可改变的量，不可以改变，但是可以访问。需要在函数外加__.
     b++;//对于全局变量，在block内部 仍然识别为变量。
     BPLog(@"%d",a);
     return a;
     };
     testBlock();
     BPLog(@"%d",testBlock());
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
