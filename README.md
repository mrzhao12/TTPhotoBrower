# TTPhotoBrower
高仿微信朋友圈查看图片支持缩放预览


点击图片，可以全屏预览，支持放大缩小，支持本地图片，和网络图片

核心：
-(void)loadPhote:(NSInteger)index{
    if (index<0 || index >=self.imgArr.count) {
        return;
    }
    
    id currentPhotoView = [_subViewList objectAtIndex:index];
    if (![currentPhotoView isKindOfClass:[PhotoView class]]) {
      
        CGRect frame = CGRectMake(index*_scrollView.frame.size.width, 0, self.view.frame.size.width, self.view.frame.size.height);
        PhotoView *photoV;
        if (isValidString(self.imgArr[0])) {
            //url数组
            PhotoView *photoView = [[PhotoView alloc] initWithFrame:frame withPhotoUrl:[self.imgArr objectAtIndex:index]];
            photoV = photoView;
        }else{
            // image 数组
            PhotoView *photoView = [[PhotoView alloc] initWithFrame:frame withPhotoImage:[self.imgArr objectAtIndex:index]];
              photoV = photoView;
        }
      
      
        
        
        photoV.delegate = self;
        [self.scrollView insertSubview:photoV atIndex:0];
        [_subViewList replaceObjectAtIndex:index withObject:photoV];
    }else{
        PhotoView *photoV = (PhotoView *)currentPhotoView;
    }
    
}
