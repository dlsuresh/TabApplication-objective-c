//
//  PickerViewController.m
//  TabApplication
//
//  Created by Suresh on 2/17/17.
//  Copyright © 2017 Suresh. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController ()

@end

@implementation PickerViewController{;
    NSArray *titles;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.pickerView.hidden = YES;
    
    titles = @[@"Picker row 1",@"Picker row 2",@"Picker row 3",@"Picker row 4",@"picker row 5",@"Picker row 6"];
    
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return titles.count;
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    [self.txtField setText:[titles objectAtIndex:row]];
    
}


-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return [titles objectAtIndex:row];
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    [textField resignFirstResponder];
    self.pickerView.hidden = NO;
    return NO;
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    self.pickerView.hidden = YES;
}

@end
