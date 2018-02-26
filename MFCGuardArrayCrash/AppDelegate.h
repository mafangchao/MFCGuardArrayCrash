//
//  AppDelegate.h
//  MFCGuardArrayCrash
//
//  Created by machao on 2018/2/26.
//  Copyright © 2018年 machao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

