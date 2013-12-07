//
//  genreDataTest.m
//  sandbox
//
//  Created by 今村 庄一 on 2013/12/03.
//  Copyright (c) 2013年 HANDLEK. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GenreData.h"
#import "NSDictionary+ValueConverter.h"

@interface genreDataTest : XCTestCase

@end

@implementation genreDataTest

- (void)setUp
{
    [super setUp];
    GenreData* genre = nil;
    NSLog(@"ticke2/ %@", genre);
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testExample
{
    GenreData* genre = nil;
    NSLog(@"ticke2/ %@", genre);
    XCTAssertNil(genre);
}


- (void) testInitWithDictionary
{
    NSMutableDictionary* dic = [[NSMutableDictionary alloc] init];
    [dic setIntegerValue: 10 forKey: @"genre_id"];
    [dic setObject: @"genrename" forKey: @"name"];
    
    GenreData* genre = [[GenreData alloc] initWithDictionary: dic];
    XCTAssertTrue(genre.genreId == 10);
    XCTAssertTrue([@"genrename" isEqualToString: genre.name]);
}

- (void) testInitWithJson
{
    NSString* json = @"{\"genre_id\": 10, \"name\": \"genrename\"}";
    GenreData* genre = [[GenreData alloc] initWithJsonString: json];
    XCTAssertTrue(genre.genreId == 10);
    XCTAssertTrue([@"genrename" isEqualToString: genre.name]);
}


@end
