//
//  NSMutableDictionary+MFCUntil.m
//  MFCGuardArrayCrash
//
//  Created by machao on 2018/3/21.
//  Copyright © 2018年 machao. All rights reserved.
//

#import "NSMutableDictionary+MFCUntil.h"
#import <objc/runtime.h>

@implementation NSMutableDictionary (MFCUntil)

//
//+ (void)load{
//    [super load];
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        //方法交换只要一次就好
//        
//        /////    可变数组
//        Method oldObjectAtIndex1 = class_getInstanceMethod(objc_getClass("__NSDictionaryM"), @selector(setObject:forKey:));
//        Method newObjectAtIndex1 = class_getInstanceMethod(objc_getClass("__NSDictionaryM"), @selector(__mfcMutable__setObject:forKey:));
//        method_exchangeImplementations(oldObjectAtIndex1, newObjectAtIndex1);
//        
//        
//    });
//}
//
//
//
//
/////
//
//-(void)__mfcMutable__setObject:(id)anObject forKey:(id<NSCopying>)aKey{
//    if (anObject == nil || aKey == nil){
//        @try {
//            [self __mfcMutable__setObject:anObject forKey:aKey ];
//        } @catch (NSException *exception) {
//            //__throwOutException  抛出异常
//            
//        } @finally {
//            
//        }
//    }
//    else{
//        [self __mfcMutable__setObject:anObject forKey:aKey ];
//    }
//}
//




@end
