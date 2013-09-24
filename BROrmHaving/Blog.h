//
//  Blog.h
//  BROrmHaving
//
//  Created by Goulwen on 24/09/13.
//  Copyright (c) 2013 Goulwen. All rights reserved.
//

#import "BRModel.h"

@interface Blog : BRModel

@property (strong, nonatomic) NSNumber *id;
@property (strong, nonatomic) NSString *name;

# pragma mark - Custom queries

+ (NSMutableArray*) findAll;

@end
