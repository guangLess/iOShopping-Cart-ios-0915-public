//  FISItem.m

#import "FISItem.h"

@implementation FISItem

- (instancetype)init {
    self = [self initWithName:@""
                 priceInCents:0];
    return self;
}

- (instancetype)initWithName:(NSString *)name
                priceInCents:(NSUInteger)priceInCents {
    self = [super init];
    if (self) {
        _name = name;
        _priceInCents = priceInCents;
    }
    return self;
}
/*/ -(returnType)nameOfTheMethodPart1:(argument type 1)argumentName
                                part2:(argument type 2)argumentName2...
 
 
*/
@end
