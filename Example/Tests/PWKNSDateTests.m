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

- (void)testDateOfTodayNoon {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDate *now = [NSDate date];
    NSDate *actual = [NSDate dateOfTodayNoonFromNowDate:now];
    NSDate *expected = [calendar dateBySettingHour:12 minute:0 second:0 ofDate:now options:0];
    XCTAssertEqualObjects(actual, expected);
}

- (void)testDateOfTodayEnd {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDate *now = [NSDate date];
    NSDate *actual = [NSDate dateOfTodayEndFromNowDate:now];
    
    NSDate *expected = [calendar dateBySettingHour:23 minute:59 second:59 ofDate:now options:0];
    XCTAssertEqualObjects(actual, expected);
}

- (void)testDateOfEndTomorrow {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDate *now = [NSDate date];
    NSDate *actual = [NSDate dateOfTomorrowEndFromNowDate:now];
    
    NSDate *expected = [calendar dateByAddingUnit:NSCalendarUnitDay value:1 toDate:now options:0];
    expected = [calendar dateBySettingHour:23 minute:59 second:59 ofDate:expected options:0];
    XCTAssertEqualObjects(actual, expected);
}


@end
