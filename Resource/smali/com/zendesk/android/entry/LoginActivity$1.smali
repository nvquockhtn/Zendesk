.class Lcom/zendesk/android/entry/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/entry/LoginActivity;->createIU(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/entry/LoginActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/entry/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/zendesk/android/entry/LoginActivity$1;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zendesk/android/entry/LoginActivity$1;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    #getter for: Lcom/zendesk/android/entry/LoginActivity;->logo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/zendesk/android/entry/LoginActivity;->access$000(Lcom/zendesk/android/entry/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    return-void
.end method
