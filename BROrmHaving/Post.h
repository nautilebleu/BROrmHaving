//
//  Post.h
//  BROrmHaving
//
//  Created by Goulwen on 24/09/13.
//  Copyright (c) 2013 Goulwen. All rights reserved.
//

#import "BRModel.h"

@interface Post : BRModel

@property (strong, nonatomic) NSNumber *id;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *content;
@property (strong, nonatomic) NSNumber *blog_id;

@end
