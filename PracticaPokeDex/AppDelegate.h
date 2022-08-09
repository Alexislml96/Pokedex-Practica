//
//  AppDelegate.h
//  PracticaPokeDex
//
//  Created by Alexis on 08/08/22.
//

#import <Cocoa/Cocoa.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;


@end

