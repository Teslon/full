//
//  ViewController.m
//  CvO HH
//
//  Created by MacPro on 07.02.14.
//  Copyright (c) 2014 FabioBaser. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    NSURL *urlvertretung = [NSURL URLWithString:@"http://www.cvo-hamburg.de/vertretungsplan"];
    NSURLRequest *requestURLvertretung = [NSURLRequest requestWithURL:urlvertretung];
    [vertretungsplan loadRequest:requestURLvertretung];
    vertretungsplan.scalesPageToFit = YES;
    //
    NSURL *urlessen = [NSURL URLWithString:@"http://www.cvomensa.blogspot.de"];
    NSURLRequest *requestURLessen = [NSURLRequest requestWithURL:urlessen];
    [essensplan loadRequest:requestURLessen];
    essensplan.scalesPageToFit = YES;
    //
    NSURL *urlteam = [NSURL URLWithString:@"http://www.dasteamcvo.blogspot.de"];
    NSURLRequest *requestURLteam = [NSURLRequest requestWithURL:urlteam];
    [dasteam loadRequest:requestURLteam];
    [super viewDidLoad];
    dasteam.scalesPageToFit = YES;
    //
    NSURL *urlsite = [NSURL URLWithString:@"http://www.cvo-hamburg.de"];
    NSURLRequest *requestURLsite = [NSURLRequest requestWithURL:urlsite];
    [site loadRequest:requestURLsite];
    site.scalesPageToFit = YES;
    //
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Termine_2013_14_2_Hj_Homepage_Newsletter_Version_2" ofType:@"pdf"];
    NSURL *url = [NSURL fileURLWithPath:filePath];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [itemView loadRequest:request];
    [itemView setScalesPageToFit:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
