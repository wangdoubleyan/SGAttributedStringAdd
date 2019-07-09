//
//  NSAttributedString+SGText.m
//  SGAttributedStringAdd
//
//  Created by YY on 2019/7/9.
//  Copyright © 2019 sugar. All rights reserved.
//

#import "NSAttributedString+SGText.h"

@implementation NSAttributedString (SGText)
    
- (id)sg_attribute:(NSString *)attrName atIndex:(NSUInteger)index {
    return [self sg_attribute:attrName atIndex:index effectiveRange:NULL];
}
    
- (id)sg_attribute:(NSString *)attrName atIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    if (!attrName || self.length == 0) {
        return nil;
    }
    
    if (index >= self.length) {
#ifdef DEBUG
        NSLog(@"%s: attribute %@'s index out of range!",__FUNCTION__,attrName);
#endif
        return nil;
    }
    return [self attribute:attrName atIndex:index effectiveRange:range];
}
    
- (id)sg_attribute:(NSString *)attrName atIndex:(NSUInteger)index longestEffectiveRange:(NSRangePointer)range {
    if (!attrName || self.length == 0) {
        return nil;
    }
    
    if (index >= self.length) {
#ifdef DEBUG
        NSLog(@"%s: attribute %@'s index out of range!",__FUNCTION__,attrName);
#endif
        return nil;
    }
    return [self attribute:attrName atIndex:index longestEffectiveRange:range inRange:NSMakeRange(0, self.length)];
}
    
- (UIFont *)sg_font {
    return [self sg_fontAtIndex:0 effectiveRange:NULL];
}
- (UIFont *)sg_fontAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    return [self attribute:NSFontAttributeName atIndex:index effectiveRange:range];
}
    
- (UIColor *)sg_color {
    return [self sg_colorAtIndex:0 effectiveRange:NULL];
}
- (UIColor *)sg_colorAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    return [self attribute:NSForegroundColorAttributeName atIndex:index effectiveRange:range];
}
    
- (UIColor *)sg_backgroundColor {
    return [self sg_backgroundColorAtIndex:0 effectiveRange:NULL];
}
- (UIColor *)sg_backgroundColorAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    return [self attribute:NSBackgroundColorAttributeName atIndex:index effectiveRange:range];
}
    
- (NSParagraphStyle *)sg_paragraphStyle {
    return [self sg_paragraphStyleAtIndex:0 effectiveRange:NULL];
}
- (NSParagraphStyle *)sg_paragraphStyleAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    return [self attribute:NSParagraphStyleAttributeName atIndex:index effectiveRange:range];
}
- (NSParagraphStyle *)sg_paragraphStyleDefaultAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    NSParagraphStyle *style = [self attribute:NSParagraphStyleAttributeName atIndex:index effectiveRange:range];
    return style ? style : [NSParagraphStyle defaultParagraphStyle];
}
    
- (CGFloat)sg_lineSpacing {
    return [self sg_lineSpacingAtIndex:0 effectiveRange:NULL];
}
- (CGFloat)sg_lineSpacingAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    NSParagraphStyle *style = [self sg_paragraphStyleDefaultAtIndex:index effectiveRange:range];
    return style.lineSpacing;
}
    
- (CGFloat)sg_paragraphSpacing {
    return [self sg_paragraphSpacingAtIndex:0 effectiveRange:NULL];
}
- (CGFloat)sg_paragraphSpacingAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    NSParagraphStyle *style = [self sg_paragraphStyleDefaultAtIndex:index effectiveRange:range];
    return style.paragraphSpacing;
}
    
- (CGFloat)sg_paragraphSpacingBefore {
    return [self sg_paragraphSpacingBeforeAtIndex:0 effectiveRange:NULL];
}
- (CGFloat)sg_paragraphSpacingBeforeAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    NSParagraphStyle *style = [self sg_paragraphStyleDefaultAtIndex:index effectiveRange:range];
    return style.paragraphSpacingBefore;
}
    
- (NSTextAlignment)sg_alignment {
    return [self sg_alignmentAtIndex:0 effectiveRange:NULL];
}
- (NSTextAlignment)sg_alignmentAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    NSParagraphStyle *style = [self sg_paragraphStyleDefaultAtIndex:index effectiveRange:range];
    return style.alignment;
}
    
- (CGFloat)sg_firstLineHeadIndent {
    return [self sg_firstLineHeadIndentAtIndex:0 effectiveRange:NULL];
}
- (CGFloat)sg_firstLineHeadIndentAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    NSParagraphStyle *style = [self sg_paragraphStyleDefaultAtIndex:index effectiveRange:range];
    return style.firstLineHeadIndent;
}
    
- (CGFloat)sg_headIndent {
    return [self sg_headIndentAtIndex:0 effectiveRange:NULL];
}
- (CGFloat)sg_headIndentAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    NSParagraphStyle *style = [self sg_paragraphStyleDefaultAtIndex:index effectiveRange:range];
    return style.headIndent;
}
    
- (CGFloat)sg_tailIndent {
    return [self sg_tailIndentAtIndex:0 effectiveRange:NULL];
}
- (CGFloat)sg_tailIndentAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    NSParagraphStyle *style = [self sg_paragraphStyleDefaultAtIndex:index effectiveRange:range];
    return style.tailIndent;
}
    
- (NSLineBreakMode)sg_lineBreakMode {
    return [self sg_lineBreakModeAtIndex:0 effectiveRange:NULL];
}
- (NSLineBreakMode)sg_lineBreakModeAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    NSParagraphStyle *style = [self sg_paragraphStyleDefaultAtIndex:index effectiveRange:range];
    return style.lineBreakMode;
}
    
- (CGFloat)sg_minimumLineHeight {
    return [self sg_minimumLineHeightAtIndex:0 effectiveRange:NULL];
}
- (CGFloat)sg_minimumLineHeightAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    NSParagraphStyle *style = [self sg_paragraphStyleDefaultAtIndex:index effectiveRange:range];
    return style.minimumLineHeight;
}
    
- (CGFloat)sg_maximumLineHeight {
    return [self sg_maximumLineHeightAtIndex:0 effectiveRange:NULL];
}
- (CGFloat)sg_maximumLineHeightAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    NSParagraphStyle *style = [self sg_paragraphStyleDefaultAtIndex:index effectiveRange:range];
    return style.maximumLineHeight;
}
    
- (NSWritingDirection)sg_baseWritingDirection {
    return [self sg_baseWritingDirectionAtIndex:0 effectiveRange:NULL];
}
- (NSWritingDirection)sg_baseWritingDirectionAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    NSParagraphStyle *style = [self sg_paragraphStyleDefaultAtIndex:index effectiveRange:range];
    return style.baseWritingDirection;
}
    
- (CGFloat)sg_lineHeightMultiple {
    return [self sg_lineHeightMultipleAtIndex:0 effectiveRange:NULL];
}
- (CGFloat)sg_lineHeightMultipleAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    NSParagraphStyle *style = [self sg_paragraphStyleDefaultAtIndex:index effectiveRange:range];
    return style.lineHeightMultiple;
}
    
- (float)sg_hyphenationFactor {
    return [self sg_hyphenationFactorAtIndex:0 effectiveRange:NULL];
}
- (float)sg_hyphenationFactorAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    NSParagraphStyle *style = [self sg_paragraphStyleDefaultAtIndex:index effectiveRange:range];
    return style.hyphenationFactor;
}
    
- (CGFloat)sg_defaultTabInterval {
    return [self sg_defaultTabIntervalAtIndex:0 effectiveRange:NULL];
}
- (CGFloat)sg_defaultTabIntervalAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    NSParagraphStyle *style = [self sg_paragraphStyleDefaultAtIndex:index effectiveRange:range];
    return style.defaultTabInterval;
}
    
- (CGFloat)sg_characterSpacing {
    return [self sg_characterSpacingAtIndex:0 effectiveRange:NULL];
}
- (CGFloat)sg_characterSpacingAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    return [[self attribute:NSKernAttributeName atIndex:index effectiveRange:range] floatValue];
}
    
- (NSUnderlineStyle)sg_lineThroughStyle {
    return [self sg_lineThroughStyleAtIndex:0 effectiveRange:NULL];
}
- (NSUnderlineStyle)sg_lineThroughStyleAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    return [[self attribute:NSStrikethroughStyleAttributeName atIndex:index effectiveRange:range] integerValue];
}
    
- (UIColor *)sg_lineThroughColor {
    return [self sg_lineThroughColorAtIndex:0 effectiveRange:NULL];
}
- (UIColor *)sg_lineThroughColorAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    return [self attribute:NSStrikethroughColorAttributeName atIndex:index effectiveRange:range];
}
    
- (NSInteger)sg_characterLigature {
    return [self sg_characterLigatureAtIndex:0 effectiveRange:NULL];
}
- (NSInteger)sg_characterLigatureAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    id attribute = [self attribute:NSLigatureAttributeName atIndex:index effectiveRange:range];
    return attribute ? [attribute integerValue] : 1;
}
    
- (NSUnderlineStyle)sg_underLineStyle {
    return [self sg_underLineStyleAtIndex:0 effectiveRange:NULL];
}
- (NSUnderlineStyle)sg_underLineStyleAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    return [[self attribute:NSUnderlineStyleAttributeName atIndex:index effectiveRange:range] integerValue];
}
    
- (UIColor *)sg_underLineColor {
    return [self sg_underLineColorAtIndex:0 effectiveRange:NULL];
}
- (UIColor *)sg_underLineColorAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    return [self attribute:NSUnderlineColorAttributeName atIndex:index effectiveRange:range];
}
    
- (UIColor *)sg_strokeColor {
    return [self sg_strokeColorAtIndex:0 effectiveRange:NULL];
}
- (UIColor *)sg_strokeColorAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    return [self attribute:NSStrokeColorAttributeName atIndex:index effectiveRange:range];
}
    
- (CGFloat)sg_strokeWidth {
    return [self sg_strokeWidthAtIndex:0 effectiveRange:NULL];
}
- (CGFloat)sg_strokeWidthAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    return [[self attribute:NSStrokeWidthAttributeName atIndex:index effectiveRange:range] floatValue];
}
    
- (NSShadow *)sg_shadow {
    return [self sg_shadowAtIndex:0 effectiveRange:NULL];
}
- (NSShadow *)sg_shadowAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    return [self attribute:NSShadowAttributeName atIndex:index effectiveRange:range];
}
    
- (NSTextAttachment *)sg_attachmentIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    return [self attribute:NSAttachmentAttributeName atIndex:index effectiveRange:range];
}
    
- (id)sg_link {
    return [self sg_linkAtIndex:0 effectiveRange:NULL];
}
- (id)sg_linkAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    return [self attribute:NSLinkAttributeName atIndex:index effectiveRange:range];
}
    
- (CGFloat)sg_baseline {
    return [self sg_baselineAtIndex:0 effectiveRange:NULL];
}
- (CGFloat)sg_baselineAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    return [[self attribute:NSBaselineOffsetAttributeName atIndex:index effectiveRange:range] floatValue];
}
    
- (NSWritingDirection)sg_writingDirectionAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    return [[self attribute:NSWritingDirectionAttributeName atIndex:index effectiveRange:range] integerValue];
}
    
- (CGFloat)sg_obliqueness {
    return [self sg_obliquenessAtIndex:0 effectiveRange:NULL];
}
- (CGFloat)sg_obliquenessAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    return [[self attribute:NSObliquenessAttributeName atIndex:index effectiveRange:range] floatValue];
}
    
- (CGFloat)sg_expansion {
    return [self sg_expansionAtIndex:0 effectiveRange:NULL];
}
- (CGFloat)sg_expansionAtIndex:(NSUInteger)index effectiveRange:(NSRangePointer)range {
    return [[self attribute:NSExpansionAttributeName atIndex:index effectiveRange:range] floatValue];
}
    
    @end

@implementation NSMutableAttributedString (TYTextKit)
    
#define sg_setParagraphStyleProperty(_propersg_,_range_) \
[self enumerateAttribute:NSParagraphStyleAttributeName inRange:_range_ options:kNilOptions usingBlock:^(NSParagraphStyle *value, NSRange subRange, BOOL *stop) {\
NSMutableParagraphStyle *style = nil;\
if (!value) {\
style = [[NSMutableParagraphStyle alloc]init];\
if (style._propersg_ == _propersg_) {\
return ;\
}\
} else {\
if (value._propersg_ == _propersg_) {\
return ;\
}\
if ([value isKindOfClass:[NSMutableParagraphStyle class]]) {\
style = (NSMutableParagraphStyle *)value;\
}else {\
style = [value mutableCopy];\
}\
}\
style._propersg_ = _propersg_;\
[self sg_addParagraphStyle:style range:subRange];\
}];\

- (void)sg_addAttribute:(NSString *)attrName value:(id)value range:(NSRange)range {
    if (!attrName || [NSNull isEqual:attrName]) {
        return;
    }
    if (!value || [NSNull isEqual:value]) {
        [self removeAttribute:attrName range:range];
        return;
    }
    [self addAttribute:attrName value:value range:range];
}
    
- (void)sg_removeAttribute:(NSString *)attrName range:(NSRange)range {
    if (!attrName || [NSNull isEqual:attrName]) {
        return;
    }
    [self removeAttribute:attrName range:range];
}
    
#pragma mark - Add Attribute
    
- (void)setsg_font:(UIFont *)font {
    [self sg_addFont:font range:NSMakeRange(0, self.length)];
}
- (void)sg_addFont:(UIFont *)font range:(NSRange)range {
    [self sg_addAttribute:NSFontAttributeName value:font range:range];
}
    
- (void)setsg_color:(UIColor *)color {
    [self sg_addColor:color range:NSMakeRange(0, self.length)];
}
- (void)sg_addColor:(UIColor *)color range:(NSRange)range {
    [self sg_addAttribute:NSForegroundColorAttributeName value:color range:range];
}
    
- (void)setsg_backgroundColor:(UIColor *)backgroundColor {
    [self sg_addBackgroundColor:backgroundColor range:NSMakeRange(0, self.length)];
}
- (void)sg_addBackgroundColor:(UIColor *)backgroundColor range:(NSRange)range {
    [self sg_addAttribute:NSBackgroundColorAttributeName value:backgroundColor range:range];
}
    
- (void)setsg_paragraphStyle:(NSParagraphStyle *)paragraphStyle {
    [self sg_addParagraphStyle:paragraphStyle range:NSMakeRange(0, self.length)];
}
- (void)sg_addParagraphStyle:(NSParagraphStyle *)paragraphStyle range:(NSRange)range {
    [self sg_addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:range];
}
    
- (void)setsg_lineSpacing:(CGFloat)lineSpacing {
    [self sg_addLineSpacing:lineSpacing range:NSMakeRange(0, self.length)];
}
- (void)sg_addLineSpacing:(CGFloat)lineSpacing range:(NSRange)range {
    sg_setParagraphStyleProperty(lineSpacing,range);
}
    
- (void)setsg_paragraphSpacing:(CGFloat)paragraphSpacing {
    [self sg_addParagraphSpacing:paragraphSpacing range:NSMakeRange(0, self.length)];
}
- (void)sg_addParagraphSpacing:(CGFloat)paragraphSpacing range:(NSRange)range {
    sg_setParagraphStyleProperty(paragraphSpacing,range);
}
    
- (void)setsg_paragraphSpacingBefore:(CGFloat)paragraphSpacingBefore {
    [self sg_addParagraphSpacing:paragraphSpacingBefore range:NSMakeRange(0, self.length)];
}
- (void)sg_addParagraphSpacingBefore:(CGFloat)paragraphSpacingBefore range:(NSRange)range {
    sg_setParagraphStyleProperty(paragraphSpacingBefore,range);
}
    
- (void)setsg_alignment:(NSTextAlignment)alignment {
    [self sg_addAlignment:alignment range:NSMakeRange(0, self.length)];
}
- (void)sg_addAlignment:(NSTextAlignment)alignment range:(NSRange)range {
    sg_setParagraphStyleProperty(alignment,range);
}
    
- (void)setsg_firstLineHeadIndent:(CGFloat)firstLineHeadIndent {
    [self sg_addFirstLineHeadIndent:firstLineHeadIndent range:NSMakeRange(0, self.length)];
}
- (void)sg_addFirstLineHeadIndent:(CGFloat)firstLineHeadIndent range:(NSRange)range {
    sg_setParagraphStyleProperty(firstLineHeadIndent,range);
}
    
- (void)setsg_headIndent:(CGFloat)headIndent {
    [self sg_addHeadIndent:headIndent range:NSMakeRange(0, self.length)];
}
- (void)sg_addHeadIndent:(CGFloat)headIndent range:(NSRange)range {
    sg_setParagraphStyleProperty(headIndent,range);
}
    
- (void)setsg_tailIndent:(CGFloat)tailIndent {
    [self sg_addTailIndent:tailIndent range:NSMakeRange(0, self.length)];
}
- (void)sg_addTailIndent:(CGFloat)tailIndent range:(NSRange)range {
    sg_setParagraphStyleProperty(tailIndent,range);
}
    
- (void)setsg_lineBreakMode:(NSLineBreakMode)lineBreakMode {
    [self sg_addLineBreakMode:lineBreakMode range:NSMakeRange(0, self.length)];
}
- (void)sg_addLineBreakMode:(NSLineBreakMode)lineBreakMode range:(NSRange)range {
    sg_setParagraphStyleProperty(lineBreakMode,range);
}
    
- (void)setsg_minimumLineHeight:(CGFloat)minimumLineHeight {
    [self sg_addMinimumLineHeight:minimumLineHeight range:NSMakeRange(0, self.length)];
}
- (void)sg_addMinimumLineHeight:(CGFloat)minimumLineHeight range:(NSRange)range {
    sg_setParagraphStyleProperty(minimumLineHeight,range);
}
    
- (void)setsg_maximumLineHeight:(CGFloat)maximumLineHeight {
    [self sg_addMinimumLineHeight:maximumLineHeight range:NSMakeRange(0, self.length)];
}
- (void)sg_addMaximumLineHeight:(CGFloat)maximumLineHeight range:(NSRange)range {
    sg_setParagraphStyleProperty(maximumLineHeight,range);
}
    
- (void)setsg_baseWritingDirection:(NSWritingDirection)baseWritingDirection {
    [self sg_addBaseWritingDirection:baseWritingDirection range:NSMakeRange(0, self.length)];
}
- (void)sg_addBaseWritingDirection:(NSWritingDirection)baseWritingDirection range:(NSRange)range {
    sg_setParagraphStyleProperty(baseWritingDirection,range);
}
    
- (void)setsg_lineHeightMultiple:(CGFloat)lineHeightMultiple {
    [self sg_addLineHeightMultiple:lineHeightMultiple range:NSMakeRange(0, self.length)];
}
- (void)sg_addLineHeightMultiple:(CGFloat)lineHeightMultiple range:(NSRange)range {
    sg_setParagraphStyleProperty(lineHeightMultiple,range);
}
    
- (void)setsg_hyphenationFactor:(float)hyphenationFactor {
    [self sg_addHyphenationFactor:hyphenationFactor range:NSMakeRange(0, self.length)];
}
- (void)sg_addHyphenationFactor:(float)hyphenationFactor range:(NSRange)range {
    sg_setParagraphStyleProperty(hyphenationFactor,range);
}
    
- (void)setsg_defaultTabInterval:(CGFloat)defaultTabInterval {
    [self sg_addDefaultTabInterval:defaultTabInterval range:NSMakeRange(0, self.length)];
}
- (void)sg_addDefaultTabInterval:(CGFloat)defaultTabInterval range:(NSRange)range {
    sg_setParagraphStyleProperty(defaultTabInterval,range);
}
    
- (void)setsg_characterSpacing:(CGFloat)characterSpacing {
    [self sg_addCharacterSpacing:characterSpacing range:NSMakeRange(0, self.length)];
}
- (void)sg_addCharacterSpacing:(CGFloat)characterSpacing range:(NSRange)range {
    [self sg_addAttribute:NSKernAttributeName value:@(characterSpacing) range:range];
}
    
- (void)setsg_lineThroughStyle:(NSUnderlineStyle)lineThroughStyle {
    [self sg_addLineThroughStyle:lineThroughStyle range:NSMakeRange(0, self.length)];
}
- (void)sg_addLineThroughStyle:(NSUnderlineStyle)style range:(NSRange)range {
    [self sg_addAttribute:NSStrikethroughStyleAttributeName value:@(style) range:range];
}
    
- (void)setsg_lineThroughColor:(UIColor *)lineThroughColor {
    [self sg_addLineThroughColor:lineThroughColor range:NSMakeRange(0, self.length)];
}
- (void)sg_addLineThroughColor:(UIColor *)color range:(NSRange)range {
    [self sg_addAttribute:NSStrikethroughColorAttributeName value:color range:range];
}
    
- (void)setsg_underLineStyle:(NSUnderlineStyle)underLineStyle {
    [self sg_addUnderLineStyle:underLineStyle range:NSMakeRange(0, self.length)];
}
- (void)sg_addUnderLineStyle:(NSUnderlineStyle)style range:(NSRange)range {
    [self sg_addAttribute:NSUnderlineStyleAttributeName value:@(style) range:range];
}
    
- (void)setsg_underLineColor:(UIColor *)underLineColor {
    [self sg_addUnderLineColor:underLineColor range:NSMakeRange(0, self.length)];
}
- (void)sg_addUnderLineColor:(UIColor *)color range:(NSRange)range {
    [self sg_addAttribute:NSUnderlineColorAttributeName value:color range:range];
}
    
- (void)setsg_characterLigature:(NSInteger)characterLigature {
    [self sg_addCharacterLigature:characterLigature range:NSMakeRange(0, self.length)];
}
- (void)sg_addCharacterLigature:(NSInteger)characterLigature range:(NSRange)range {
    [self sg_addAttribute:NSLigatureAttributeName value:@(characterLigature) range:range];
}
    
- (void)setsg_strokeColor:(UIColor *)strokeColor {
    [self sg_addStrokeColor:strokeColor range:NSMakeRange(0, self.length)];
}
- (void)sg_addStrokeColor:(UIColor *)color range:(NSRange)range {
    [self sg_addAttribute:NSStrokeColorAttributeName value:color range:range];
}
    
- (void)setsg_strokeWidth:(CGFloat)strokeWidth {
    [self sg_addStrokeWidth:strokeWidth range:NSMakeRange(0, self.length)];
}
- (void)sg_addStrokeWidth:(CGFloat)strokeWidth range:(NSRange)range {
    [self sg_addAttribute:NSStrokeWidthAttributeName value:@(strokeWidth) range:range];
}
    
- (void)setsg_shadow:(NSShadow *)shadow {
    [self sg_addShadow:shadow range:NSMakeRange(0, self.length)];
}
- (void)sg_addShadow:(NSShadow *)shadow range:(NSRange)range {
    [self sg_addAttribute:NSShadowAttributeName value:shadow range:range];
}
    
- (void)sg_addAttachment:(NSTextAttachment *)attachment range:(NSRange)range {
    [self sg_addAttribute:NSAttachmentAttributeName value:attachment range:range];
}
    
- (void)setsg_link:(id)link {
    [self sg_addLink:link range:NSMakeRange(0, self.length)];
}
- (void)sg_addLink:(id)link range:(NSRange)range {
    [self sg_addAttribute:NSLinkAttributeName value:link range:range];
}
    
- (void)setsg_baseline:(CGFloat)baseline {
    [self sg_addBaseline:baseline range:NSMakeRange(0, self.length)];
}
- (void)sg_addBaseline:(CGFloat)baseline range:(NSRange)range {
    [self sg_addAttribute:NSBaselineOffsetAttributeName value:@(baseline) range:range];
}
    
- (void)sg_addWritingDirection:(NSWritingDirection)writingDirection range:(NSRange)range {
    [self sg_addAttribute:NSWritingDirectionAttributeName value:@(writingDirection) range:range];
}
    
- (void)setsg_obliqueness:(CGFloat)obliqueness {
    [self sg_addObliqueness:obliqueness range:NSMakeRange(0, self.length)];
}
- (void)sg_addObliqueness:(CGFloat)obliqueness range:(NSRange)range {
    [self sg_addAttribute:NSObliquenessAttributeName value:@(obliqueness) range:range];
}
    
- (void)setsg_expansion:(CGFloat)expansion {
    [self sg_addExpansion:expansion range:NSMakeRange(0, self.length)];
}
- (void)sg_addExpansion:(CGFloat)expansion range:(NSRange)range {
    [self sg_addAttribute:NSExpansionAttributeName value:@(expansion) range:range];
}
    
    @end
