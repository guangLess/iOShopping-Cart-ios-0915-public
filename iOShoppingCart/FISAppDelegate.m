//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISShoppingCart.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    FISShoppingCart * shoppingCart = [[FISShoppingCart alloc] init];
    FISItem * fish = [[FISItem alloc] initWithName:@"Salmon" priceInCents:650];
    //NSLog
    
    return YES;
}

@end
