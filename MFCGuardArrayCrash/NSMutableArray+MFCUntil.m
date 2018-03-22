//
//  NSMutableArray+MFCUntil.m
//  MFCGuardArrayCrash
//
//  Created by machao on 2018/3/20.
//  Copyright © 2018年 machao. All rights reserved.
//

#import "NSMutableArray+MFCUntil.h"
#import <objc/runtime.h>

@implementation NSMutableArray (MFCUntil)


+ (void)load{
    [super load];
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //方法交换只要一次就好
        
        /////    可变数组
        Method oldObjectAtIndex1 = class_getInstanceMethod(objc_getClass("__NSArrayM"), @selector(insertObject:atIndex:));
        Method newObjectAtIndex1 = class_getInstanceMethod(objc_getClass("__NSArrayM"), @selector(__mfcMutable__insertObject:atIndex:));
        method_exchangeImplementations(oldObjectAtIndex1, newObjectAtIndex1);
        

    });
}

-(void)__mfcMutable__insertObject:(id)anObject atIndex:(NSUInteger)index{
    if (anObject == nil || index > self.count){
        @try {
             [self __mfcMutable__insertObject:anObject atIndex:index];
        } @catch (NSException *exception) {
            //__throwOutException  抛出异常
            
        } @finally {
            
        }
    }
    else{
        [self __mfcMutable__insertObject:anObject atIndex:index];
    }
}


@end
