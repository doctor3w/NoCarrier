//
//
//    Created by drewsdunne 
//         Feb 22 2014
//
//

//get header
@interface SBStatusBarStateAggregator
- (void)_updateServiceItem;
@end

%hook SBStatusBarStateAggregator

- (void)_updateServiceItem {
	//do nothing and carrier disappears!
}

%end
