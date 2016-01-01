//
//  BNRItem.m
//  RandomItems
//
//  Created by ancool on 15/11/18.
//  Copyright © 2015年 ancool. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

+(instancetype)randomItem
{
    NSArray *randomAdjectiveList = @[@"aaa", @"bbb", @"ccc", @"ddd"];
    NSArray *randomNounList = @[@"eee", @"fff", @"ggg"];
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            randomAdjectiveList[adjectiveIndex],
                            randomNounList[nounIndex]];
    int randomValue = arc4random() % 100;
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10];
    BNRItem *newItem = [[self alloc] initWithItemName:randomName
                                       valueInDollars:randomValue serialNumber:randomSerialNumber];
    return newItem;
}

- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber
{
    self = [super init];
    if(self){
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        _dateCreated = [[NSDate alloc] init];
    }
    return self;
}

- (instancetype)initWithItemName:(NSString *)name
{
    return [self initWithItemName:name
            valueInDollars:0
                     serialNumber:@""];
}

- (instancetype)init
{
    return [self initWithItemName:@"item"];
}

-(NSString *)description
{
    NSString *descriptionString = [[NSString alloc]
                             initWithFormat:@"%@ (%@):worth $%d, recorded on %@",
                             self.itemName,
                             self.serialNumber,
                             self.valueInDollars,
                             self.dateCreated];
    return descriptionString;
}

- (void)dealloc
{
    NSLog(@"Destoryed: %@", self);
}

- (void)setContainedItem:(BNRItem *)containedItem
{
    _containedItem = containedItem;
    self.containedItem.container = self;
}
//
//- (BNRItem *)containedItem
//{
//    return _containedItem;
//}
//
//-(void)setContainer:(BNRItem *)item
//{
//    _container = item;
//}
//
//-(BNRItem *)container
//{
//    return _container;
//}
//
//
//- (void)setItemName:(NSString *)str
//{
//    _itemName = str;
//}
//
//- (NSString *)itemName
//{
//    return _itemName;
//}
//
//- (void)setSerialNumber:(NSString *)str
//{
//    _serialNumber = str;
//}
//
//- (NSString *)serialNumber
//{
//    return _serialNumber;
//}
//
//- (void)setValueInDollars:(int)v
//{
//    _valueInDollars = v;
//}
//
//- (int)valueInDollars
//{
//    return _valueInDollars;
//}
//
//- (NSDate *)dateCreated
//{
//    return _dateCreated;
//}

@end
