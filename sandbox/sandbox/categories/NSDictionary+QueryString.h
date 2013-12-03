//
//  NSDictionary+QueryString.h
//  feelingmap
//
//  Created by 今村 庄一 on 12/08/06.
//
//

#import <Foundation/Foundation.h>

@interface NSDictionary (QueryString)
- (NSString*)toQueryString;
+ (NSDictionary*)fromQueryString:(NSString*)queryString;
@end
