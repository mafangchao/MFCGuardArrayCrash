//
//  NSArray+MFCUntil.m
//  HJTabViewControllerDemo
//
//  Created by machao on 2018/2/26.
//  Copyright © 2018年 olinone. All rights reserved.
//

#import "NSArray+MFCUntil.h"
#import <objc/runtime.h>

@implementation NSArray (MFCUntil)

+ (void)load{
    [super load];
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //方法交换只要一次就好
        /////   不可变数组
        Method oldObjectAtIndex = class_getInstanceMethod(objc_getClass("__NSArrayI"), @selector(objectAtIndexedSubscript:));
        Method newObjectAtIndex = class_getInstanceMethod(objc_getClass("__NSArrayI"), @selector(__mfc__objectAtIndexedSubscriptx:));
        method_exchangeImplementations(oldObjectAtIndex, newObjectAtIndex);
        
        Method oldObjectAtIndex1 = class_getInstanceMethod(objc_getClass("__NSArrayI"), @selector(objectAtIndex:));
        Method newObjectAtIndex1 = class_getInstanceMethod(objc_getClass("__NSArrayI"), @selector(__mfc__objectAtIndex:));
        method_exchangeImplementations(oldObjectAtIndex1, newObjectAtIndex1);
        
        Method oldObjectAtIndex2 = class_getInstanceMethod(objc_getClass("__NSArray0"), @selector(objectAtIndex:));
        Method newObjectAtIndex2 = class_getInstanceMethod(objc_getClass("__NSArray0"), @selector(__mfc0__objectAtIndex:));
        method_exchangeImplementations(oldObjectAtIndex2, newObjectAtIndex2);
        
        Method oldObjectAtIndex3 = class_getInstanceMethod(objc_getClass("__NSSingleObjectArrayI"), @selector(objectAtIndex:));
        Method newObjectAtIndex3 = class_getInstanceMethod(objc_getClass("__NSSingleObjectArrayI"), @selector(__mfcSingle__objectAtIndex:));
        method_exchangeImplementations(oldObjectAtIndex3, newObjectAtIndex3);
        
        /////    可变数组
        Method oldObjectAtIndex4 = class_getInstanceMethod(objc_getClass("__NSArrayM"), @selector(objectAtIndexedSubscript:));
        Method newObjectAtIndex4 = class_getInstanceMethod(objc_getClass("__NSArrayM"), @selector(__mfcMutable__objectAtIndexedSubscriptx:));
        method_exchangeImplementations(oldObjectAtIndex4, newObjectAtIndex4);
        
        Method oldObjectAtIndex5 = class_getInstanceMethod(objc_getClass("__NSArrayM"), @selector(objectAtIndex:));
        Method newObjectAtIndex5 = class_getInstanceMethod(objc_getClass("__NSArrayM"), @selector(__mfcSMutable__objectAtIndex:));
        method_exchangeImplementations(oldObjectAtIndex5, newObjectAtIndex5);
    });
}


- (id)__mfc__objectAtIndexedSubscriptx:(NSUInteger)index{
    if (index > self.count - 1 || !self.count){
        @try {
            return [self __mfc__objectAtIndexedSubscriptx:index];
        } @catch (NSException *exception) {
            //__throwOutException  抛出异常
            return nil;
        } @finally {
            
        }
    }
    else{
        return [self __mfc__objectAtIndexedSubscriptx:index];
    }
}
- (id)__mfcMutable__objectAtIndexedSubscriptx:(NSUInteger)index{
    if (index > self.count - 1 || !self.count){
        @try {
            return [self __mfcMutable__objectAtIndexedSubscriptx:index];
        } @catch (NSException *exception) {
            //__throwOutException  抛出异常
            return nil;
        } @finally {
            
        }
    }
    else{
        return [self __mfcMutable__objectAtIndexedSubscriptx:index];
    }
}

- (id)__mfc__objectAtIndex:(NSUInteger)index{
    if (index > self.count - 1 || !self.count){
        @try {
            return [self __mfc__objectAtIndex:index];
        } @catch (NSException *exception) {
            //__throwOutException  抛出异常
            return nil;
        } @finally {
            
        }
    }
    else{
        return [self __mfc__objectAtIndex:index];
    }
}

- (id)__mfc0__objectAtIndex:(NSUInteger)index{
    if (index > self.count - 1 || !self.count){
        @try {
            return [self __mfc0__objectAtIndex:index];
        } @catch (NSException *exception) {
            //__throwOutException  抛出异常
            return nil;
        } @finally {
            
        }
    }
    else{
        return [self __mfc0__objectAtIndex:index];
    }
}

- (id)__mfcSingle__objectAtIndex:(NSUInteger)index{
    if (index > self.count - 1 || !self.count){
        @try {
            return [self __mfcSingle__objectAtIndex:index];
        } @catch (NSException *exception) {
            //__throwOutException  抛出异常
            return nil;
        } @finally {
            
        }
    }
    else{
        return [self __mfcSingle__objectAtIndex:index];
    }
}

- (id)__mfcSMutable__objectAtIndex:(NSUInteger)index{
    if (index > self.count - 1 || !self.count){
        @try {
            return [self __mfcSMutable__objectAtIndex:index];
        } @catch (NSException *exception) {
            //__throwOutException  抛出异常
            return nil;
        } @finally {
            
        }
    }
    else{
        return [self __mfcSMutable__objectAtIndex:index];
    }
}

@end
