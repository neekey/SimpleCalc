//
//  AppDelegate.h
//  SimpleCalc
//
//  Created by 云建 倪 on 13-10-6.
//  Copyright (c) 2013年 com.neekey. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

/**
 * Create the user interface elements.
 */

// Buttons.
@property (assign) IBOutlet NSButton *mAdd;
@property (assign) IBOutlet NSButton *mSubtract;
@property (assign) IBOutlet NSButton *mMultiply;
@property (assign) IBOutlet NSButton *mDivide;

// Text Fields.
@property (weak) IBOutlet NSTextField *mValue1;
@property (weak) IBOutlet NSTextField *mValue2;
@property (weak) IBOutlet NSTextField *mResult;

- (IBAction)myButtonAction:(id)sender;

@end
