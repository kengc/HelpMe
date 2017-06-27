//
//  ViewController.m
//  HelpMe
//
//  Created by Kevin Cleathero on 2017-06-26.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "ViewController.h"
#import "HelpMe-Swift.h"

@import Firebase;
@import FirebaseDatabase;


@interface ViewController ()

@property (strong, nonatomic) FIRDatabaseReference *FirDBref;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.FirDBref = [[FIRDatabase database] reference];
    
    HelpUserModel *helpObject = [[HelpUserModel alloc] initWithFirstname:@"Fred" lastname:@"McGriff" age:34 latcoordinate:34.1223 lonCoordinate:-122.1122 phonenumber:1231231234 address:@"something something street" isresponder:YES doesneedhelp:NO];
    
    
   // NSString *key = [[self.FirDBref child:@"posts"] childByAutoId].key;
    
    //[[NSString stringWithFormat:@"%@ %@", helpObject.firstName, helpObject.lastName]
    NSString *userName = [NSString stringWithFormat:@"%@ %@", helpObject.firstName, helpObject.lastName];
    
    
    
    //NSDictionary *dict = @{ key : value, key2 : value2};
    NSDictionary *userDict = @{ @"username" : userName, @"lat" : @(helpObject.latCoordinate), @"lon": @(helpObject.lonCoordinate),
                                @"phone": @(helpObject.phoneNumber), @"address": helpObject.address, @"isresponder": @(helpObject.isResponder), @"needhelp": @(helpObject.doesNeedHelp)};
    
    
    [[[self.FirDBref child:@"users"] childByAutoId] setValue:userDict];
    
    
    
    //fetch all the users and iterate thru them
    
    
        //setValue:@{@"user": userName}
//        setValue:@{@"isResonder": @(helpObject.isResponder)}
//        setValue:@{@"latitude": @(helpObject.latCoordinate)}
//        setValue:@{@"longitude": @(helpObject.lonCoordinate)}
     
//     //[self.FirDBref child:@"users"] satva
    
    
    
    
//    NSString *userID = [FIRAuth auth].currentUser.uid;
//    [[[_ref child:@"users"] child:userID] observeSingleEventOfType:FIRDataEventTypeValue withBlock:^(FIRDataSnapshot * _Nonnull snapshot) {
//        // Get user value
//        User *user = [[User alloc] initWithUsername:snapshot.value[@"username"]];
//        
//        // ...
//    } withCancelBlock:^(NSError * _Nonnull error) {
//        NSLog(@"%@", error.localizedDescription);
//    }];
    
    
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
