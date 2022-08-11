//
//  Stat.h
//  PracticaPokeDex
//
//  Created by Alexis on 09/08/22.
//

#import <Foundation/Foundation.h>
@class Species;

NS_ASSUME_NONNULL_BEGIN

@interface Stat : NSObject
@property NSInteger baseStat;
@property NSInteger effort;
@property Species *stat;
@end

NS_ASSUME_NONNULL_END
