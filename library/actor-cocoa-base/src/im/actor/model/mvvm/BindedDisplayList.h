//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/mvvm/BindedDisplayList.java
//

#ifndef _AMBindedDisplayList_H_
#define _AMBindedDisplayList_H_

#include "J2ObjC_header.h"
#include "im/actor/model/mvvm/DisplayList.h"
#include "java/lang/Enum.h"

@protocol AMBindedDisplayList_BindHook;
@protocol DKListEngineDisplayExt;

@interface AMBindedDisplayList : AMDisplayList

#pragma mark Public

- (instancetype)initWithDKListEngineDisplayExt:(id<DKListEngineDisplayExt>)listEngine
                                   withBoolean:(jboolean)isGlobalList
                                       withInt:(jint)pageSize
                                       withInt:(jint)loadGap
              withAMBindedDisplayList_BindHook:(id<AMBindedDisplayList_BindHook>)bindHook;

- (void)dispose;

- (void)initBottomWithRefresh:(jboolean)refresh OBJC_METHOD_FAMILY_NONE;

- (void)initCenterWithKey:(jlong)centerSortKey
              withRefresh:(jboolean)refresh OBJC_METHOD_FAMILY_NONE;

- (void)initEmpty OBJC_METHOD_FAMILY_NONE;

- (void)initSearchWithQuery:(NSString *)query
                withRefresh:(jboolean)refresh OBJC_METHOD_FAMILY_NONE;

- (void)initTopWithRefresh:(jboolean)refresh OBJC_METHOD_FAMILY_NONE;

- (jboolean)isGlobalList;

- (jboolean)isInSearchState;

- (void)touchWithIndex:(jint)index;

@end

J2OBJC_EMPTY_STATIC_INIT(AMBindedDisplayList)

FOUNDATION_EXPORT void AMBindedDisplayList_initWithDKListEngineDisplayExt_withBoolean_withInt_withInt_withAMBindedDisplayList_BindHook_(AMBindedDisplayList *self, id<DKListEngineDisplayExt> listEngine, jboolean isGlobalList, jint pageSize, jint loadGap, id<AMBindedDisplayList_BindHook> bindHook);

FOUNDATION_EXPORT AMBindedDisplayList *new_AMBindedDisplayList_initWithDKListEngineDisplayExt_withBoolean_withInt_withInt_withAMBindedDisplayList_BindHook_(id<DKListEngineDisplayExt> listEngine, jboolean isGlobalList, jint pageSize, jint loadGap, id<AMBindedDisplayList_BindHook> bindHook) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMBindedDisplayList)

typedef AMBindedDisplayList ImActorModelMvvmBindedDisplayList;

typedef NS_ENUM(NSUInteger, AMBindedDisplayList_State) {
  AMBindedDisplayList_State_LOADING_EMPTY = 0,
  AMBindedDisplayList_State_LOADED = 1,
  AMBindedDisplayList_State_LOADED_EMPTY = 2,
};

@interface AMBindedDisplayList_StateEnum : JavaLangEnum < NSCopying >

#pragma mark Package-Private

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *AMBindedDisplayList_StateEnum_values();

+ (AMBindedDisplayList_StateEnum *)valueOfWithNSString:(NSString *)name;
FOUNDATION_EXPORT AMBindedDisplayList_StateEnum *AMBindedDisplayList_StateEnum_valueOfWithNSString_(NSString *name);

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(AMBindedDisplayList_StateEnum)

FOUNDATION_EXPORT AMBindedDisplayList_StateEnum *AMBindedDisplayList_StateEnum_values_[];

#define AMBindedDisplayList_StateEnum_LOADING_EMPTY AMBindedDisplayList_StateEnum_values_[AMBindedDisplayList_State_LOADING_EMPTY]
J2OBJC_ENUM_CONSTANT_GETTER(AMBindedDisplayList_StateEnum, LOADING_EMPTY)

#define AMBindedDisplayList_StateEnum_LOADED AMBindedDisplayList_StateEnum_values_[AMBindedDisplayList_State_LOADED]
J2OBJC_ENUM_CONSTANT_GETTER(AMBindedDisplayList_StateEnum, LOADED)

#define AMBindedDisplayList_StateEnum_LOADED_EMPTY AMBindedDisplayList_StateEnum_values_[AMBindedDisplayList_State_LOADED_EMPTY]
J2OBJC_ENUM_CONSTANT_GETTER(AMBindedDisplayList_StateEnum, LOADED_EMPTY)

J2OBJC_TYPE_LITERAL_HEADER(AMBindedDisplayList_StateEnum)

@protocol AMBindedDisplayList_BindHook < NSObject, JavaObject >

- (void)onScrolledToEnd;

- (void)onItemTouchedWithId:(id)item;

@end

J2OBJC_EMPTY_STATIC_INIT(AMBindedDisplayList_BindHook)

J2OBJC_TYPE_LITERAL_HEADER(AMBindedDisplayList_BindHook)

#endif // _AMBindedDisplayList_H_
