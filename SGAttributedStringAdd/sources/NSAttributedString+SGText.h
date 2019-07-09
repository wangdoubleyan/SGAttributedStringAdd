//
//  NSAttributedString+SGText.h
//  SGAttributedStringAdd
//
//  Created by YY on 2019/7/9.
//  Copyright © 2019 sugar. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSAttributedString (SGText)
    
#pragma mark - Get Attribute
    
    /**
     an attribute with a given name of the character at a given index
     */
- (nullable id)sg_attribute:(NSString *)attrName atIndex:(NSUInteger)index;
- (nullable id)sg_attribute:(NSString *)attrName atIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
- (nullable id)sg_attribute:(NSString *)attrName atIndex:(NSUInteger)index longestEffectiveRange:(nullable NSRangePointer)range;
    
    // attribute property getter
    
    @property (nonatomic, strong, readonly, nullable) UIFont *sg_font;          // 字体
    @property (nonatomic, strong, readonly, nullable) UIColor *sg_color;        // 颜色
    @property (nonatomic, strong, readonly, nullable) UIColor *sg_backgroundColor; // 背景颜色
    // paragraphStyle
    @property (nonatomic, strong, readonly, nullable) NSParagraphStyle *sg_paragraphStyle;//  段落样式
    @property (nonatomic, assign, readonly) CGFloat sg_lineSpacing;             // 行高
    @property (nonatomic, assign, readonly) CGFloat sg_paragraphSpacing;        // 段落底部高度
    @property (nonatomic, assign, readonly) CGFloat sg_paragraphSpacingBefore;  // 段落顶部高度
    @property (nonatomic, assign, readonly) NSTextAlignment sg_alignment;       // 文本对齐
    @property (nonatomic, assign, readonly) CGFloat sg_firstLineHeadIndent;     // 首行缩进
    @property (nonatomic, assign, readonly) CGFloat sg_headIndent;              // 首部缩进
    @property (nonatomic, assign, readonly) CGFloat sg_tailIndent;              // 尾部缩进
    @property (nonatomic, assign, readonly) NSLineBreakMode sg_lineBreakMode;   // 换行模式
    @property (nonatomic, assign, readonly) CGFloat sg_minimumLineHeight;       // 最小行高
    @property (nonatomic, assign, readonly) CGFloat sg_maximumLineHeight;       // 最大行高
    @property (nonatomic, assign, readonly) NSWritingDirection sg_baseWritingDirection; // 文本书写方向
    @property (nonatomic, assign, readonly) CGFloat sg_lineHeightMultiple;      // 多行高
    @property (nonatomic, assign, readonly) float sg_hyphenationFactor;         // 连字符
    @property (nonatomic, assign, readonly) CGFloat sg_defaultTabInterval;      // \t制表符间距
    
    @property (nonatomic, assign, readonly) CGFloat sg_characterSpacing;        // 字符间距
    @property (nonatomic, assign, readonly) NSUnderlineStyle sg_lineThroughStyle;// 删除线类型
    @property (nonatomic, strong, readonly, nullable) UIColor *sg_lineThroughColor;//删除线颜色
    @property (nonatomic, assign, readonly) NSInteger sg_characterLigature;// 连字符 default 1
    @property (nonatomic, assign, readonly) NSUnderlineStyle sg_underLineStyle; // 下划线类型
    @property (nonatomic, strong, readonly, nullable) UIColor *sg_underLineColor;// 下划线颜色
    @property (nonatomic, assign, readonly) CGFloat sg_strokeWidth;             // 文字边线宽度
    @property (nonatomic, strong, readonly, nullable) UIColor *sg_strokeColor;  // 文字边线颜色
    @property (nonatomic, strong, readonly, nullable) NSShadow *sg_shadow;      // 文字阴影
    @property (nonatomic, strong, readonly, nullable) id sg_link;               // 链接
    @property (nonatomic, assign, readonly) CGFloat sg_baseline;                // 文字基线偏移
    @property (nonatomic, assign, readonly) CGFloat sg_obliqueness;             // 字形倾斜度
    @property (nonatomic, assign, readonly) CGFloat sg_expansion;            // 文本横向拉伸属性
    
#pragma mark - Get Attribute At Index
    
    /**
     get text font attribute at index
     @discussion if not use effectiveRange,you can set NULL
     */
- (UIFont *)sg_fontAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text color attribute at index
     */
- (UIColor *)sg_colorAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text backgroundColor attribute at index
     */
- (UIColor *)sg_backgroundColorAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text paragraph style attribute at index
     */
- (NSParagraphStyle *)sg_paragraphStyleAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text paragraph line spacing at index
     */
- (CGFloat)sg_lineSpacingAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text paragraph bottom spacing at index
     */
- (CGFloat)sg_paragraphSpacingAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text paragraph top spacing at index
     */
- (CGFloat)sg_paragraphSpacingBeforeAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text paragraph alignment at index
     */
- (NSTextAlignment)sg_alignmentAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text paragraph firstLineHeadIndent at index
     */
- (CGFloat)sg_firstLineHeadIndentAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text paragraph headIndent at index
     */
- (CGFloat)sg_headIndentAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text paragraph tailIndent at index
     */
- (CGFloat)sg_tailIndentAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text paragraph lineBreak at index
     */
- (NSLineBreakMode)sg_lineBreakModeAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text paragraph minimumLineHeight at index
     */
- (CGFloat)sg_minimumLineHeightAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    /**
     get text paragraph maximumLineHeight at index
     */
- (CGFloat)sg_maximumLineHeightAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text paragraph writingDirection at index
     */
- (NSWritingDirection)sg_baseWritingDirectionAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text paragraph lineHeightMultiple at index
     */
- (CGFloat)sg_lineHeightMultipleAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text paragraph hyphenation factor at index
     */
- (float)sg_hyphenationFactorAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text paragraph Tab spacing at index
     */
- (CGFloat)sg_defaultTabIntervalAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text character spacing attribute at index
     */
- (CGFloat)sg_characterSpacingAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text line through style attribute at index
     */
- (NSUnderlineStyle)sg_lineThroughStyleAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text line through color attribute at index
     */
- (UIColor *)sg_lineThroughColorAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text character ligature attribute at index
     */
- (NSInteger)sg_characterLigatureAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text underLine style attribute at index
     */
- (NSUnderlineStyle)sg_underLineStyleAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text underLine color attribute at index
     */
- (UIColor *)sg_underLineColorAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text stroke width attribute at index
     */
- (CGFloat)sg_strokeWidthAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text stroke color attribute at index
     */
- (UIColor *)sg_strokeColorAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text shadow attribute at index
     */
- (NSShadow *)sg_shadowAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text attachment attribute at index
     */
- (NSTextAttachment *)sg_attachmentIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text link attribute at index
     */
- (id)sg_linkAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text baseline attribute at index
     */
- (CGFloat)sg_baselineAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text writing direction attribute at index
     */
- (NSWritingDirection)sg_writingDirectionAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text obliqueness attribute at index
     */
- (CGFloat)sg_obliquenessAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    /**
     get text expansion attribute at index
     */
- (CGFloat)sg_expansionAtIndex:(NSUInteger)index effectiveRange:(nullable NSRangePointer)range;
    
    @end


@interface NSMutableAttributedString (TYTextKit)
    
    
#pragma mark - Add && Remove Attribute
    
- (void)sg_addAttribute:(NSString *)name value:(id)value range:(NSRange)range;
    
- (void)sg_removeAttribute:(NSString *)name range:(NSRange)range;
    
    @property (nonatomic, strong, readwrite, nullable) UIFont *sg_font;
    @property (nonatomic, strong, readwrite, nullable) UIColor *sg_color;
    @property (nonatomic, strong, readwrite, nullable) UIColor *sg_backgroundColor;
    // paragraphStyle
    @property (nonatomic, strong, readwrite, nullable) NSParagraphStyle *sg_paragraphStyle;
    @property (nonatomic, assign, readwrite) CGFloat sg_lineSpacing;
    @property (nonatomic, assign, readwrite) CGFloat sg_paragraphSpacing;
    @property (nonatomic, assign, readwrite) CGFloat sg_paragraphSpacingBefore;
    @property (nonatomic, assign, readwrite) NSTextAlignment sg_alignment;
    @property (nonatomic, assign, readwrite) CGFloat sg_firstLineHeadIndent;
    @property (nonatomic, assign, readwrite) CGFloat sg_headIndent;
    @property (nonatomic, assign, readwrite) CGFloat sg_tailIndent;
    @property (nonatomic, assign, readwrite) NSLineBreakMode sg_lineBreakMode;
    @property (nonatomic, assign, readwrite) CGFloat sg_minimumLineHeight;
    @property (nonatomic, assign, readwrite) CGFloat sg_maximumLineHeight;
    @property (nonatomic, assign, readwrite) NSWritingDirection sg_baseWritingDirection;
    @property (nonatomic, assign, readwrite) CGFloat sg_lineHeightMultiple;
    @property (nonatomic, assign, readwrite) float sg_hyphenationFactor;
    @property (nonatomic, assign, readwrite) CGFloat sg_defaultTabInterval;
    
    @property (nonatomic, assign, readwrite) CGFloat sg_characterSpacing;
    @property (nonatomic, assign, readwrite) NSUnderlineStyle sg_lineThroughStyle;
    @property (nonatomic, strong, readwrite, nullable) UIColor *sg_lineThroughColor;
    @property (nonatomic, assign, readwrite) NSInteger sg_characterLigature;
    @property (nonatomic, assign, readwrite) NSUnderlineStyle sg_underLineStyle;
    @property (nonatomic, strong, readwrite, nullable) UIColor *sg_underLineColor;
    @property (nonatomic, assign, readwrite) CGFloat sg_strokeWidth;
    @property (nonatomic, strong, readwrite, nullable) UIColor *sg_strokeColor;
    @property (nonatomic, strong, readwrite, nullable) NSShadow *sg_shadow;
    @property (nonatomic, strong, readwrite, nullable) id sg_link;
    @property (nonatomic, assign, readwrite) CGFloat sg_baseline;
    @property (nonatomic, assign, readwrite) CGFloat sg_obliqueness;
    @property (nonatomic, assign, readwrite) CGFloat sg_expansion;
    
#pragma mark - Add Attribute At Range
    
    /**
     add text font
     @discussion 添加文本字体
     */
- (void)sg_addFont:(UIFont *)font range:(NSRange)range;
    
    /**
     add text color
     @discussion 添加文本颜色
     */
- (void)sg_addColor:(UIColor *)color range:(NSRange)range;
    
    /**
     add text background color
     @discussion 添加文本背景色
     */
- (void)sg_addBackgroundColor:(UIColor *)backgroundColor range:(NSRange)range;
    
    /**
     add text paragraph style
     @discussion 添加文本段落格式
     */
- (void)sg_addParagraphStyle:(NSParagraphStyle *)paragraphStyle range:(NSRange)range;
    
    /**
     add text paragraph line spacing
     @discussion 添加文本段落行高
     */
- (void)sg_addLineSpacing:(CGFloat)lineSpacing range:(NSRange)range;
    
    /**
     add text paragraph bottom spacing
     @discussion 添加文本段落底部间距
     */
- (void)sg_addParagraphSpacing:(CGFloat)paragraphSpacing range:(NSRange)range;
    
    /**
     add text paragraph top spacing
     @discussion 添加文本段落顶部间距
     */
- (void)sg_addParagraphSpacingBefore:(CGFloat)paragraphSpacingBefore range:(NSRange)range ;
    
    /**
     add text paragraph alignment
     @discussion 添加段落文本对齐
     */
- (void)sg_addAlignment:(NSTextAlignment)alignment range:(NSRange)range;
    
    /**
     add text paragraph firstLineHeadIndent
     @discussion 添加段落文本首行缩进
     */
- (void)sg_addFirstLineHeadIndent:(CGFloat)firstLineHeadIndent range:(NSRange)range;
    
    /**
     add text paragraph headIndent
     @discussion 添加段落文本首部缩进
     */
- (void)sg_addHeadIndent:(CGFloat)headIndent range:(NSRange)range;
    
    /**
     add text paragraph tailIndent
     @discussion 添加段落文本尾部缩进
     */
- (void)sg_addTailIndent:(CGFloat)tailIndent range:(NSRange)range;
    
    /**
     add text paragraph lineBreakMode
     @discussion 添加段落文本断行方式
     */
- (void)sg_addLineBreakMode:(NSLineBreakMode)lineBreakMode range:(NSRange)range;
    
    /**
     add text paragraph minimumLineHeight
     @discussion 添加段落文本最小行高
     */
- (void)sg_addMinimumLineHeight:(CGFloat)minimumLineHeight range:(NSRange)range;
    
    /**
     add text paragraph maximumLineHeight
     @discussion 添加段落文本最大行高
     */
- (void)sg_addMaximumLineHeight:(CGFloat)maximumLineHeight range:(NSRange)range;
    
    /**
     add text paragraph writingDirection
     @discussion 添加段落文本书写方法
     */
- (void)sg_addBaseWritingDirection:(NSWritingDirection)baseWritingDirection range:(NSRange)range;
    
    /**
     add text paragraph lineHeightMultiple
     @discussion 添加段落文本可变行高,乘因数
     */
- (void)sg_addLineHeightMultiple:(CGFloat)lineHeightMultiple range:(NSRange)range;
    
    /**
     add text paragraph hyphenationFactor
     @discussion 添加段落文本连字符属性
     */
- (void)sg_addHyphenationFactor:(float)hyphenationFactor range:(NSRange)range;
    
    /**
     add text paragraph defaultTabInterval(\t)
     @discussion 添加段落文本制表符(\t)间隔
     */
- (void)sg_addDefaultTabInterval:(CGFloat)defaultTabInterval range:(NSRange)range;
    
    /**
     add text character or letter space
     @discussion 添加文本字间距
     */
- (void)sg_addCharacterSpacing:(CGFloat)characterSpacing range:(NSRange)range;
    
    /**
     add text line through style
     @discussion 添加文本删除线
     */
- (void)sg_addLineThroughStyle:(NSUnderlineStyle)style range:(NSRange)range;
    
    /**
     add text line through color
     @discussion 添加文本删除线颜色
     */
- (void)sg_addLineThroughColor:(UIColor *)color range:(NSRange)range;
    
    /**
     add text under line style
     @discussion 添加文本下划线
     */
- (void)sg_addUnderLineStyle:(NSUnderlineStyle)style range:(NSRange)range;
    
    /**
     add text under line color
     @discussion 添加文本下划线颜色
     */
- (void)sg_addUnderLineColor:(UIColor *)color range:(NSRange)range;
    
    /**
     add text character ligature
     @discussion 添加文本连字符
     @discussion default 1 ,1: default ligatures, 0: no ligatures
     */
- (void)sg_addCharacterLigature:(NSInteger)characterLigature range:(NSRange)range;
    
    /**
     add text stroke color
     @discussion 添加文本边框颜色
     @discussion defalut text color
     */
- (void)sg_addStrokeColor:(UIColor *)color range:(NSRange)range;
    
    /**
     add text stroke width
     @discussion 添加文本边框宽度
     */
- (void)sg_addStrokeWidth:(CGFloat)strokeWidth range:(NSRange)range;
    
    /**
     add text shadow
     @discussion 添加文本阴影
     */
- (void)sg_addShadow:(NSShadow *)shadow range:(NSRange)range;
    
    /**
     add text attachment
     @discussion 添加文本附件
     */
- (void)sg_addAttachment:(NSTextAttachment *)attachment range:(NSRange)range;
    
    /**
     add text link
     @discussion 添加文本链接
     */
- (void)sg_addLink:(id)link range:(NSRange)range;
    
    /**
     add text base line offset see UIBaselineAdjustment
     @discussion 添加文本基线偏移值
     */
- (void)sg_addBaseline:(CGFloat)baseline range:(NSRange)range;
    
    /**
     add text writing direction
     @discussion 添加文本书写方向
     */
- (void)sg_addWritingDirection:(NSWritingDirection)writingDirection range:(NSRange)range;
    
    /**
     add text obliqueness
     @discussion 添加文本字形倾斜度
     */
- (void)sg_addObliqueness:(CGFloat)obliqueness range:(NSRange)range;
    
    /**
     add text expansion
     @discussion 添加文本字横向拉伸
     */
- (void)sg_addExpansion:(CGFloat)expansion range:(NSRange)range;
    
    @end

NS_ASSUME_NONNULL_END
