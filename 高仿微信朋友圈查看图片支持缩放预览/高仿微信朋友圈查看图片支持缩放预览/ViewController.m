//
//  ViewController.m
//  高仿微信朋友圈查看图片支持缩放预览
//
//  Created by sjhz on 2018/6/27.
//  Copyright © 2018年 yjs. All rights reserved.
//

#import "ViewController.h"
#import "JZAlbumViewController.h"
@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *urlMutArr;
@property (nonatomic, strong) NSMutableArray *urlMutArr1;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    self.urlMutArr = @[].mutableCopy;
    self.urlMutArr1 = @[].mutableCopy;
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(62, 100, 100, 200)];
    [btn setTitle:@"网络图" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(wnagluoAction:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
    UIButton *btn2 = [[UIButton alloc] initWithFrame:CGRectMake(62, 300, 100, 200)];
    [btn2 setTitle:@"本地图" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    [btn2 addTarget:self action:@selector(bendiAction:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:btn];
    [self.view addSubview:btn2];
    
    NSString *file1 = [[NSBundle mainBundle]pathForResource:@"1.png" ofType:nil];
      NSString *file2 = [[NSBundle mainBundle]pathForResource:@"2.png" ofType:nil];
  NSString *file3 = [[NSBundle mainBundle]pathForResource:@"3.png" ofType:nil];
    
    [self.urlMutArr addObject:[UIImage imageWithContentsOfFile:file1]];
    [self.urlMutArr addObject:[UIImage imageWithContentsOfFile:file2]];
    [self.urlMutArr addObject:[UIImage imageWithContentsOfFile:file3]];
    
    self.urlMutArr1 = [NSMutableArray arrayWithObjects:@"http://www.deskcar.com/desktop/fengjing/2018614105237/7.jpg",@"http://www.deskcar.com/desktop/fengjing/2018614105237/18.jpg",@"http://www.deskcar.com/desktop/fengjing/2018614105237/2.jpg",nil];
    
    // http://thirdqq.qlogo.cn/qqapp/1106828100/007B58F6812C004EC87B63A08F10B711/100
    
//     self.urlMutArr1 = [NSMutableArray arrayWithObjects:@"http://thirdqq.qlogo.cn/qqapp/1106828100/007B58F6812C004EC87B63A08F10B711/100",nil];
//ndefined&ist=&jit=&cg=girl&bdtype=0&oriquery=&objurl=http%3A%2F%2Fimg01.taopic.com%2F161009%2F240386-16100ZAI867.jpg&fromurl=ippr_z
    
}

- (void)wnagluoAction:(UIButton *)bnt{
    
    JZAlbumViewController *jzAlbumVC = [[JZAlbumViewController alloc]init];
    jzAlbumVC.currentIndex =0;
    jzAlbumVC.imgArr = self.urlMutArr1;//图片数组，可以是url，也可以是UIImage
    [self presentViewController:jzAlbumVC animated:YES completion:nil];
    
}


- (void)bendiAction:(UIButton *)btn{
    
    JZAlbumViewController *jzAlbumVC = [[JZAlbumViewController alloc]init];
    jzAlbumVC.currentIndex =0;
    jzAlbumVC.imgArr = self.urlMutArr;//图片数组，可以是url，也可以是UIImage
    [self presentViewController:jzAlbumVC animated:YES completion:nil];
    
}
- (void) viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    
    
//
//
//    JZAlbumViewController *jzAlbumVC = [[JZAlbumViewController alloc]init];
//    jzAlbumVC.currentIndex =0;
//    jzAlbumVC.imgArr = self.urlMutArr;//图片数组，可以是url，也可以是UIImage
//    [self presentViewController:jzAlbumVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
