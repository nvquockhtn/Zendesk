.class Lcom/zendesk/android/entry/LoginActivity$4$1;
.super Ljava/lang/Thread;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/entry/LoginActivity$4;->responseSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zendesk/android/entry/LoginActivity$4;


# direct methods
.method constructor <init>(Lcom/zendesk/android/entry/LoginActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/zendesk/android/entry/LoginActivity$4$1;->this$1:Lcom/zendesk/android/entry/LoginActivity$4;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/zendesk/android/entry/LoginActivity$4$1;->this$1:Lcom/zendesk/android/entry/LoginActivity$4;

    iget-object v0, v0, Lcom/zendesk/android/entry/LoginActivity$4;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/entry/LoginActivity;->finish()V

    return-void
.end method
