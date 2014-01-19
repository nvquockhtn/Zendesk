.class Lcom/zendesk/android/ticket/EventsAdapter$2$1;
.super Ljava/lang/Object;
.source "EventsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/EventsAdapter$2;->responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zendesk/android/ticket/EventsAdapter$2;

.field final synthetic val$responseObject:Lcom/zendesk/api/model/ZDModelObject;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/EventsAdapter$2;Lcom/zendesk/api/model/ZDModelObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/zendesk/android/ticket/EventsAdapter$2$1;->this$1:Lcom/zendesk/android/ticket/EventsAdapter$2;

    iput-object p2, p0, Lcom/zendesk/android/ticket/EventsAdapter$2$1;->val$responseObject:Lcom/zendesk/api/model/ZDModelObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 258
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$2$1;->this$1:Lcom/zendesk/android/ticket/EventsAdapter$2;

    iget-object v0, v0, Lcom/zendesk/android/ticket/EventsAdapter$2;->this$0:Lcom/zendesk/android/ticket/EventsAdapter;

    iget-object v1, p0, Lcom/zendesk/android/ticket/EventsAdapter$2$1;->this$1:Lcom/zendesk/android/ticket/EventsAdapter$2;

    iget-object v1, v1, Lcom/zendesk/android/ticket/EventsAdapter$2;->val$u:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zendesk/android/ticket/EventsAdapter$2$1;->this$1:Lcom/zendesk/android/ticket/EventsAdapter$2;

    iget-object v2, v2, Lcom/zendesk/android/ticket/EventsAdapter$2;->val$header:Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;

    iget-object v3, p0, Lcom/zendesk/android/ticket/EventsAdapter$2$1;->val$responseObject:Lcom/zendesk/api/model/ZDModelObject;

    #calls: Lcom/zendesk/android/ticket/EventsAdapter;->setImageURI(Ljava/lang/String;Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;Ljava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/zendesk/android/ticket/EventsAdapter;->access$300(Lcom/zendesk/android/ticket/EventsAdapter;Ljava/lang/String;Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;Ljava/lang/Object;)V

    .line 259
    return-void
.end method
