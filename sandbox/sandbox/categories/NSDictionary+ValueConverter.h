//
//  NSDictionary+ValueConverter.h
//  feelingmap
//
//  Created by 今村 庄一 on 12/08/06.
//
//

#import <Foundation/Foundation.h>

@interface NSDictionary (ValueConverter)

- (void)setIntegerValue: (NSInteger)v forKey: (NSString*)key;
- (void)setBoolValue: (BOOL)v forKey: (NSString*)key;
- (void)setDoubleValue: (double)v forKey: (NSString*)key;


- (NSInteger)intValueForKey: (id)key;
- (NSInteger)intValueForKey: (id)key withDefault: (NSInteger)def;
- (double)doubleValueForKey: (id)key;
- (double)doubleValueForKey: (id)key withDefault: (double)def;
- (BOOL)boolValueForKey: (id)key;
- (BOOL)boolValueForKey: (id)key withDefault: (BOOL)def;

- (id)objectOrNilForKey: (id)key;
@end
