//
//  NSInputStream+CocoaSnippets.m
//  CocoaSnippets
//
//  Created by Alexander Ignatenko on 8/16/13.
//  Copyright (c) 2013 Alexander Ignatenko. All rights reserved.
//

#import "NSInputStream+CocoaSnippets.h"

#define BUFSIZE 1024

@implementation NSInputStream (CocoaSnippets)

- (NSData *)readDataWithMaxLength:(NSUInteger)length
{
    NSMutableData *data = [[NSMutableData alloc] init];
    while ([self hasBytesAvailable]) {
        uint8_t *buf[BUFSIZE];
        NSInteger read = 0;
        while (read < BUFSIZE) {
            NSInteger chunkRead = [self read:buf[read] maxLength:BUFSIZE - read];
            if (chunkRead == 0)
                break;
            if (chunkRead < 0)
                return nil;
            read += chunkRead;
        }
        [data appendBytes:buf length:read];
    }
    return data;
}

@end
