#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

__attribute__((visibility("default")))
@interface ShieldLoader : NSObject
+ (void)initShield;
+ (NSDictionary *)loadShield:(NSDictionary *)input;
@end

__attribute__((visibility("default")))
@interface ShieldParameter : NSObject
+ (void)insert:(NSString *)key :(NSString *)value;
@end

__attribute__((visibility("default")))
@interface ShieldData : NSObject
+ (NSData *)get;
@end

__attribute__((visibility("default")))
@interface ShieldConfig : NSObject
+ (void)updateConfig;
@end

__attribute__((visibility("default")))
@interface ShieldAssets : NSObject
+ (NSData *)readAssets:(NSString *)file_name;
@end

NS_ASSUME_NONNULL_END

