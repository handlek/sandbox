//
//  NSDictionary+QueryString.m
//  feelingmap
//
//  Created by 今村 庄一 on 12/08/06.
//
//

#import "NSDictionary+QueryString.h"

@implementation NSDictionary (QueryString)

- (NSString*)toQueryString {
    NSString *result = @"";
    id key;
    NSEnumerator *enumerator = [self keyEnumerator];
    while (key = [enumerator nextObject]) {
        result = [result stringByAppendingFormat:@"%@=%@&", key, [self objectForKey:key]];
    }
    
    result = [result substringToIndex:[result length] - 1];
    return [result stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
}

+ (NSDictionary*)fromQueryString:(NSString*)queryString {
    NSArray *components = [queryString componentsSeparatedByString:@"&"];
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    for (NSString *component in components) {
        NSArray *keyAndValues = [component componentsSeparatedByString:@"="];
        [parameters setObject:[keyAndValues objectAtIndex:1] forKey:[keyAndValues objectAtIndex:0]];
    }
    return parameters;
}

@end
