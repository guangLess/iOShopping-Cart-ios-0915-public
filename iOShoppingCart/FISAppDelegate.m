//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISShoppingCart.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    FISShoppingCart * shoppingCart = [[FISShoppingCart alloc] init];
    
    FISItem * fish = [[FISItem alloc] initWithName:@"Salmon" priceInCents:650];
    FISItem * orange = [[FISItem alloc] initWithName:@"Orange" priceInCents:50];
    
    //FISShoppingCart *shoppingCart = [[FISShoppingCart alloc] init];
    [shoppingCart addItem:fish];
    [shoppingCart addItem:orange];
    [shoppingCart calculateTotalPriceInCents];
    
    //NSLog
    
    return YES;
}

@end
