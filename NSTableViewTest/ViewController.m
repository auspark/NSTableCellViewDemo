//
//  ViewController.m
//  NSTableViewTest
//
//  Created by Jerry.Yang on 2020/4/25.
//  Copyright © 2020 Jerry.Yang. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;

    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return 3;
}

- (NSView* )tableView:(NSTableView *)tableView viewForTableColumn:(nullable NSTableColumn *)tableColumn row:(NSInteger)row {
    NSTableCellView *cell = nil;
    if (tableColumn == tableView.tableColumns[0]) {
        cell = [tableView makeViewWithIdentifier:@"NameCell" owner:nil];
        cell.textField.stringValue = @"name";
        cell.imageView.image = [NSImage imageNamed:@"red.png"];
    }else if (tableColumn == tableView.tableColumns[1]) {
        cell = [tableView makeViewWithIdentifier:@"CameraCell" owner:nil];
        
    }else if(tableColumn == tableView.tableColumns[2]) {
        cell = [tableView makeViewWithIdentifier:@"MicrophoneCell" owner:nil];
    }
    return cell;
}

-(CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row{
    return 30;
}
- (IBAction)onCellClick:(id)sender {
    NSButton *btn = (NSButton*)sender;
    if ( [btn image] == [NSImage imageNamed:@"green.png"] )
        [btn setImage:[NSImage imageNamed:@"red.png"]]; // 改变button的背景图
    else
        [btn setImage:[NSImage imageNamed:@"green.png"]];
    
    NSTableRowView *rowView = ( NSTableRowView *)btn.superview;
    //通过button的superview来获取其NSTableRowView，从而进行操作
    NSInteger clickIndex = [self.tableView  rowForView:rowView];
    //通过rowView获取其在tableView中的index，今儿进行下一步操作
    
    // NSAlert弹窗
    NSAlert *alert = [[NSAlert alloc] init];
    alert.messageText = @"Hello";
    [alert setShowsHelp:NO];
    NSString* name = @"AlertName";
    alert.informativeText = name;
    alert.alertStyle = NSAlertStyleWarning;
    [alert addButtonWithTitle:@"Ok"];
    
    [alert runModal];
}

@end
