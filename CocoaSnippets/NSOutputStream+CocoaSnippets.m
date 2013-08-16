//
//  NSOutputStream+CocoaSnippets.m
//  CocoaSnippets
//
//  Created by Alexander Ignatenko on 8/16/13.
//  Copyright (c) 2013 Alexander Ignatenko. All rights reserved.
//

#import "NSOutputStream+CocoaSnippets.h"

#define BUFSIZE 1024

@implementation NSOutputStream (CocoaSnippets)

- (BOOL)writeData:(NSData *)data
{
    if (![self hasSpaceAvailable])
        return NO;

    NSInteger written = 0;
    while (written < data.length) {
        NSInteger chunkWritten = [self write:(data.bytes + written) maxLength:MIN(data.length, BUFSIZE) - written];
        if (chunkWritten == 0)
            break;
        if (chunkWritten < 0)
            return NO;
        written += chunkWritten;
    }
    return YES;
}

@end
