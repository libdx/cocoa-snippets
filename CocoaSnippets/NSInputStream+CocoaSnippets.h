//
//  NSInputStream+CocoaSnippets.h
//  CocoaSnippets
//
//  Created by Alexander Ignatenko on 8/16/13.
//  Copyright (c) 2013 Alexander Ignatenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSInputStream (CocoaSnippets)

- (NSData *)readDataWithMaxLength:(NSUInteger)length;

@end
