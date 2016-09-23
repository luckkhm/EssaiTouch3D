//
//  AppDelegate.h
//  EssaiTouch3D
//
//  Created by Ahmed Khemiri on 7/29/16.
//  Copyright © 2016 Ahmed Khemiri. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

