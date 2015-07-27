//
//  MCTreeNode.m
//  MCChildrenNavigationController
//
//  Created by Miguel Cabeça on 23/11/13.
//  Copyright (c) 2013 Miguel Cabeça. All rights reserved.
//

#import "MCTableViewCell.h"

@implementation MCTableViewCell

- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(nullable NSString *)reuseIdentifier
{
    return [super initWithStyle:style reuseIdentifier:reuseIdentifier];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat viewWidth = CGRectGetWidth(self.frame);
    
    CGRect accessoryFrame = self.accessoryView.frame;
    CGFloat accessoryWidth = CGRectGetWidth(accessoryFrame);
    accessoryFrame.origin.x = viewWidth - accessoryWidth - 10.f;
    self.accessoryView.frame = accessoryFrame;
    
    CGRect contentFrame = self.contentView.frame;
    contentFrame.size.width = viewWidth - accessoryWidth;
    self.contentView.frame = contentFrame;
    
    CGRect imageFrame = self.imageView.frame;
    imageFrame.origin.x = 20.f;
    self.imageView.frame = imageFrame;
    
    CGRect labelFrame = self.textLabel.frame;
    labelFrame.origin.x = CGRectGetMinX(imageFrame) + CGRectGetWidth(imageFrame) + 10.f;
    self.textLabel.frame = labelFrame;
    
    self.contentView.backgroundColor = [UIColor lightGrayColor];
    self.accessoryView.backgroundColor = [UIColor greenColor];
}

@end
