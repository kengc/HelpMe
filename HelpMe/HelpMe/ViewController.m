//
//  ViewController.m
//  HelpMe
//
//  Created by Kevin Cleathero on 2017-06-26.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITapGestureRecognizer *TapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTap:)];
    
    [self.view addGestureRecognizer:TapGesture];
    
}

-(void)viewTap:(UITapGestureRecognizer *)sender{
    
    //UIColor *color = [sender.view.backgroundColor isEqual: [UIColor purpleColor]] ? [UIColor orangeColor] : [UIColor purpleColor];
    
    //sender.view.backgroundColor = color;

    NSLog(@"I GOT TAPPED HELP!");
    [self performSegueWithIdentifier:@"openMap" sender:self];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"openMap"])
    {
    
    }
}

@end
