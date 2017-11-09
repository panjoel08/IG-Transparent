#import <UIKit/UIKit.h>

#define PLIST_PATH @"/var/mobile/Library/Preferences/com.panjoel.igtrans.plist"

inline bool GetPrefBool(NSString *key)
{
return [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH] valueForKey:key] boolValue];
}

@interface _UIBarBackground
    @property (nonatomic, copy, readwrite) UIColor *backgroundColor;
@end
@interface IGMainAppHeader
@property (nonatomic, copy, readwrite) UIColor *backgroundColor;
@end

%hook _UIBarBackground
-(void) layoutSubviews {
  if(GetPrefBool(@"aktif")) {
%orig;
self.backgroundColor = [UIColor clearColor];
}
return %orig ;
}
-(id) _blurWithStyle:(long long)arg1 tint:(id)arg2 {
  if(GetPrefBool(@"aktif")) {
  arg2 = nil;
  arg1 = -1;
  return nil;
}
return %orig ;
}
%end

%hook IGMainAppHeader
-(void) layoutSubviews {
  if(GetPrefBool(@"aktif")) {
%orig;
self.backgroundColor = [UIColor clearColor];
}
return %orig ;
}
%end
