//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestJoinGroup.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestJoinGroup.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface APRequestJoinGroup () {
 @public
  NSString *url_;
}

@end

J2OBJC_FIELD_SETTER(APRequestJoinGroup, url_, NSString *)

@implementation APRequestJoinGroup

+ (APRequestJoinGroup *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APRequestJoinGroup_fromBytesWithByteArray_(data);
}

- (instancetype)initWithNSString:(NSString *)url {
  APRequestJoinGroup_initWithNSString_(self, url);
  return self;
}

- (instancetype)init {
  APRequestJoinGroup_init(self);
  return self;
}

- (NSString *)getUrl {
  return self->url_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->url_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:1];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->url_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->url_];
}

- (NSString *)description {
  NSString *res = @"rpc JoinGroup{";
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APRequestJoinGroup_HEADER;
}

@end

APRequestJoinGroup *APRequestJoinGroup_fromBytesWithByteArray_(IOSByteArray *data) {
  APRequestJoinGroup_initialize();
  return ((APRequestJoinGroup *) BSBser_parseWithBSBserObject_withByteArray_(new_APRequestJoinGroup_init(), data));
}

void APRequestJoinGroup_initWithNSString_(APRequestJoinGroup *self, NSString *url) {
  (void) APRequest_init(self);
  self->url_ = url;
}

APRequestJoinGroup *new_APRequestJoinGroup_initWithNSString_(NSString *url) {
  APRequestJoinGroup *self = [APRequestJoinGroup alloc];
  APRequestJoinGroup_initWithNSString_(self, url);
  return self;
}

void APRequestJoinGroup_init(APRequestJoinGroup *self) {
  (void) APRequest_init(self);
}

APRequestJoinGroup *new_APRequestJoinGroup_init() {
  APRequestJoinGroup *self = [APRequestJoinGroup alloc];
  APRequestJoinGroup_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequestJoinGroup)
