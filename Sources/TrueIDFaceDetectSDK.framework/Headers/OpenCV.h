//  OpenCV.h
//  OpenCVSample_iOS
//
//  Created by Hiroki Ishiura on 2020/01/04.
//  Copyright © 2020 Hiroki Ishiura. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OpenCV : NSObject

/// Converts a full color image to grayscale image using OpenCV.
+ (UIImage *)cvtColorBGR2GRAY:(UIImage *)image;

+ (nonnull UIImage *)cvFaceAlign: (UIImage *)image list: (NSArray *)list;
+ (NSString *)resizeBase64Image:(NSString *)base64Image toSize:(CGSize)size;

/// Tính toán head pose từ các điểm ảnh 2D (landmarks) và trả về các góc Euler (roll, pitch, yaw).
+ (NSArray<NSNumber *> *)estimateHeadPoseWithImagePoints:(NSArray<NSValue *> *)imagePoints;


@end

NS_ASSUME_NONNULL_END
