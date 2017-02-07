//
//  ViewController.h
//  ThemostatApp
//
//  Created by Jonathan Edgar on 2/6/17.
//  Copyright © 2017 Jonathan Edgar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *displayTempLabel;
@property (nonatomic, retain) IBOutlet UISlider *tempValueSlider;
@property (nonatomic, assign) int segment;

-(IBAction)tempValueSlider:(id)sender;
-(IBAction) measurmentController:(id)sender;

@end

