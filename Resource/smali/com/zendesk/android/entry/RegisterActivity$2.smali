.class Lcom/zendesk/android/entry/RegisterActivity$2;
.super Ljava/lang/Thread;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/entry/RegisterActivity;->loginToNewAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/entry/RegisterActivity;

.field final synthetic val$config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;


# direct methods
.method constructor <init>(Lcom/zendesk/android/entry/RegisterActivity;Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/zendesk/android/entry/RegisterActivity$2;->this$0:Lcom/zendesk/android/entry/RegisterActivity;

    iput-object p2, p0, Lcom/zendesk/android/entry/RegisterActivity$2;->val$config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 195
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    new-instance v1, Lcom/zendesk/android/entry/RegisterActivity$2$1;

    invoke-direct {v1, p0}, Lcom/zendesk/android/entry/RegisterActivity$2$1;-><init>(Lcom/zendesk/android/entry/RegisterActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/api/ZendeskModel;->login(Lcom/zendesk/api/model/ResponseHandler;)V

    .line 233
    return-void

    .line 195
    :catch_0
    move-exception v0

    goto :goto_0
.end method
