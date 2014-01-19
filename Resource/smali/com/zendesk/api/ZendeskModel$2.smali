.class Lcom/zendesk/api/ZendeskModel$2;
.super Ljava/lang/Thread;
.source "ZendeskModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/api/ZendeskModel;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/api/ZendeskModel;

.field final synthetic val$deviceType:Ljava/lang/String;

.field final synthetic val$gcmRegId:Ljava/lang/String;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zendesk/api/ZendeskModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/zendesk/api/ZendeskModel$2;->this$0:Lcom/zendesk/api/ZendeskModel;

    iput-object p2, p0, Lcom/zendesk/api/ZendeskModel$2;->val$token:Ljava/lang/String;

    iput-object p3, p0, Lcom/zendesk/api/ZendeskModel$2;->val$gcmRegId:Ljava/lang/String;

    iput-object p4, p0, Lcom/zendesk/api/ZendeskModel$2;->val$deviceType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 171
    :try_start_0
    new-instance v1, Lcom/zendesk/api/requester/DeviceIdentifierRegistrationRequester;

    iget-object v2, p0, Lcom/zendesk/api/ZendeskModel$2;->val$token:Ljava/lang/String;

    iget-object v3, p0, Lcom/zendesk/api/ZendeskModel$2;->val$gcmRegId:Ljava/lang/String;

    iget-object v4, p0, Lcom/zendesk/api/ZendeskModel$2;->val$deviceType:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/zendesk/api/requester/DeviceIdentifierRegistrationRequester;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zendesk/api/requester/DeviceIdentifierRegistrationRequester;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ZendeskModel"

    const-string v2, "Device token registration failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
