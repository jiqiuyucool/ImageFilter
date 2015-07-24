//
//  ViewController.m
//  ImageFilter
//
//  Created by 冀秋羽 on 15/7/22.
//  Copyright (c) 2015年 冀秋羽. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
  
}
-(UIImagePickerController *)imagePickerVC{
    if(!_imagePickerVC){
        _imagePickerVC = [[UIImagePickerController alloc]init];
        _imagePickerVC.delegate=self;
        [_imagePickerVC setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    }
    return _imagePickerVC;
}
- (IBAction)openCamera:(id)sender {
    
    [self presentViewController:self.imagePickerVC animated:YES completion:nil];
    //[self performSegueWithIdentifier:@"goToEdit" sender:self];
}

#pragma mark-
#pragma mark 相册代理
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
    //从相册中选取的照片
    self.editImage = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"提示" message:@"请问需要编辑照片吗?" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确认", nil];
    [alert show];
}

#pragma mark-
#pragma mark AlertView代理
//点击确认
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex == 1){

        [self goEditImageController];
//        [self performSegueWithIdentifier:@"goToEdit" sender:self];
    }
}
-(void)goEditImageController{
    
    editImageController=nil;
    UIStoryboard *board = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    editImageController = [board instantiateViewControllerWithIdentifier:@"EditImageController"]
;
    editImageController.image=self.editImage;
    [self.navigationController pushViewController:editImageController animated:YES];
    //相机页面隐藏了
    [self dismissViewControllerAnimated:YES completion:nil];

//    EditImageController *editVC = [[EditImageController alloc]init];
//    [self.navigationController pushViewController:editVC animated:YES];
//    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
