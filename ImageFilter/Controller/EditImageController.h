//
//  EditImageController.h
//  ImageFilter
//
//  Created by 冀秋羽 on 15/7/22.
//  Copyright (c) 2015年 冀秋羽. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface EditImageController : UIViewController{
    
}
@property (weak, nonatomic) IBOutlet UIImageView *icon;
@property(nonatomic,strong)UIImage * image;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollVIew;
@property(nonatomic,retain)NSArray * effectImages;


@end
