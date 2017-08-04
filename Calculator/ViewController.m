//
//  ViewController.m
//  Calculator
//
//  Created by kalige tharun  on 20/04/2017.
//  Copyright © 2017 kalige tharun . All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"


@interface ViewController ()
{
    NSMutableString *tempString;
    NSMutableArray *stringSequenceArray;
    BOOL resultShown;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    tempString = [[NSMutableString alloc]init];
    stringSequenceArray = [[NSMutableArray alloc]init];
    resultShown = NO;
}

-(void)clearData
{
    [stringSequenceArray removeAllObjects];
    self.resultLabel.text = @"";
    tempString = [NSMutableString stringWithFormat:@""];
    self.multiplyButton.enabled = YES;
}
- (IBAction)oneTouched:(id)sender
{
    if (resultShown)
    {
        [self clearData];
    }
    [tempString appendString:@"1"];
    self.resultLabel.text = tempString;
    resultShown = NO;
}
- (IBAction)twoTouched:(id)sender
{
    if (resultShown)
    {
        [self clearData];
    }
    [tempString appendString:@"2"];
    self.resultLabel.text = tempString;
    resultShown = NO;
}
- (IBAction)threeTouched:(id)sender
{
    
    if (resultShown)
    {
        [self clearData];
    }
    [tempString appendString:@"3"];
    self.resultLabel.text = tempString;
    resultShown = NO;
}
- (IBAction)fourTouched:(id)sender
{
    
    if (resultShown)
    {
        [self clearData];
    }
    [tempString appendString:@"4"];
    self.resultLabel.text = tempString;
    resultShown = NO;
    
}
- (IBAction)fiveTouched:(id)sender
{
    if (resultShown)
    {
        [self clearData];
    }
    [tempString appendString:@"5"];
    self.resultLabel.text = tempString;
    resultShown = NO;
    
}
- (IBAction)sixTouched:(id)sender
{
    
    if (resultShown)
    {
        [self clearData];
    }
    [tempString appendString:@"6"];
    self.resultLabel.text = tempString;
    resultShown = NO;
}
- (IBAction)sevenTouched:(id)sender
{
    if (resultShown)
    {
        [self clearData];
    }
    [tempString appendString:@"7"];
    self.resultLabel.text = tempString;
    resultShown = NO;
}
- (IBAction)eightTouched:(id)sender
{
    if (resultShown)
    {
        [self clearData];
    }
    
    [tempString appendString:@"8"];
    self.resultLabel.text = tempString;
    resultShown = NO;
}
- (IBAction)nineTouched:(id)sender
{
    if (resultShown)
    {
        [self clearData];
    }
    
    [tempString appendString:@"9"];
    self.resultLabel.text = tempString;
    resultShown = NO;
}
- (IBAction)zeroTouched:(id)sender
{
    if (resultShown)
    {
        [self clearData];
    }
    [tempString appendString:@"0"];
    self.resultLabel.text = tempString;
    resultShown = NO;
}
- (IBAction)clearAll:(id)sender
{
    [self clearData];
}
- (IBAction)doMultiply:(id)sender
{
    [stringSequenceArray addObject:tempString];
    self.resultLabel.text = @"";
    tempString = [NSMutableString stringWithFormat:@""];
}
/**
 * @brief This method will be called when user clicked on EqualButton, which will multiply all the inputs strings
 */
- (IBAction)equalTo:(id)sender
{
    if (resultShown)
    {
        [stringSequenceArray removeAllObjects];
    }
    [stringSequenceArray addObject:tempString];
    //Calling Calculator Class Method 'multiply'
    NSInteger result = [Calculator multiplyTheGivenInputSequenceOfStringsFromAnArray:stringSequenceArray];
    self.resultLabel.text = [NSString stringWithFormat:@"%ld",(long)result];
    tempString = [NSMutableString stringWithFormat:@""];
    resultShown = YES;
    self.multiplyButton.enabled = NO;
}
- (IBAction)spaceClicked:(id)sender
{
    if (resultShown)
    {
        [stringSequenceArray removeAllObjects];
    }
    
    [tempString appendString:@""];
    self.resultLabel.text = tempString;
    resultShown = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
