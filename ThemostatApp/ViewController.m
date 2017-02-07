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
    
    // Do any additional setup after loading the view, typically from a nib.
}


-(IBAction)tempValueSlider:(id)sender{
    //UISlider *slider = (UISlider *) sender;
    
    if (self.segment == 0){
            self.tempValueSlider.minimumValue = -32;
            self.tempValueSlider.maximumValue = 100;
            self.displayTempLabel.text = [NSString stringWithFormat:@"%.0f",self.tempValueSlider.value];
    
        /*
        self.view.backgroundColor = [UIColor colorWithRed:self.tempValueSlider
                                                    green:<#(CGFloat)#>
                                                     blue:<#(CGFloat)#>
                                                    alpha:0;
*/
    }else{
        self.tempValueSlider.minimumValue = -32 *9/5+32;
        self.tempValueSlider.maximumValue = 100 *9/5+32;
        self.displayTempLabel.text = [NSString stringWithFormat:@"%.0f",self.tempValueSlider.value];
    }
   
}

-(IBAction) measurmentController:(id)sender {
    UISegmentedControl *measurmentControl = (UISegmentedControl *)sender;
    NSInteger selector = measurmentControl.selectedSegmentIndex;

    ConvertMeasurments *converter = [[ConvertMeasurments alloc]init];
    
    
    if (selector == 0){
        self.segment = 0;
        
    }else{
        self.segment = 1;
        int fahrTemp = [converter fahrToCelcius:self.tempValueSlider.value];
        self.displayTempLabel.text = [NSString stringWithFormat:@"%d",fahrTemp];
        
    }
    
    if(selector == 1){
        self.segment =1;
    }else {
        self.segment = 0;
        int celcius = [converter celciusToFahr:self.tempValueSlider.value];
        self.displayTempLabel.text = [NSString stringWithFormat:@"%d°F", celcius];
    }
}


@end
