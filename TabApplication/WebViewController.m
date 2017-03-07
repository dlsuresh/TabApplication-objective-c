//
//  WebViewController.m
//  TabApplication
//
//  Created by Suresh on 2/17/17.
//  Copyright © 2017 Suresh. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicator;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

  //  NSString *str = @"https://www.google.com";
    NSURL *url =  [NSURL URLWithString:@"https://www.google.com"];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
    self.indicator.hidden = YES;
    
    self.back.enabled  = NO;
    
    self.next.enabled = NO;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)webViewDidStartLoad:(UIWebView *)webView{
    
    self.indicator.hidden = NO;
    
    [[UIApplication sharedApplication]setNetworkActivityIndicatorVisible:YES];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    
    self.indicator.hidden = YES;
    

    
    if ([webView canGoBack]) {
        self.back.enabled = YES;        
    }else{
        self.back.enabled = NO;
    }
    
    if ([webView canGoForward]) {
        self.next.enabled = YES;
    }else{
        self.next.enabled = NO;
    }
    
    
    
    
    [[UIApplication sharedApplication]setNetworkActivityIndicatorVisible:NO];
}


@end
