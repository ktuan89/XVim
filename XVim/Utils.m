//
//  Utils.m
//  XVim
//
//  Created by Suzuki Shuichiro on 2/16/13.
//
//

#import "Utils.h"


@implementation Utils
+ (BOOL)isAlpha:(unichar)ch {
  return (ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z') || ch == '_';
}
@end
