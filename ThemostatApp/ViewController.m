//
//  ViewController.m
//  ThemostatApp
//
//  Created by Jonathan Edgar on 2/6/17.
//  Copyright © 2017 Jonathan Edgar. All rights reserved.
//

#import "ViewController.h"
#import "ConvertMeasurments.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tempValueSlider.value = self.displayTempLabel.text.floatValue;

    // Do any additional setup after loading the view, typically from a nib.
    
}


-(IBAction)tempValueSlider:(id)sender{
    UISlider *slider = (UISlider *) sender;
    
    if (self.segment == 0){
            self.tempValueSlider.minimumValue = -32;
            self.tempValueSlider.maximumValue = 100;
            int temp = (int) self.tempValueSlider.value;
        
            self.displayTempLabel.text = [NSString stringWithFormat:@"%d°C",temp];
    }else{
        self.tempValueSlider.minimumValue = -32 *9/5+32;
        self.tempValueSlider.maximumValue = 100 *9/5+32;
        int temp = (int) self.tempValueSlider.value;

        self.displayTempLabel.text = [NSString stringWithFormat:@"%d°F",temp];
    }
 
    
}

-(IBAction) measurmentController:(id)sender {
    UISegmentedControl *measurmentControl = (UISegmentedControl *)sender;
    NSInteger selector = measurmentControl.selectedSegmentIndex;

    ConvertMeasurments *converter = [[ConvertMeasurments alloc]init];
    
    if (selector == 0){
        //Going to Celsius
        self.segment = 0;   //global value of segmented controller
        self.tempValueSlider.minimumValue = -32;    //set min and max slide values
        self.tempValueSlider.maximumValue = 100;
        int labelValue = self.displayTempLabel.text.intValue;   //get int value of label
        
        int fahrTemp = [converter fahrToCelcius:labelValue];    //call conversion method
        self.displayTempLabel.text = [NSString stringWithFormat:@"%d°C",fahrTemp];  //prints temp to label
        self.tempValueSlider.value = labelValue;    //sets slider value to label value

    }else{
        //Going To Fahrenheit
        self.segment = 1;
        self.tempValueSlider.minimumValue = -32 *9/5+32;
        self.tempValueSlider.maximumValue = 100 *9/5+32;
        int labelValue = self.displayTempLabel.text.intValue;
        
        int celsius = [converter celciusToFahr:labelValue];
        self.displayTempLabel.text = [NSString stringWithFormat:@"%d°F", celsius];
        self.tempValueSlider.value = labelValue;

    }
    
    
    
}
@end
