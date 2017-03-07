//
//  ViewController.m
//  TabApplication
//
//  Created by Suresh on 2/17/17.
//  Copyright © 2017 Suresh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.datePicker.hidden = YES;
    
    self.datePicker.maximumDate = [NSDate date];
    
    [self.datePicker addTarget:self action:@selector(textFieldUpdate) forControlEvents:UIControlEventValueChanged];

    [self.txtField setInputView:self.datePicker];
    
    NSDateFormatter *format = [[NSDateFormatter alloc]init];
    
    [format setDateFormat:@"YYYY-mm-dd"];
    
    
    self.txtField.text = [NSString stringWithFormat:@"%@",[format stringFromDate:[NSDate date]]];

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)textFieldUpdate{
    
    NSDateFormatter *format = [[NSDateFormatter alloc]init];
    
    [format setDateFormat:@"YYYY-MM-dd"];
    
   // NSDate *date = [[NSDate alloc]init];

    self.txtField.text = [NSString stringWithFormat:@"%@",[format stringFromDate:self.datePicker.date]];
    
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    self.datePicker.hidden = NO;
    
    [textField resignFirstResponder];
    
    return NO;
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    self.datePicker.hidden = YES;
}


@end
