//
//  NSInsetTextView.m
//  XVim
//
//  Created by Tomas Lundell on 5/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NSInsetTextView.h"

@implementation NSInsetTextView
@synthesize inset = _inset;

- (instancetype)initWithFrame:(NSRect)frameRect
{
    if (self = [super initWithFrame:frameRect]) {
        NSMutableParagraphStyle *style = [[self defaultParagraphStyle] mutableCopy];
        if (style == nil) {
            style = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
        }
        [style setLineBreakMode:NSLineBreakByTruncatingTail];
        [self setDefaultParagraphStyle:style];
        [style release];
    }
    return self;
}

- (NSPoint)textContainerOrigin {
    NSPoint origin = [super textContainerOrigin];
    NSPoint newOrigin = NSMakePoint(origin.x + _inset.width, origin.y + _inset.height);
    return newOrigin;
}

@end
