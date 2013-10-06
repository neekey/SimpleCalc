//
//  AppDelegate.m
//  SimpleCalc
//
//  Created by 云建 倪 on 13-10-6.
//  Copyright (c) 2013年 com.neekey. All rights reserved.
//

#import "AppDelegate.h"

#define D_SHOW_DIVIDEBYZERO_BUG 0
#define D_SHOW_INDEXOUTOFRANGE_BUG 0

@implementation AppDelegate

// Buttons.
@synthesize mAdd;
@synthesize mDivide;
@synthesize mMultiply;
@synthesize mSubtract;

// Text Fields.
@synthesize mValue1;
@synthesize mValue2;
@synthesize mResult;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)myButtonAction:(id)a_sender;
{
    
    // Use an array to hold the valid operations
    NSArray *l_validOperations = [NSArray arrayWithObjects: @"+",
                                  @"-",
                                  @"x",
                                  @"÷",
                                  nil];
    
    // Get the button title (+, -, x, or ÷) to
    // determine which operation the App will
    // preform
    NSString *l_operation = [a_sender title];
    // Get a double precision number from the
    // first text field
    // To make this buggy we use int instead of double
    #if D_SHOW_DIVIDEBYZERO_BUG
        int l_value1 = [mValue1 doubleValue];
    #else
        double l_value1 = [mValue1 doubleValue];
    #endif
    // Get a double precision number from the
    // second text field
    // To make this buggy we use int instead of double
    #if D_SHOW_DIVIDEBYZERO_BUG
        int l_value2 = [mValue2 doubleValue];
    #else
        double l_value2 = [mValue2 doubleValue];
    #endif
    
    // Create a double precision variable to
    // hold the result of l_value1 <op> l_value2
    double l_result;
    // If the operation was addition, then
    // add the two values
    if ([[l_validOperations objectAtIndex:0] isEqual: l_operation])
    {
        l_result = l_value1 + l_value2;
    }
    // If the operation was subtraction, then
    // subtract the two values
    else if ([[l_validOperations objectAtIndex:0] isEqual: l_operation])
    {
        l_result = l_value1 - l_value2;
    }
    // If the operation was multiplication, then
    // multiply the two values
    #if D_SHOW_INDEXOUTOFRANGE_BUG
        else if ([[l_validOperations objectAtIndex:22] isEqual: l_operation])
    #else
        else if ([[l_validOperations objectAtIndex:2] isEqual: l_operation])
    #endif
    {
        l_result = l_value1 * l_value2;
    }
    // The operation must have been division, so
    // divide the first value by the second value
    else
    {
        l_result = l_value1 / l_value2;
    }
    // Set the result text field to the result
    [mResult setDoubleValue:l_result];
}

@end
