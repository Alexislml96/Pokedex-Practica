//
//  PokeDatosViewController.m
//  PracticaPokeDex
//
//  Created by Alexis on 09/08/22.
//

#import "PokeDatosViewController.h"
#import "ApiRestMethods.h"
#import "Pokemon.h"
#import "Utilities.h"

@interface PokeDatosViewController ()
{
    PokeListViewController *view;
    NSDictionary *datosJson;
    Pokemon *currentPoke;
    Utilities * u;
}
@end

@implementation PokeDatosViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    view = [[PokeListViewController alloc]init];
    view = _viewController;
    u = [[Utilities alloc]init];
    
    [u InicializarProgress: _progressIndicator];
    
    if(_selectedPoke != nil)
    {
        [_txtNombre setStringValue: [_selectedPoke.name uppercaseString]];
    }
    
    [self CargarDatos];
    
    [u DetenerProgress: _progressIndicator];
}

-(void) CargarDatos
{
    currentPoke = [[Pokemon alloc]init];
    NSMutableArray *test = [[NSMutableArray alloc]init];
    ApiRestMethods *metodos = [[ApiRestMethods alloc] init];
    
    datosJson = [metodos GetData: _selectedPoke.url];
    
    for (NSObject* key in datosJson) {
        [test addObject:datosJson[key]];
    }
    
    // Assign poke info to poke object
    currentPoke.identifier = test[0];
    [self CargarImagen:[NSString stringWithFormat:@"%@", currentPoke.identifier]];
    [self setTitle: [NSString stringWithFormat:@"#%@ - %@", currentPoke.identifier, [_selectedPoke.name uppercaseString]]];
    currentPoke.locationAreaEncounters = test[1];
    currentPoke.forms = test[2];
    currentPoke.moves = test[3];
    currentPoke.baseExperience = test[4];
    currentPoke.sprites = test[5];
    currentPoke.stats = test[6];
    currentPoke.weight = test[7];
    currentPoke.species = test[8];
    currentPoke.gameIndices = test[9];
    currentPoke.heldItems = test[10];
    currentPoke.order = test[11];
    currentPoke.height = test[12];
    currentPoke.pastTypes = test[13];
    currentPoke.abilities = test[14];
    currentPoke.isDefault = test[15];
    currentPoke.types = test[16];
    currentPoke.name = test[17];
    
    [_txtExp setStringValue: [NSString stringWithFormat:@"%@",currentPoke.baseExperience]];
    
    [_txtHP setStringValue: [NSString stringWithFormat:@"%@",[currentPoke.stats[0] valueForKey:@"base_stat"]]];
    
    [_txtATK setStringValue: [NSString stringWithFormat:@"%@",[currentPoke.stats[1] valueForKey:@"base_stat"]]];
    
    [_txtDef setStringValue: [NSString stringWithFormat:@"%@",[currentPoke.stats[2] valueForKey:@"base_stat"]]];
    
    [_txtSPA setStringValue: [NSString stringWithFormat:@"%@",[currentPoke.stats[3] valueForKey:@"base_stat"]]];
    
    [_txtSPD setStringValue: [NSString stringWithFormat:@"%@",[currentPoke.stats[4] valueForKey:@"base_stat"]]];
    
    [_txtVel setStringValue: [NSString stringWithFormat:@"%@",[currentPoke.stats[5] valueForKey:@"base_stat"]]];
    
}
-(void) CargarImagen:(NSString *) pokeId
{
    NSURL *url = [NSURL URLWithString: [NSString stringWithFormat:@"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/%@.png", pokeId]];
    NSData *data = [NSData dataWithContentsOfURL:url];
    NSImage *img = [[NSImage alloc] initWithData:data];
    _pokeImage.image = img;
}
@end
