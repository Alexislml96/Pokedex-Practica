//
//  GameIndex.h
//  PracticaPokeDex
//
//  Created by Alexis on 09/08/22.
//

#import <Foundation/Foundation.h>
@class Species;

NS_ASSUME_NONNULL_BEGIN

@interface GameIndex : NSObject
@property NSInteger gameIndex;
@property Species *version;
@end

NS_ASSUME_NONNULL_END
