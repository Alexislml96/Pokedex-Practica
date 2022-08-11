//
//  Type.h
//  PracticaPokeDex
//
//  Created by Alexis on 09/08/22.
//

#import <Foundation/Foundation.h>
@class Species;

NS_ASSUME_NONNULL_BEGIN

@interface Type : NSObject
@property NSInteger slot;
@property Species *type;
@end

NS_ASSUME_NONNULL_END
