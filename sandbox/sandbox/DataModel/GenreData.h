//
//  GenreData.h
//  sandbox
//
//  Created by 今村 庄一 on 2013/12/03.
//  Copyright (c) 2013年 HANDLEK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+ValueConverter.h"
#import "SBJson.h"

@interface GenreData : NSObject

@property (nonatomic, assign) NSInteger genreId;
@property (nonatomic, retain) NSString* name;

- (id) initWithDictionary: (NSDictionary*)data;
- (id) initWithJsonString: (NSString*)json;

@end
