//
//  JSViewController.h
//  iOS8Style-ImagePicker
//
//  Created by Jake Sieradzki on 09/01/2015.
//  Copyright (c) 2015 Jake Sieradzki. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIButton *showButton;
- (IBAction)showBtnWasPressed:(id)sender;

@property (nonatomic, weak) IBOutlet UIImageView *imageView;

@end
