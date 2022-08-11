//
//  Move.h
//  PracticaPokeDex
//
//  Created by Alexis on 09/08/22.
//

#import <Foundation/Foundation.h>
@class Species;
@class VersionGroupDetail;

NS_ASSUME_NONNULL_BEGIN

@interface Move : NSObject
@property  Species *move;
@property  NSArray<VersionGroupDetail *> *versionGroupDetails;
@end

NS_ASSUME_NONNULL_END
