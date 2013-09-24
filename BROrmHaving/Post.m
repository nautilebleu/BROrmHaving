//
//  Post.m
//  BROrmHaving
//
//  Created by Goulwen on 24/09/13.
//  Copyright (c) 2013 Goulwen. All rights reserved.
//

#import "Post.h"

@implementation Post

# pragma mark - BRORM
+ (NSString*)getTableName {
    return @"post";
}

+ (NSString*)idColumn {
    return @"id";
}

@end
