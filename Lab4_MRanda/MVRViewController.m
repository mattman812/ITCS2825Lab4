//
//  MVRViewController.m
//  Lab4_MRanda
//
//  Created by ITCS2825 Kozlevcar on 2/6/15.
//  Copyright (c) 2015 ITCS2825_Lab4_MRanda_Mranda. All rights reserved.
//

#import "MVRViewController.h"

@interface MVRViewController ()
//Outlets
@property (weak, nonatomic) IBOutlet UITextField *AmountTextBox; //didn't need
@property (weak, nonatomic) IBOutlet UISlider *tipSlider;
@property (weak, nonatomic) IBOutlet UITextField *TipTextBox;

//actions
- (IBAction)tipSlider:(UISlider *)sender;
- (IBAction)peopleStepper:(UIStepper *)sender;
- (IBAction)calcButton:(UIButton *)sender;
- (IBAction)AmountTextBox:(UITextField *)sender;
- (IBAction)TipTextBox:(UITextField *)sender;

//labels
@property (weak, nonatomic) IBOutlet UILabel *peopleLabel;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UILabel *perPersonLabel;

//numbers
@property double amountDouble;
@property double totalDouble;
@property double  tipDouble;
@property double peopleInteger;



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
@end

@implementation MVRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tipSlider:(UISlider *)sender
{
    self.TipTextBox.text = [NSString stringWithFormat:@"%.2f", sender.value];
    
    // integers only
    self.TipTextBox.text = [NSString stringWithFormat:@"%i", (int)sender.value];
}


- (IBAction)peopleStepper:(UIStepper *)sender
{
     self.peopleLabel.text = [NSString stringWithFormat:@"%i", (int)sender.value];
}

- (IBAction)calcButton:(UIButton *)sender
{
    
    self.totalLabel.text = [NSString stringWithFormat:@"%f", _totalDouble];
}

- (IBAction)AmountTextBox:(UITextField *)sender
{

}

- (IBAction)TipTextBox:(UITextField *)sender
{
    self.tipSlider.value = [self.TipTextBox.text floatValue];

    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //keyboard go away
    [self.AmountTextBox endEditing:YES];
    [self.TipTextBox endEditing:YES];
}
@end
