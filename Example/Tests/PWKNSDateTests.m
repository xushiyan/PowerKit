//
//  PWKNSDateTests.m
//  PowerKit
//
//  Created by Xu, Raymond on 12/22/15.
//  Copyright © 2015 XU SHIYAN. All rights reserved.
//

#import <XCTest/XCTest.h>
@import PowerKit;

@interface PWKNSDateTests : XCTestCase

@end

@implementation PWKNSDateTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
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

- (void)testDateOfEndTomorrow {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDate *now = [NSDate date];
    NSDate *tomorrowEnd = [NSDate dateOfTomorrowEndFromNowDate:now];
    NSDate *megaTomorrowStart = [tomorrowEnd dateByAddingTimeInterval:1];
    NSDate *expected = [calendar dateByAddingUnit:NSCalendarUnitDay value:2 toDate:now options:0];
    expected = [calendar startOfDayForDate:expected];
    XCTAssertEqualObjects(megaTomorrowStart, expected);
}


@end
