//
//  FISShoppingCart.h
//  iOShoppingCart
//
//  Created by Guang on 10/1/15.
//  Copyright © 2015 FIS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISItem.h"

@interface FISShoppingCart : NSObject

@property(nonatomic,strong) NSMutableArray * items;


-(NSUInteger)calculateTotalPriceInCents;

-(void)addItem:(FISItem *)item;
-(void)removeItem:(FISItem *)item;
-(void)removeAllItemsLikeItem:(FISItem *)item;
-(void)sortItemsByNameAsc;
-(void)sortItemsByNameDesc;
-(void)sortItemsByPriceInCentsAsc;
-(void)sortItemsByPriceInCentsDesc;

-(NSArray *)allItemsWithName:(NSString*)name;
-(NSArray *)allItemsWithMinimumPriceInCents:(NSUInteger)number;
-(NSArray *)allItemsWithMaximumPriceInCents:(NSUInteger)number;




@end
