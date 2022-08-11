//
//  Sprites.h
//  PracticaPokeDex
//
//  Created by Alexis on 09/08/22.
//

#import <Foundation/Foundation.h>
@class Other;
@class Versions;

@interface Sprites : NSObject
@property NSString *backDefault;
@property id backFemale;
@property NSString *backShiny;
@property id backShinyFemale;
@property NSString *frontDefault;
@property id frontFemale;
@property NSString *frontShiny;
@property id frontShinyFemale;
@property Other *other;
@property Versions *versions;
@property Sprites *animated;
@end

