//
//  Versions.h
//  PracticaPokeDex
//
//  Created by Alexis on 09/08/22.
//

#import <Foundation/Foundation.h>
#import "GenerationI.h"
#import "GenerationIi.h"
#import "GenerationIii.h"
#import "GenerationIv.h"
#import "GenerationV.h"
#import "GenerationVii.h"
#import "GenerationViii.h"

NS_ASSUME_NONNULL_BEGIN

@interface Versions : NSObject
@property GenerationI *generationI;
@property GenerationIi *generationIi;
@property GenerationIii *generationIii;
@property GenerationIv *generationIv;
@property GenerationV *generationV;
@property NSDictionary<NSString *, Home *> *generationVi;
@property GenerationVii *generationVii;
@property GenerationViii *generationViii;
@end


NS_ASSUME_NONNULL_END
