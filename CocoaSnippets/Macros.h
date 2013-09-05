//
//  Macros.h
//  CocoaSnippets
//
//  Created by Alexander Ignatenko on 8/30/13.
//  Copyright (c) 2013 Alexander Ignatenko. All rights reserved.
//

#define weakify(object, reference) __weak typeof(object) reference = object
#define strongify(reference, object) __strong typeof(reference) object = reference

#define call_block(block) do { {if (block != nil) block();} } while(0)
#define call_block_with(block, ...) do { {if (block != nil) block(__VA_ARGS__);} } while(0)
