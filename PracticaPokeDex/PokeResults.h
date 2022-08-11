//
//  PokeResults.h
//  PracticaPokeDex
//
//  Created by Alexis on 08/08/22.
//

#import <Foundation/Foundation.h>
#import "Result.h"

NS_ASSUME_NONNULL_BEGIN

@interface PokeResults : NSObject
@property (nonatomic, assign)         NSInteger count;
@property (nonatomic, copy)           NSString *next;
@property (nonatomic, nullable, copy) id previous;
@property (nonatomic, copy)           NSArray<Result *> *results;
@end

NS_ASSUME_NONNULL_END
