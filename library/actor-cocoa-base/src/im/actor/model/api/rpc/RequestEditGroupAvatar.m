//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestEditGroupAvatar.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/FileLocation.h"
#include "im/actor/model/api/GroupOutPeer.h"
#include "im/actor/model/api/rpc/RequestEditGroupAvatar.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface APRequestEditGroupAvatar () {
 @public
  APGroupOutPeer *groupPeer_;
  jlong rid_;
  APFileLocation *fileLocation_;
}

@end

J2OBJC_FIELD_SETTER(APRequestEditGroupAvatar, groupPeer_, APGroupOutPeer *)
J2OBJC_FIELD_SETTER(APRequestEditGroupAvatar, fileLocation_, APFileLocation *)

@implementation APRequestEditGroupAvatar

+ (APRequestEditGroupAvatar *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APRequestEditGroupAvatar_fromBytesWithByteArray_(data);
}

- (instancetype)initWithAPGroupOutPeer:(APGroupOutPeer *)groupPeer
                              withLong:(jlong)rid
                    withAPFileLocation:(APFileLocation *)fileLocation {
  APRequestEditGroupAvatar_initWithAPGroupOutPeer_withLong_withAPFileLocation_(self, groupPeer, rid, fileLocation);
  return self;
}

- (instancetype)init {
  APRequestEditGroupAvatar_init(self);
  return self;
}

- (APGroupOutPeer *)getGroupPeer {
  return self->groupPeer_;
}

- (jlong)getRid {
  return self->rid_;
}

- (APFileLocation *)getFileLocation {
  return self->fileLocation_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->groupPeer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:new_APGroupOutPeer_init()];
  self->rid_ = [values getLongWithInt:4];
  self->fileLocation_ = [values getObjWithInt:3 withBSBserObject:new_APFileLocation_init()];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->groupPeer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->groupPeer_];
  [writer writeLongWithInt:4 withLong:self->rid_];
  if (self->fileLocation_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeObjectWithInt:3 withBSBserObject:self->fileLocation_];
}

- (NSString *)description {
  NSString *res = @"rpc EditGroupAvatar{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"groupPeer=", self->groupPeer_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", rid=", self->rid_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", fileLocation=", (self->fileLocation_ != nil ? @"set" : @"empty")));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APRequestEditGroupAvatar_HEADER;
}

@end

APRequestEditGroupAvatar *APRequestEditGroupAvatar_fromBytesWithByteArray_(IOSByteArray *data) {
  APRequestEditGroupAvatar_initialize();
  return ((APRequestEditGroupAvatar *) BSBser_parseWithBSBserObject_withByteArray_(new_APRequestEditGroupAvatar_init(), data));
}

void APRequestEditGroupAvatar_initWithAPGroupOutPeer_withLong_withAPFileLocation_(APRequestEditGroupAvatar *self, APGroupOutPeer *groupPeer, jlong rid, APFileLocation *fileLocation) {
  (void) APRequest_init(self);
  self->groupPeer_ = groupPeer;
  self->rid_ = rid;
  self->fileLocation_ = fileLocation;
}

APRequestEditGroupAvatar *new_APRequestEditGroupAvatar_initWithAPGroupOutPeer_withLong_withAPFileLocation_(APGroupOutPeer *groupPeer, jlong rid, APFileLocation *fileLocation) {
  APRequestEditGroupAvatar *self = [APRequestEditGroupAvatar alloc];
  APRequestEditGroupAvatar_initWithAPGroupOutPeer_withLong_withAPFileLocation_(self, groupPeer, rid, fileLocation);
  return self;
}

void APRequestEditGroupAvatar_init(APRequestEditGroupAvatar *self) {
  (void) APRequest_init(self);
}

APRequestEditGroupAvatar *new_APRequestEditGroupAvatar_init() {
  APRequestEditGroupAvatar *self = [APRequestEditGroupAvatar alloc];
  APRequestEditGroupAvatar_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequestEditGroupAvatar)
