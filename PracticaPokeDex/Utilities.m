//
//  Utilities.m
//  PracticaPokeDex
//
//  Created by Alexis on 10/08/22.
//

#import "Utilities.h"

@implementation Utilities
-(void) Mensaje:(NSString *)titulo yCuerpoMensaje:(NSString *)Mensaje
{
    NSAlert *alerta = [[NSAlert alloc] init];
    [alerta addButtonWithTitle:@"Continuar"];
    [alerta setMessageText:titulo];
    [alerta setInformativeText:Mensaje];
    [alerta setAlertStyle:NSAlertStyleInformational];
    [alerta runModal];
}
-(void) InicializarProgress:(NSProgressIndicator *) pIndicator
{
    [pIndicator setHidden:NO];
    [pIndicator setIndeterminate:YES];
    [pIndicator setUsesThreadedAnimation:YES];
    [pIndicator startAnimation:nil];
}
-(void) DetenerProgress:(NSProgressIndicator *) pIndicator
{
    [pIndicator stopAnimation:nil];
    [pIndicator setHidden:YES];
}
@end
