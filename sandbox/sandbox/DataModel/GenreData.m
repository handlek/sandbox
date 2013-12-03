//
//  GenreData.m
//  sandbox
//
//  Created by 今村 庄一 on 2013/12/03.
//  Copyright (c) 2013年 HANDLEK. All rights reserved.
//

#import "GenreData.h"

@implementation GenreData

@synthesize genreId, name;

- (id) initWithDictionary: (NSDictionary*)data
{
    if(self = [super init]) {
        self.genreId = [data intValueForKey: @"genre_id"];
        self.name    = [data objectOrNilForKey: @"name"];
    }
    
    return self;
}

- (id) initWithJsonString: (NSString*)json
{
    if(self = [super init]) {
        SBJsonParser *parser = [[SBJsonParser alloc] init];
        NSDictionary* data = [parser objectWithString: json];
        
        self.genreId = [data intValueForKey: @"genre_id"];
        self.name    = [data objectOrNilForKey: @"name"];
    }
    
    return self;
}


@end
