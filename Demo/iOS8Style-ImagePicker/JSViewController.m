//
//  JSViewController.m
//  iOS8Style-ImagePicker
//
//  Created by Jake Sieradzki on 09/01/2015.
//  Copyright (c) 2015 Jake Sieradzki. All rights reserved.
//

#import "JSViewController.h"
#import "JSImagePickerViewController.h"

@interface JSViewController () <JSImagePickerViewControllerDelegate>

@end

@implementation JSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    self.imageView.backgroundColor = [UIColor colorWithRed:0.616 green:0.825 blue:1.000 alpha:1.000];

    self.showButton.layer.masksToBounds = YES;
    self.showButton.layer.cornerRadius = 3;
    self.imageView.layer.masksToBounds = YES;
    self.imageView.layer.cornerRadius = 3;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showBtnWasPressed:(id)sender
{
    JSImagePickerViewController *imagePicker = [[JSImagePickerViewController alloc] init];
    imagePicker.delegate = self;
    [imagePicker showImagePickerInController:self animated:YES];
}

#pragma mark - JSImagePikcerViewControllerDelegate
- (void)imagePicker:(JSImagePickerViewController *)imagePicker didSelectImage:(UIImage *)image
{
    self.imageView.image = image;
}

@end
