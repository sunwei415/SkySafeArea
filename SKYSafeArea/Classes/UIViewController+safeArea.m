//
//  UIViewController+safeArea.m
//  Pods
//
//  Created by Wei Sun on 05/11/2017.
//
//

#import "UIViewController+safeArea.h"

#import "ObjcAssociatedObjectHelpers.h"

#import "Aspects.h"

@implementation UIViewController (safeArea)

SYNTHESIZE_ASC_PRIMITIVE(sky_safeBounds, setSky_safeBounds, CGRect);


+ (void)load {
    [self aspect_hookSelector:@selector(viewWillLayoutSubviews) withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//should be called inside viewWillLayoutSubviews

        UIViewController *viewController = (UIViewController *) [aspectInfo instance];

        CGFloat bottomSafeGap = @available(iOS 11, *) ? viewController.view.safeAreaInsets.bottom : viewController.bottomLayoutGuide.length;

        CGRect bounds = viewController.view.bounds;
        bounds.size.height -= bottomSafeGap;

        viewController.sky_safeBounds = bounds;

    } error:nil];
}

@end
