//
//  ApiRestMethods.h
//  PracticaPokeDex
//
//  Created by Alexis on 08/08/22.
//

#import <Foundation/Foundation.h>

@interface ApiRestMethods : NSObject
{
    NSDictionary *datosJson;
}
-(NSDictionary *) GetData:(NSString *) url;

@end

