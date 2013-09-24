//
//  Blog.m
//  BROrmHaving
//
//  Created by Goulwen on 24/09/13.
//  Copyright (c) 2013 Goulwen. All rights reserved.
//

#import "Blog.h"

@implementation Blog

- (NSString*) description {
    return self[@"name"];
}


# pragma mark - BRORM
+ (NSString*)getTableName {
    return @"blog";
}

+ (NSString*)idColumn {
    return @"id";
}

# pragma mark - Custom queries
+ (BROrmWrapper*) wrapper {
    BROrmWrapper *w = [BROrmWrapper
                       factoryForClassName:NSStringFromClass(self)];
    return w;
}

+ (NSMutableArray*) findAll {
    // Returns all categories, sorted by cat_name.
    BROrmWrapper* w = [[self class] wrapper];
    [w orderBy:@"name" withOrdering:@"ASC"];
    NSDictionary* constraints = @{
        @"column": @"blog.id",
        @"type": @"=",
        @"value": @"blog_id",
    };
    //[w join:@"Post" withConstraints:@[constraints] andAlias:@"Post"];
    [w groupBy:@"blog.name"];
    //[w having:@"COUNT(post.id) > 0"];
    NSArray *blogs = [w findMany];
    return [[NSMutableArray alloc] initWithArray:blogs];
}



@end
