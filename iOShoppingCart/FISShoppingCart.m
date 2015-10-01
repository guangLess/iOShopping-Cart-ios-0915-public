//
//  FISShoppingCart.m
//  iOShoppingCart
//
//  Created by Guang on 10/1/15.
//  Copyright © 2015 FIS. All rights reserved.
//

#import "FISShoppingCart.h"

@implementation FISShoppingCart



-(NSUInteger)calculateTotalPriceInCents{
    
    FISItem * item = [[FISItem alloc] init];
    NSUInteger sum = 0 ;
    
    for ( item in self.items) {
        sum = item.priceInCents + sum ;
    }
    
    return sum;
}

-(void)addItem:(FISItem *)item{
    
    [self.items addObject:item];
}
-(void)removeItem:(FISItem *)item{
    
    NSUInteger x = [self.items indexOfObject:item];
    [self.items removeObjectAtIndex:x];
    
}
-(void)removeAllItemsLikeItem:(FISItem *)item{
    
    NSInteger x = 0 ;
    NSMutableArray * removedItem = [[NSMutableArray alloc] init];
    
    for (FISItem * item in self.items) {
         removedItem = self.items;
         x = [self.items indexOfObject:item];
        [removedItem removeObjectAtIndex: x ];

    }
    self.items = removedItem;
}

-(void)sortItemsByNameAsc{

    NSMutableArray * sortedArray = [[NSMutableArray alloc] init];
    
    for (FISItem * item in self.items) {
        [sortedArray addObject: item];
    }
    
    NSSortDescriptor * sortByname = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES selector:@selector(caseInsensitiveCompare:)];
    NSArray * sortA = [sortedArray sortedArrayUsingDescriptors:@[sortByname]];
    
    self.items = [sortA mutableCopy]; //sort vs sorted
}

-(void)sortItemsByNameDesc{
    
    NSMutableArray * sortedArray = [[NSMutableArray alloc] init];
    
    for (FISItem * item in self.items) {
        [sortedArray addObject: item];
    }
    
    NSSortDescriptor * sortByname = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES selector:@selector(caseInsensitiveCompare:)];
    NSSortDescriptor * sortBynameD = [sortByname reversedSortDescriptor];
    self.items = [[sortedArray sortedArrayUsingDescriptors:@[sortBynameD]] mutableCopy];
    
}

-(void)sortItemsByPriceInCentsAsc{
    
    NSMutableArray * sortedArray = [[NSMutableArray alloc] init];
    
    for (FISItem * item in self.items) {
        [sortedArray addObject: item];
    }
    
    NSSortDescriptor * sortByPrice = [NSSortDescriptor sortDescriptorWithKey:@"priceInCents" ascending:YES];
    NSMutableArray * numberS = [[sortedArray sortedArrayUsingDescriptors:@[sortByPrice]] mutableCopy];
    self.items = numberS;
    
}
-(void)sortItemsByPriceInCentsDesc{
    
    NSMutableArray * sortedArray = [[NSMutableArray alloc] init];
    
    for (FISItem * item in self.items) {
        [sortedArray addObject: item];
    }
    
    NSSortDescriptor * sortByPrice = [[NSSortDescriptor sortDescriptorWithKey:@"priceInCents" ascending:YES] reversedSortDescriptor];
    NSMutableArray * numberS = [[sortedArray sortedArrayUsingDescriptors:@[sortByPrice]] mutableCopy];
    self.items = numberS;
}

-(NSArray *)allItemsWithName:(NSString*)name{
    
    // self.items  >> self.items -> item.name = name

    NSPredicate * itemNamePredi = [NSPredicate predicateWithFormat:@"name == %@",name];
    NSArray * sameNamedItems = [self.items filteredArrayUsingPredicate:itemNamePredi];
    
    return sameNamedItems;
    
}
-(NSArray *)allItemsWithMinimumPriceInCents:(NSUInteger)number{
    
    NSPredicate * itemPricePredicate = [NSPredicate predicateWithFormat:@"priceInCents >= %i",number];
    return [self.items filteredArrayUsingPredicate:itemPricePredicate];

}

-(NSArray *)allItemsWithMaximumPriceInCents:(NSUInteger)number{
    
    NSPredicate * itemPricePredicate = [NSPredicate predicateWithFormat:@"priceInCents <= %i",number];
    return [self.items filteredArrayUsingPredicate:itemPricePredicate];

}




@end
