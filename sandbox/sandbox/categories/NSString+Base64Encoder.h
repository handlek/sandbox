//
//  NSString+Base64Encoder.h
//  feelingmap
//
//  Created by 今村 庄一 on 12/08/06.
//
//

#import <Foundation/Foundation.h>

@interface NSString (Base64Encoder)
+ (NSString *) encodeBase64:(NSData *)data length:(int)length;
+ (NSData *) decodeBase64:(NSString *)string;
@end
