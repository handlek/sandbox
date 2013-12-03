//
//  NSDictionary+ValueConverter.m
//  feelingmap
//
//  Created by 今村 庄一 on 12/08/06.
//
//

#import "NSDictionary+ValueConverter.h"

@implementation NSDictionary (ValueConverter)

- (void)setIntegerValue: (NSInteger)v forKey: (NSString*)key
{
    [self setValue: [NSNumber numberWithInteger: v] forKey: key];
}

- (void)setBoolValue: (BOOL)v forKey: (NSString*)key
{
    [self setValue: [NSNumber numberWithBool: v] forKey: key];
}

- (void)setDoubleValue: (double)v forKey: (NSString*)key
{
    [self setValue: [NSNumber numberWithDouble: v] forKey: key];
}


- (NSInteger)intValueForKey: (id)key
{
    return [self intValueForKey:key withDefault:0];
}

- (NSInteger)intValueForKey: (id)key withDefault: (NSInteger)def
{
    NSNumber* val = [self objectForKey: key];
    if(val == nil || [val isEqual:[NSNull null]]) {
        return def;
    }
    
    return [val intValue];
}

- (double)doubleValueForKey: (id)key
{
    return [self doubleValueForKey:key withDefault:0.0];
}

- (double)doubleValueForKey: (id)key withDefault: (double)def
{
    NSNumber* val = [self objectForKey: key];
    if(val == nil || [val isEqual:[NSNull null]]) {
        return def;
    }
    
    return [val doubleValue];
}

- (BOOL)boolValueForKey: (id)key
{
    return [self boolValueForKey:key withDefault:YES];
}

- (BOOL)boolValueForKey: (id)key withDefault: (BOOL)def
{
    NSNumber* val = [self objectForKey: key];
    if(val == nil || [val isEqual:[NSNull null]]) {
        return def;
    }
    
    return [val boolValue];
}

- (id)objectOrNilForKey: (id)key
{
    NSObject* val = [self objectForKey: key];
    if(val == nil || [val isEqual:[NSNull null]]) {
        return nil;
    }
    
    return val;
}

@end
