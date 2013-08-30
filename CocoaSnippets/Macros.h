//
//  Macros.h
//  CocoaSnippets
//
//  Created by Alexander Ignatenko on 8/30/13.
//  Copyright (c) 2013 Alexander Ignatenko. All rights reserved.
//

#define weakify(object, weakRef) __weak typeof(object) weakRef = object
