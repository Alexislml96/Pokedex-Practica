//
//  Utilities.h
//  PracticaPokeDex
//
//  Created by Alexis on 10/08/22.
//

#import <Cocoa/Cocoa.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Utilities : NSObject

-(void) Mensaje:(NSString *)titulo yCuerpoMensaje:(NSString *)Mensaje;
-(void) InicializarProgress:(NSProgressIndicator *) pIndicator;
-(void) DetenerProgress:(NSProgressIndicator *) pIndicator;
@end

NS_ASSUME_NONNULL_END
