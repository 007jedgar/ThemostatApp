//
//  ConvertMeasurments.m
//  ThemostatApp
//
//  Created by Jonathan Edgar on 2/6/17.
//  Copyright © 2017 Jonathan Edgar. All rights reserved.
//

#import "ConvertMeasurments.h"

@implementation ConvertMeasurments

-(void) celciusToFahr {
    
    
}

-(int) fahrToCelcius:(Float32)farhTemp {
    int celcius = (int) farhTemp - 32 * 5 /9;
    return celcius;
}

-(int) celciusToFahr:(Float32)celciusTemp {
    int fahr = (int) celciusTemp * 9 / 5 + 32;
    return fahr;
}
@end
