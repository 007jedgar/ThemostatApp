//
//  ConvertMeasurments.h
//  ThemostatApp
//
//  Created by Jonathan Edgar on 2/6/17.
//  Copyright © 2017 Jonathan Edgar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ConvertMeasurments : NSObject

-(int) fahrToCelcius:(Float32)farhTemp;
-(int) celciusToFahr:(Float32)celciusTemp;
@end
