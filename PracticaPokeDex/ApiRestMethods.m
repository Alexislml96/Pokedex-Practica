//
//  ApiRestMethods.m
//  PracticaPokeDex
//
//  Created by Alexis on 08/08/22.
//

#import "ApiRestMethods.h"
#import "AFNetworking.h"

@implementation ApiRestMethods

-(NSDictionary *) GetData:(NSString *) url
{
    @try {
        dispatch_semaphore_t sem = dispatch_semaphore_create(0);
        
        AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
        
        manager.completionQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
        manager.responseSerializer  = [AFJSONResponseSerializer serializerWithReadingOptions:NSJSONReadingAllowFragments];
        
        AFJSONRequestSerializer *serialiazer = [AFJSONRequestSerializer serializer];
        [serialiazer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
        [serialiazer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
        
        [manager GET:url
          parameters:nil
             headers:nil
            progress:nil
             success:^(NSURLSessionDataTask * task, id responseObject) {
            
                self->datosJson = (NSDictionary *) responseObject;
                dispatch_semaphore_signal(sem);
            
            
        } failure:^(NSURLSessionDataTask * task, NSError * error) {
            NSLog(@"Error: %@",error);
            dispatch_semaphore_signal(sem);
        }];
        
        dispatch_semaphore_wait(sem, DISPATCH_TIME_FOREVER);
        return datosJson;
        
        
    } @catch (NSException *exception) {
        NSLog(@"Error: %@",exception.reason);
    } @finally {
        
    }
    
    
    
}
@end
