//
//  VersionGroupDetail.h
//  PracticaPokeDex
//
//  Created by Alexis on 09/08/22.
//

#import <Foundation/Foundation.h>
@class Species;

NS_ASSUME_NONNULL_BEGIN

@interface VersionGroupDetail : NSObject
@property  NSInteger levelLearnedAt;
@property  Species *moveLearnMethod;
@property  Species *versionGroup;
@end

NS_ASSUME_NONNULL_END
