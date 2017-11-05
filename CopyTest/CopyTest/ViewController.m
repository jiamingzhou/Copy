//
//  ViewController.m
//  CopyTest
//
//  Created by 贾明洲 on 2017/11/1.
//  Copyright © 2017年 jiamingzhou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, copy) NSString *pTest;
@property (nonatomic, copy) NSMutableString *mpTest;
@property (nonatomic, copy) NSMutableArray *pTestArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //字符串
    NSString *test = @"copy NSString";
    NSString *test1 = [test copy];
    NSString *test2 = [test mutableCopy];
    
    NSLog(@"test:%p", test);
    NSLog(@"test1:%p", test1);
    NSLog(@"test2:%p", test2);
    
    NSMutableString *mtest = [[NSMutableString alloc] initWithString:@"mutableCopy NSSting"];
    NSMutableString *mtest4 = [mtest copy];
    NSMutableString *mtest5 = [mtest mutableCopy];
    
    NSLog(@"mtest:%p, %@", mtest, mtest);
    NSLog(@"mtest4:%p, %@", mtest4, mtest4);
    NSLog(@"mtest5:%p, %@", mtest5, mtest5);
    
    //集合类型
    NSArray *testArray = @[@"A", @"B", @"C"];
    NSArray *testArray1 = [testArray copy];
    NSArray *testArray2 = [testArray mutableCopy];
    
    NSLog(@"testArray:%p", testArray);
    NSLog(@"testArray1:%p", testArray1);
    NSLog(@"testArray2:%p", testArray2);
    
    NSMutableArray *mTestArray = [[NSMutableArray alloc] initWithObjects:@"AA", @"BB", @"CC", nil];
    NSMutableArray *mTestArray1 = [mTestArray copy];
    NSMutableArray *mTestArray2 = [mTestArray mutableCopy];
    
    NSLog(@"testArray:%p", mTestArray);
    NSLog(@"testArray1:%p", mTestArray1);
    NSLog(@"testArray2:%p", mTestArray2);
    
    NSLog(@"testArray 1value:%p", [mTestArray objectAtIndex:0]);
    NSLog(@"testArray1 1value:%p", [mTestArray1 objectAtIndex:0]);
    NSLog(@"testArray2 1value:%p", [mTestArray2 objectAtIndex:0]);
    
    
    self.pTest = test;
    NSLog(@"test:%p", test);
    NSLog(@"pTest:%p", _pTest);
    
    self.mpTest = mtest;
    NSLog(@"mtest:%p", mtest);
    NSLog(@"mpTest:%p", _mpTest);

    self.pTestArray = mTestArray;
    NSLog(@"mtest:%@", mTestArray);
    NSLog(@"mpTest:%@", _pTestArray);
    
    [mTestArray removeAllObjects];
    NSLog(@"mtest:%@", mTestArray);
    NSLog(@"mpTest:%@", _pTestArray);
}

- (void)setPTest:(NSString *)pTest {
    _pTest = [pTest copy];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
