//
//  ViewController.m
//  EssaiTouch3D
//
//  Created by Ahmed Khemiri on 7/29/16.
//  Copyright © 2016 Ahmed Khemiri. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    if (touch.view == self.imgView1 )
    {
        NSLog(@"i got you");
    }
    if (touch.view == self.imgView2)
    {
        NSLog(@"i got you image 2");
    }
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGFloat maximumPossibleForce = touch.maximumPossibleForce;
    CGFloat force = touch.force;
    CGFloat normalizedForce = force/maximumPossibleForce;
    self.poidsLabel.text = [NSString stringWithFormat:@"%f g",normalizedForce];
    if (touch.view == self.imgView1 && normalizedForce == 1.0)
    {
        
        NSLog(@"normalizedForce1 %f",normalizedForce);
        NSLog(@"i got you");
    }
    if (touch.view == self.imgView2)
    {
        NSLog(@"i got you image 2");
    }
}
@end
