//
//  PokeListViewController.h
//  PracticaPokeDex
//
//  Created by Alexis on 08/08/22.
//

#import <Cocoa/Cocoa.h>

@interface PokeListViewController : NSViewController<NSTableViewDataSource, NSTableViewDelegate, NSFetchedResultsControllerDelegate>
{
    NSString * url;
    NSDictionary *datosJson;
}
@property (strong) IBOutlet NSTableView *tabla;
@property (strong) IBOutlet NSProgressIndicator *progressIndicator;

-(void) CargarDatos;

@end
