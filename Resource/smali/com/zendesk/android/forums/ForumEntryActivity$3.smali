.class Lcom/zendesk/android/forums/ForumEntryActivity$3;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "ForumEntryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/forums/ForumEntryActivity;->loginSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/forums/ForumEntryActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/forums/ForumEntryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/zendesk/android/forums/ForumEntryActivity$3;->this$0:Lcom/zendesk/android/forums/ForumEntryActivity;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 113
    return-void
.end method

.method protected responseSuccess()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumEntryActivity$3;->this$0:Lcom/zendesk/android/forums/ForumEntryActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/forums/ForumEntryActivity;->loginSuccess()V

    .line 108
    return-void
.end method

.method protected run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumEntryActivity$3;->this$0:Lcom/zendesk/android/forums/ForumEntryActivity;

    #getter for: Lcom/zendesk/android/forums/ForumEntryActivity;->fe:Lcom/zendesk/api/model/forums/Topic;
    invoke-static {v0}, Lcom/zendesk/android/forums/ForumEntryActivity;->access$200(Lcom/zendesk/android/forums/ForumEntryActivity;)Lcom/zendesk/api/model/forums/Topic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/forums/Topic;->refresh()V

    .line 103
    return-void
.end method
