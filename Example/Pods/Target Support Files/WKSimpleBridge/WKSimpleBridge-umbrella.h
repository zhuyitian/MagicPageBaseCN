#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "WebViewJavascriptBridgeBase.h"
#import "WebViewJavascriptBridge_JS.h"
#import "WKWebViewJavascriptBridge.h"

FOUNDATION_EXPORT double WKSimpleBridgeVersionNumber;
FOUNDATION_EXPORT const unsigned char WKSimpleBridgeVersionString[];

