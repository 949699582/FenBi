//
//  AppDelegate.m
//  ScrollViewDemo
//
//  Created by 949699582 on 2020/12/17.
//

#import "AppDelegate.h"
#import "NoScrollerScrollView.h"
@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    [self addNoScrollerScrollView];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (void)addNoScrollerScrollView{
    CGRect frame = CGRectMake(210, 0, 100, 100);
    NoScrollerScrollView *myScrollView = [[NoScrollerScrollView alloc] initWithFrame:frame];
    [myScrollView setBackgroundColor:[NSColor redColor]];
    NSImage *image = [NSImage imageNamed:@"screen"];
    CGRect imageViewFrame = CGRectMake(0, 0, image.size.width, image.size.height);
    NSImageView *imageView = [[NSImageView alloc] initWithFrame:imageViewFrame];
    imageView.image = image;
    myScrollView.documentView = imageView;
    myScrollView.hasVerticalScroller = true;
    myScrollView.hasHorizontalScroller = true;
    [self.window.contentView addSubview:myScrollView];
    
}


@end
