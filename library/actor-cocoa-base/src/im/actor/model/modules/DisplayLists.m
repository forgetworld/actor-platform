//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/DisplayLists.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/DisplayLists.java"

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/engine/ListEngine.h"
#include "im/actor/model/droidkit/engine/ListEngineDisplayExt.h"
#include "im/actor/model/entity/Dialog.h"
#include "im/actor/model/entity/Message.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/modules/BaseModule.h"
#include "im/actor/model/modules/Contacts.h"
#include "im/actor/model/modules/DisplayLists.h"
#include "im/actor/model/modules/Messages.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/SearchModule.h"
#include "im/actor/model/mvvm/BindedDisplayList.h"
#include "im/actor/model/mvvm/MVVMEngine.h"
#include "java/lang/RuntimeException.h"
#include "java/util/HashMap.h"

#define ImActorModelModulesDisplayLists_LOAD_GAP 5
#define ImActorModelModulesDisplayLists_LOAD_PAGE 20

@interface ImActorModelModulesDisplayLists () {
 @public
  AMBindedDisplayList *dialogGlobalList_;
  AMBindedDisplayList *contactsGlobalList_;
  JavaUtilHashMap *chatMediaGlobalLists_;
  JavaUtilHashMap *chatsGlobalLists_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesDisplayLists, dialogGlobalList_, AMBindedDisplayList *)
J2OBJC_FIELD_SETTER(ImActorModelModulesDisplayLists, contactsGlobalList_, AMBindedDisplayList *)
J2OBJC_FIELD_SETTER(ImActorModelModulesDisplayLists, chatMediaGlobalLists_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ImActorModelModulesDisplayLists, chatsGlobalLists_, JavaUtilHashMap *)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesDisplayLists, LOAD_GAP, jint)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesDisplayLists, LOAD_PAGE, jint)

@interface ImActorModelModulesDisplayLists_$1 : NSObject < AMBindedDisplayList_BindHook > {
 @public
  ImActorModelModulesDisplayLists *this$0_;
}

- (void)onScrolledToEnd;

- (void)onItemTouchedWithId:(AMDialog *)item;

- (instancetype)initWithImActorModelModulesDisplayLists:(ImActorModelModulesDisplayLists *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesDisplayLists_$1)

J2OBJC_FIELD_SETTER(ImActorModelModulesDisplayLists_$1, this$0_, ImActorModelModulesDisplayLists *)

__attribute__((unused)) static void ImActorModelModulesDisplayLists_$1_initWithImActorModelModulesDisplayLists_(ImActorModelModulesDisplayLists_$1 *self, ImActorModelModulesDisplayLists *outer$);

__attribute__((unused)) static ImActorModelModulesDisplayLists_$1 *new_ImActorModelModulesDisplayLists_$1_initWithImActorModelModulesDisplayLists_(ImActorModelModulesDisplayLists *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesDisplayLists_$1)

@interface ImActorModelModulesDisplayLists_$2 : NSObject < AMBindedDisplayList_BindHook > {
 @public
  ImActorModelModulesDisplayLists *this$0_;
  AMPeer *val$peer_;
}

- (void)onScrolledToEnd;

- (void)onItemTouchedWithId:(AMMessage *)item;

- (instancetype)initWithImActorModelModulesDisplayLists:(ImActorModelModulesDisplayLists *)outer$
                                             withAMPeer:(AMPeer *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesDisplayLists_$2)

J2OBJC_FIELD_SETTER(ImActorModelModulesDisplayLists_$2, this$0_, ImActorModelModulesDisplayLists *)
J2OBJC_FIELD_SETTER(ImActorModelModulesDisplayLists_$2, val$peer_, AMPeer *)

__attribute__((unused)) static void ImActorModelModulesDisplayLists_$2_initWithImActorModelModulesDisplayLists_withAMPeer_(ImActorModelModulesDisplayLists_$2 *self, ImActorModelModulesDisplayLists *outer$, AMPeer *capture$0);

__attribute__((unused)) static ImActorModelModulesDisplayLists_$2 *new_ImActorModelModulesDisplayLists_$2_initWithImActorModelModulesDisplayLists_withAMPeer_(ImActorModelModulesDisplayLists *outer$, AMPeer *capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesDisplayLists_$2)


#line 19
@implementation ImActorModelModulesDisplayLists


#line 31
- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules {
  ImActorModelModulesDisplayLists_initWithImActorModelModulesModules_(self, modules);
  return self;
}


#line 35
- (AMBindedDisplayList *)getContactsGlobalList {
  AMMVVMEngine_checkMainThread();
  
#line 38
  if (contactsGlobalList_ == nil) {
    contactsGlobalList_ = [self buildNewContactListWithBoolean:YES];
  }
  
#line 42
  return contactsGlobalList_;
}


#line 45
- (AMBindedDisplayList *)getDialogsGlobalList {
  AMMVVMEngine_checkMainThread();
  
#line 48
  if (dialogGlobalList_ == nil) {
    dialogGlobalList_ = [self buildNewDialogsListWithBoolean:YES];
  }
  
#line 52
  return dialogGlobalList_;
}


#line 55
- (AMBindedDisplayList *)getMessagesGlobalListWithAMPeer:(AMPeer *)peer {
  AMMVVMEngine_checkMainThread();
  
#line 58
  if (![((JavaUtilHashMap *) nil_chk(chatsGlobalLists_)) containsKeyWithId:peer]) {
    (void) [chatsGlobalLists_ putWithId:peer withId:[self buildNewChatListWithAMPeer:peer withBoolean:YES]];
  }
  
#line 62
  return [chatsGlobalLists_ getWithId:peer];
}


#line 65
- (AMBindedDisplayList *)getMessagesMediaListWithAMPeer:(AMPeer *)peer {
  AMMVVMEngine_checkMainThread();
  
#line 68
  if (![((JavaUtilHashMap *) nil_chk(chatMediaGlobalLists_)) containsKeyWithId:peer]) {
    (void) [chatMediaGlobalLists_ putWithId:peer withId:[self buildMediaListWithAMPeer:peer withBoolean:YES]];
  }
  
#line 72
  return [chatMediaGlobalLists_ getWithId:peer];
}


#line 75
- (jint)getMediaCountWithAMPeer:(AMPeer *)peer {
  id<DKListEngine> mediaEngine = [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) getMediaEngineWithAMPeer:peer];
  return [((id<DKListEngine>) nil_chk(mediaEngine)) getCount];
}

- (AMBindedDisplayList *)buildNewDialogsListWithBoolean:(jboolean)isGlobalList {
  AMMVVMEngine_checkMainThread();
  
#line 83
  id<DKListEngine> dialogsEngine = [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) getDialogsEngine];
  if (!([DKListEngineDisplayExt_class_() isInstance:dialogsEngine])) {
    @throw new_JavaLangRuntimeException_initWithNSString_(@"Dialogs ListEngine must implement ListEngineDisplayExt for using global list");
  }
  
#line 88
  id<AMBindedDisplayList_BindHook> hook = nil;
  if (isGlobalList) {
    hook = new_ImActorModelModulesDisplayLists_$1_initWithImActorModelModulesDisplayLists_(self);
  }
  
#line 103
  AMBindedDisplayList *displayList = new_AMBindedDisplayList_initWithDKListEngineDisplayExt_withBoolean_withInt_withInt_withAMBindedDisplayList_BindHook_((id<DKListEngineDisplayExt>) check_protocol_cast(dialogsEngine, @protocol(DKListEngineDisplayExt)),
#line 104
  isGlobalList, ImActorModelModulesDisplayLists_LOAD_PAGE, ImActorModelModulesDisplayLists_LOAD_GAP, hook);
  [displayList initTopWithBoolean:NO];
  return displayList;
}


#line 109
- (AMBindedDisplayList *)buildNewContactListWithBoolean:(jboolean)isGlobalList {
  AMMVVMEngine_checkMainThread();
  
#line 112
  id<DKListEngine> contactsEngine = [((ImActorModelModulesContacts *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getContactsModule])) getContacts];
  if (!([DKListEngineDisplayExt_class_() isInstance:contactsEngine])) {
    @throw new_JavaLangRuntimeException_initWithNSString_(@"Contacts ListEngine must implement ListEngineDisplayExt for using global list");
  }
  
#line 117
  AMBindedDisplayList *contactList = new_AMBindedDisplayList_initWithDKListEngineDisplayExt_withBoolean_withInt_withInt_withAMBindedDisplayList_BindHook_((id<DKListEngineDisplayExt>) check_protocol_cast(contactsEngine, @protocol(DKListEngineDisplayExt)),
#line 118
  isGlobalList, ImActorModelModulesDisplayLists_LOAD_PAGE, ImActorModelModulesDisplayLists_LOAD_GAP, nil);
  [contactList initTopWithBoolean:NO];
  return contactList;
}


#line 123
- (AMBindedDisplayList *)buildNewChatListWithAMPeer:(AMPeer *)peer
                                        withBoolean:(jboolean)isGlobalList {
  AMMVVMEngine_checkMainThread();
  
#line 126
  id<DKListEngine> messagesEngine = [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) getConversationEngineWithAMPeer:peer];
  if (!([DKListEngineDisplayExt_class_() isInstance:messagesEngine])) {
    @throw new_JavaLangRuntimeException_initWithNSString_(@"Conversation ListEngine must implement ListEngineDisplayExt for using global list");
  }
  
#line 131
  id<AMBindedDisplayList_BindHook> hook = nil;
  if (isGlobalList) {
    hook = new_ImActorModelModulesDisplayLists_$2_initWithImActorModelModulesDisplayLists_withAMPeer_(self, peer);
  }
  
#line 149
  AMBindedDisplayList *chatList = new_AMBindedDisplayList_initWithDKListEngineDisplayExt_withBoolean_withInt_withInt_withAMBindedDisplayList_BindHook_((id<DKListEngineDisplayExt>) check_protocol_cast(messagesEngine, @protocol(DKListEngineDisplayExt)),
#line 150
  isGlobalList, ImActorModelModulesDisplayLists_LOAD_PAGE, ImActorModelModulesDisplayLists_LOAD_GAP, hook);
  [chatList initTopWithBoolean:NO];
  return chatList;
}


#line 155
- (AMBindedDisplayList *)buildMediaListWithAMPeer:(AMPeer *)peer
                                      withBoolean:(jboolean)isGlobalList {
  AMMVVMEngine_checkMainThread();
  
#line 158
  id<DKListEngine> mediaEngine = [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) getMediaEngineWithAMPeer:peer];
  if (!([DKListEngineDisplayExt_class_() isInstance:mediaEngine])) {
    @throw new_JavaLangRuntimeException_initWithNSString_(@"Media ListEngine must implement ListEngineDisplayExt for using global list");
  }
  
#line 163
  AMBindedDisplayList *mediaList = new_AMBindedDisplayList_initWithDKListEngineDisplayExt_withBoolean_withInt_withInt_withAMBindedDisplayList_BindHook_((id<DKListEngineDisplayExt>) check_protocol_cast(mediaEngine, @protocol(DKListEngineDisplayExt)),
#line 164
  isGlobalList, ImActorModelModulesDisplayLists_LOAD_PAGE, ImActorModelModulesDisplayLists_LOAD_GAP, nil);
  [mediaList initTopWithBoolean:NO];
  return mediaList;
}


#line 169
- (AMBindedDisplayList *)buildNewSearchListWithBoolean:(jboolean)isGlobalList {
  AMMVVMEngine_checkMainThread();
  
#line 172
  id<DKListEngine> contactsEngine = [((ImActorModelModulesSearchModule *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getSearch])) getSearchList];
  if (!([DKListEngineDisplayExt_class_() isInstance:contactsEngine])) {
    @throw new_JavaLangRuntimeException_initWithNSString_(@"Search ListEngine must implement ListEngineDisplayExt for using global list");
  }
  
#line 177
  AMBindedDisplayList *contactList = new_AMBindedDisplayList_initWithDKListEngineDisplayExt_withBoolean_withInt_withInt_withAMBindedDisplayList_BindHook_((id<DKListEngineDisplayExt>) check_protocol_cast(contactsEngine, @protocol(DKListEngineDisplayExt)),
#line 178
  isGlobalList, ImActorModelModulesDisplayLists_LOAD_PAGE, ImActorModelModulesDisplayLists_LOAD_GAP, nil);
  [contactList initEmpty];
  return contactList;
}

@end


#line 31
void ImActorModelModulesDisplayLists_initWithImActorModelModulesModules_(ImActorModelModulesDisplayLists *self, ImActorModelModulesModules *modules) {
  (void) ImActorModelModulesBaseModule_initWithImActorModelModulesModules_(self, modules);
  self->chatMediaGlobalLists_ = new_JavaUtilHashMap_init();
  self->chatsGlobalLists_ = new_JavaUtilHashMap_init();
}


#line 31
ImActorModelModulesDisplayLists *new_ImActorModelModulesDisplayLists_initWithImActorModelModulesModules_(ImActorModelModulesModules *modules) {
  ImActorModelModulesDisplayLists *self = [ImActorModelModulesDisplayLists alloc];
  ImActorModelModulesDisplayLists_initWithImActorModelModulesModules_(self, modules);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesDisplayLists)

@implementation ImActorModelModulesDisplayLists_$1


#line 93
- (void)onScrolledToEnd {
  [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([this$0_ modules])) getMessagesModule])) loadMoreDialogs];
}


#line 98
- (void)onItemTouchedWithId:(AMDialog *)item {
}

- (instancetype)initWithImActorModelModulesDisplayLists:(ImActorModelModulesDisplayLists *)outer$ {
  ImActorModelModulesDisplayLists_$1_initWithImActorModelModulesDisplayLists_(self, outer$);
  return self;
}

@end

void ImActorModelModulesDisplayLists_$1_initWithImActorModelModulesDisplayLists_(ImActorModelModulesDisplayLists_$1 *self, ImActorModelModulesDisplayLists *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ImActorModelModulesDisplayLists_$1 *new_ImActorModelModulesDisplayLists_$1_initWithImActorModelModulesDisplayLists_(ImActorModelModulesDisplayLists *outer$) {
  ImActorModelModulesDisplayLists_$1 *self = [ImActorModelModulesDisplayLists_$1 alloc];
  ImActorModelModulesDisplayLists_$1_initWithImActorModelModulesDisplayLists_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesDisplayLists_$1)

@implementation ImActorModelModulesDisplayLists_$2


#line 136
- (void)onScrolledToEnd {
  [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([this$0_ modules])) getMessagesModule])) loadMoreHistoryWithAMPeer:val$peer_];
}


#line 141
- (void)onItemTouchedWithId:(AMMessage *)item {
  if ([((AMMessage *) nil_chk(item)) getSenderId] != [this$0_ myUid]) {
    [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([this$0_ modules])) getMessagesModule])) onInMessageShownWithAMPeer:val$peer_ withLong:[item getSortDate]];
  }
}

- (instancetype)initWithImActorModelModulesDisplayLists:(ImActorModelModulesDisplayLists *)outer$
                                             withAMPeer:(AMPeer *)capture$0 {
  ImActorModelModulesDisplayLists_$2_initWithImActorModelModulesDisplayLists_withAMPeer_(self, outer$, capture$0);
  return self;
}

@end

void ImActorModelModulesDisplayLists_$2_initWithImActorModelModulesDisplayLists_withAMPeer_(ImActorModelModulesDisplayLists_$2 *self, ImActorModelModulesDisplayLists *outer$, AMPeer *capture$0) {
  self->this$0_ = outer$;
  self->val$peer_ = capture$0;
  (void) NSObject_init(self);
}

ImActorModelModulesDisplayLists_$2 *new_ImActorModelModulesDisplayLists_$2_initWithImActorModelModulesDisplayLists_withAMPeer_(ImActorModelModulesDisplayLists *outer$, AMPeer *capture$0) {
  ImActorModelModulesDisplayLists_$2 *self = [ImActorModelModulesDisplayLists_$2 alloc];
  ImActorModelModulesDisplayLists_$2_initWithImActorModelModulesDisplayLists_withAMPeer_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesDisplayLists_$2)
