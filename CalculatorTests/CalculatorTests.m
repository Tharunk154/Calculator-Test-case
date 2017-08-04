//
//  CalculatorTests.m
//  CalculatorTests
//
//  Created by kalige tharun  on 20/04/2017.
//  Copyright © 2017 kalige tharun . All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Calculator.h"

@interface CalculatorTests : XCTestCase
{
    Calculator *cal;
}
@end

@implementation CalculatorTests

- (void)setUp {
    [super setUp];
    cal = [[Calculator alloc]init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

//Postive TestCase
/**
 * @brief - Test case to test empty string which return '0'
 */
-(void)testEmtpySpace
{
    NSMutableArray *inputArray = [[NSMutableArray alloc]initWithObjects:@"", nil];
    NSInteger result = [Calculator multiplyTheGivenInputSequenceOfStringsFromAnArray:inputArray];
    NSInteger expectedResult = 0;
    XCTAssertTrue(result == expectedResult, @"Both Value are not correct");
}

/**
 * @brief - Test case to test single string which return '2'
 */
-(void)testSingeString
{
    NSMutableArray *inputArray = [[NSMutableArray alloc]initWithObjects:@"2", nil];
    NSInteger result = [Calculator multiplyTheGivenInputSequenceOfStringsFromAnArray:inputArray];
    NSInteger expectedResult = 2;
    XCTAssertTrue(result == expectedResult, @"Both Value are not correct");
}

/**
 * @brief - Test case to test Multile string which return {"1","2","3","4","5",nil}
 */
-(void)testMultipleString
{
   // NSMutableArray *inputArray = [[NSMutableArray alloc]initWithObjects:@"1","2","3","4", nil];
    NSMutableArray *inputArray = [[NSMutableArray alloc]initWithObjects:@"1",@"2",@"3",@"4", nil];
    NSInteger result = [Calculator multiplyTheGivenInputSequenceOfStringsFromAnArray:inputArray];
    NSInteger expectedResult = 24;
    XCTAssertTrue(result == expectedResult, @"Both Value are not correct");
}

//Negative Test Case
/**
 * @brief - Test case to test Multile string which return {"1","2","3","4","5",nil}
 */
-(void)testCaseWithMultipleStringForNegativeSenario
{
    // NSMutableArray *inputArray = [[NSMutableArray alloc]initWithObjects:@"1","2","3","4", nil];
    NSMutableArray *inputArray = [[NSMutableArray alloc]initWithObjects:@"1",@"2",@"3",@"4", nil];
    NSInteger result = [Calculator multiplyTheGivenInputSequenceOfStringsFromAnArray:inputArray];
    NSInteger expectedResult = 4;
    XCTAssertFalse(result == expectedResult, @"Both Value are not correct");
}



- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
