//
//  PokeDatosViewController.h
//  PracticaPokeDex
//
//  Created by Alexis on 09/08/22.
//

#import <Cocoa/Cocoa.h>
#import "PokeListViewController.h"
#import "Result.h"

NS_ASSUME_NONNULL_BEGIN

@interface PokeDatosViewController : NSViewController

@property(nonatomic,retain) PokeListViewController *viewController;
@property Result *selectedPoke;
@property (strong) IBOutlet NSTextField *txtNombre;
@property (strong) IBOutlet NSTextField *txtExp;
@property (strong) IBOutlet NSTextField *txtHP;
@property (strong) IBOutlet NSTextField *txtATK;
@property (strong) IBOutlet NSTextField *txtDef;
@property (strong) IBOutlet NSTextField *txtSPA;
@property (strong) IBOutlet NSTextField *txtSPD;
@property (strong) IBOutlet NSTextField *txtVel;
@property (strong) IBOutlet NSImageView *pokeImage;
@property (strong) IBOutlet NSProgressIndicator *progressIndicator;


-(void) CargarDatos;
-(void) CargarImagen:(NSString *) pokeId;
@end

NS_ASSUME_NONNULL_END
