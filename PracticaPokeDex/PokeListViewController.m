//
//  PokeListViewController.m
//  PracticaPokeDex
//
//  Created by Alexis on 08/08/22.
//

#import "PokeListViewController.h"
#import "ApiRestMethods.h"
#import "Result.h"
#import "PokeDatosViewController.h"
#import "Utilities.h"

@interface PokeListViewController ()
{
    Result *resultPoke;
    NSMutableArray * results;
    Utilities * u;
}
@end

@implementation PokeListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    u = [[Utilities alloc]init];
    
    [u InicializarProgress: _progressIndicator];
    [self CargarDatos];
    [u DetenerProgress: _progressIndicator];

}

-(void) CargarDatos
{
    
    results = [[NSMutableArray alloc] init];
    url = @"https://pokeapi.co/api/v2/pokemon/?limit=151";
    ApiRestMethods *metodos = [[ApiRestMethods alloc] init];
    
        datosJson = [metodos GetData:self->url];
    
    for (NSObject* key in [self ->datosJson valueForKey:@"results"]) {
        Result *res = [[Result alloc] init];
        res.name = [key valueForKey:@"name"];
        res.url = [key valueForKey:@"url"];
        
        [results addObject:res];
        
    }
    
    [_tabla reloadData];
}


#pragma mark -  NSTableViewDataSource

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView{
    return [results count];
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    
    Result *r = [results objectAtIndex:row];
    NSString *valor = (NSString *) [r valueForKey:tableColumn.identifier];
    return valor;
}

#pragma mark -  NSTableViewDelegate
- (void)tableViewSelectionDidChange:(NSNotification *)notification{
    
    if([_tabla selectedRow] != -1){
        
        NSTableView *tableview =  notification.object;
        
        Result *selectedPoke = [results objectAtIndex:[tableview selectedRow]];
        
        resultPoke = selectedPoke;
        
    }else {
        NSLog(@"Error");
    }
    
}

-(void) prepareForSegue:(NSStoryboardSegue *)segue sender:(id)sender
{
    @try {
        NSInteger row = [_tabla selectedRow];
        
        if(row != -1)
        {
            PokeDatosViewController *pokeDatos = [segue destinationController];
            pokeDatos.selectedPoke = resultPoke;
        }
        else
        {
            [u Mensaje:@"Error." yCuerpoMensaje:@"Seleccione un registro"];
            return;
        }
    } @catch (NSException *exception) {
        NSLog(@"Error. %@", exception.reason);
    } @finally {
        NSLog(@"Finalizar.");
    }
}

@end
