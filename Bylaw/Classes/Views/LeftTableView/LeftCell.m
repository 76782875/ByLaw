//
//  LeftCell.m
//  Bylaw
//
//  Created by 小热狗 on 16/2/28.
//  Copyright © 2016年 小热狗. All rights reserved.
//

#import "LeftCell.h"
#define SelectMargin 55.0f
#define UnselectMargin 35.0f
@implementation LeftCell
@synthesize myLabel = _myLabel;
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
       
        
        
        
        
        _myLabel = [[UILabel alloc] initWithFrame:CGRectMake(UnselectMargin, 7, self.frame.size.width-UnselectMargin, 30)];
        _myLabel.backgroundColor = [UIColor clearColor];
        _myLabel.numberOfLines = 2;
        _myLabel.textAlignment=NSTextAlignmentLeft;
        _myLabel.textColor=[UIColor whiteColor];
        self.contentView.backgroundColor=[UIColor clearColor];
        [self.contentView addSubview:_myLabel];
   
        self.radioView=[[UIView alloc]initWithFrame:CGRectMake(SelectMargin-15, 18, 8, 8)];
        self.radioView.layer.cornerRadius = self.radioView.frame.size.width / 2;
        self.radioView.backgroundColor=TableBackColor;
        self.radioView.clipsToBounds = YES;
        [self.contentView addSubview:self.radioView];
        
    
    
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
        
    
    if (selected) {
        
        _myLabel.frame=CGRectMake(SelectMargin, 7, self.frame.size.width-SelectMargin, 30);
        
       self.radioView.backgroundColor=TableBackColor;
    
        
    
    
    }else{
       _myLabel.frame=CGRectMake(UnselectMargin, 7, self.frame.size.width-SelectMargin, 30);
       self.radioView.backgroundColor=CLEARCOLOR;
        
    
        
    }
   
    self.selectedBackgroundView = [[UIView alloc] initWithFrame:self.frame];
    self.selectedBackgroundView.backgroundColor = YellowColor;
    
    // Configure the view for the selected state
}





@end
