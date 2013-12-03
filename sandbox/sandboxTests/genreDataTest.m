//
//  genreDataTest.m
//  sandbox
//
//  Created by 今村 庄一 on 2013/12/03.
//  Copyright (c) 2013年 HANDLEK. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GenreData.h"

@interface genreDataTest : XCTestCase

@end

@implementation genreDataTest

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testExample
{
    GenreData* genre = nil;
    XCTAssertNil(genre);
}

@end
