//
//
//    Created by drewsdunne 
//         Feb 22 2014
//
//



@interface UIStatusBarServiceItemView
- (id)contentsImage;
@end

@interface SBStatusBarStateAggregator
- (_Bool)_setItem:(int)arg1 enabled:(_Bool)arg2;
@end

%hook UIStatusBarServiceItemView

- (id)contentsImage {
    //return nil object
	return nil;
}

%end

%hook SBStatusBarStateAggregator

- (_Bool)_setItem:(int)arg1 enabled:(BOOL)arg2 {   
	//check if item is carrier item     
    if (arg1 == 4 && arg2) {
    	//if yes and enabled, disable it
        return %orig(arg1, NO);
    }
    //if no, continue normally
    return %orig(arg1, arg2);
}

%end