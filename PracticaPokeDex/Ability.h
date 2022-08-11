//
//  Ability.h
//  PracticaPokeDex
//
//  Created by Alexis on 09/08/22.
//

#import <Foundation/Foundation.h>
@class Species;

NS_ASSUME_NONNULL_BEGIN

@interface Ability : NSObject
@property  Species *ability;
@property  BOOL isHidden;
@property  NSInteger slot;
@end

NS_ASSUME_NONNULL_END
