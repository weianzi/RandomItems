//
//  main.m
//  RandomItems
//
//  Created by ancool on 15/11/18.
//  Copyright © 2015年 ancool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *items = [[NSMutableArray alloc] init];
        //[items addObject:@"one"];
        //[items addObject:@"two"];
        //[items addObject:@"three"];
        //[items insertObject:@"zero" atIndex:0];
        
//        for (int i=0; i<[items count]; i++) {
//            NSString *item = [items objectAtIndex:i];
//            NSLog(@"%@", item);
//        }
        
//        for(NSString *item in items){
//            NSLog(@"%@", item);
//        }
        
        
        //BNRItem *item = [[BNRItem alloc] init];
        
//        [item setItemName:@"red sofa"];
//        [item setSerialNumber:@"a1b2c"];
//        [item setValueInDollars:100];
//        
//        NSLog(@"%@, %@, %@, %d", [item itemName], [item dateCreated], [item serialNumber], [item valueInDollars]);
//        
        
        //item.itemName = @"red sofa";
        //item.serialNumber = @"a1b2c";
        //item.valueInDollars = 100;
        
        //NSLog(@"%@, %@, %@, %d", item.itemName, item.dateCreated, item.serialNumber, item.valueInDollars);
        //NSLog(@"%@", item);
        
//        for (int i = 0; i < 10; i++) {
//            BNRItem *item = [BNRItem randomItem];
//            [items addObject:item];
//        }
        
        BNRItem *backpack = [[BNRItem alloc] initWithItemName:@"backpack"];
        [items addObject:backpack];
        BNRItem *calculator = [[BNRItem alloc] initWithItemName:@"calculator"];
        [items addObject:calculator];
        
        backpack.containedItem = calculator;
        
        backpack = nil;
        calculator = nil;
        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
        NSLog(@"Setting items to nil...");
        
        items = nil;
    
    }
    return 0;
}
