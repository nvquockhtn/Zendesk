.class Lcom/zendesk/android/ticket/editors/CreateCommentActivity$1;
.super Ljava/lang/Object;
.source "CreateCommentActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->createIU(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/editors/CreateCommentActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/editors/CreateCommentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$1;->this$0:Lcom/zendesk/android/ticket/editors/CreateCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$1;->this$0:Lcom/zendesk/android/ticket/editors/CreateCommentActivity;

    #calls: Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->checkEditState()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->access$000(Lcom/zendesk/android/ticket/editors/CreateCommentActivity;)V

    .line 107
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 102
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 97
    return-void
.end method
