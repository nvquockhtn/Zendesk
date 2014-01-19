.class Lcom/zendesk/api/ZendeskModel$3;
.super Ljava/lang/Thread;
.source "ZendeskModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/api/ZendeskModel;->unregisterForNotifications(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/api/ZendeskModel;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zendesk/api/ZendeskModel;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/zendesk/api/ZendeskModel$3;->this$0:Lcom/zendesk/api/ZendeskModel;

    iput-object p2, p0, Lcom/zendesk/api/ZendeskModel$3;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 191
    :try_start_0
    new-instance v1, Lcom/zendesk/api/requester/DeviceIdentifierRemovalRequester;

    iget-object v2, p0, Lcom/zendesk/api/ZendeskModel$3;->val$token:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/zendesk/api/requester/DeviceIdentifierRemovalRequester;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zendesk/api/requester/DeviceIdentifierRemovalRequester;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ZendeskModel"

    const-string v2, "Device token registration failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
