//
//  BaseViewController.m
//  CocoaSnippets
//
//  Created by Alexander Ignatenko on 9/5/13.
//  Copyright (c) 2013 Alexander Ignatenko. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (NSString *)preparingForSegueBlockKeyWithSegueIdentifier:(NSString *)identifier
{
    return [NSString stringWithFormat:@"%@.%@.preparingBlock", [self class], identifier];
}

- (void)performSegueWithIdentifier:(NSString *)identifier preparingWithBlock:(void (^)(UIStoryboardSegue *))block
{
    NSString *key = [self preparingForSegueBlockKeyWithSegueIdentifier:identifier];
    [[NSThread currentThread] threadDictionary][key] = block;
    [self performSegueWithIdentifier:identifier sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    [super prepareForSegue:segue sender:sender];
    NSString *key = [self preparingForSegueBlockKeyWithSegueIdentifier:segue.identifier];
    void (^preparingBlock)() = [[NSThread currentThread] threadDictionary][key];
    preparingBlock(segue);
}

@end
