//
//  BaseViewController.h
//  CocoaSnippets
//
//  Created by Alexander Ignatenko on 9/5/13.
//  Copyright (c) 2013 Alexander Ignatenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

- (void)performSegueWithIdentifier:(NSString *)identifier preparingWithBlock:(void (^)(UIStoryboardSegue *))block;

@end
