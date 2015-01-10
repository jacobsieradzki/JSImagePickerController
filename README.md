# JSImagePickerController
A photo picker controller that resembles the style of the image picker in iOS 8's messages app.

![BackgroundImage](https://github.com/jacobsieradzki/JSImagePickerController/blob/master/Screenshots/imagePicker1.png = 568x320)

# Installation

Just drop the two files for the JSImagePickerViewController class into your project and import them into whichever view controllers you want:

```Objective-C
#import "JSImagePickerViewController.h"
```

Next, put this code in your project to create and show the image picker:

```Objective-C
JSImagePickerViewController *imagePicker = [[JSImagePickerViewController alloc] init];
imagePicker.delegate = self;
[imagePicker showImagePickerInController:self animated:YES];
```

and add this delegate method to your code:

```Objective-C
- (void)imagePickerDidSelectImage:(UIImage *)image;
```

and if you want there are a choice of different delegate methods to choose from:

```Objective-C
- (void)imagePickerDidOpen;
- (void)imagePickerWillOpen;

- (void)imagePickerWillClose;
- (void)imagePickerDidClose;

- (void)imagePickerDidCancel;
```

and for personalization you can edit the public property's of the image picker:

```Objective-C
@property (nonatomic) NSTimeInterval animationTime;

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UIButton *photoLibraryBtn;
@property (nonatomic, strong) UIButton *cameraBtn;
@property (nonatomic, strong) UIButton *cancelBtn;
```


