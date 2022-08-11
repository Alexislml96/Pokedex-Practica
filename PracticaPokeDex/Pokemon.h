//
//  Pokemon.h
//  PracticaPokeDex
//
//  Created by Alexis on 08/08/22.
//

#import <Foundation/Foundation.h>
#import "Ability.h"
#import "Species.h"
#import "GameIndex.h"
#import "Move.h"
#import "Sprites.h"
#import "Stat.h"
#import "Type.h"

@interface Pokemon : NSObject
@property NSArray<Ability *> *abilities;
@property NSInteger baseExperience;
@property NSArray<Species *> *forms;
@property NSArray<GameIndex *> *gameIndices;
@property NSInteger height;
@property NSArray *heldItems;
@property NSInteger identifier;
@property BOOL isDefault;
@property NSString *locationAreaEncounters;
@property NSArray<Move *> *moves;
@property NSString *name;
@property NSInteger order;
@property NSArray *pastTypes;
@property Species *species;
@property Sprites *sprites;
@property NSArray<Stat *> *stats;
@property NSArray<Type *> *types;
@property NSInteger weight;
@end
