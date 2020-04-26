//
//  ViewController.h
//  NSTableViewTest
//
//  Created by Jerry.Yang on 2020/4/25.
//  Copyright © 2020 Jerry.Yang. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController<NSTableViewDataSource,NSTableViewDelegate>

@property (weak) IBOutlet NSTableView *tableView;

@end

