.class public Lcom/zendesk/android/ui/ZDEditText;
.super Landroid/widget/EditText;
.source "ZDEditText.java"


# instance fields
.field private mOnImeBack:Lcom/zendesk/android/ui/ZDEditTextListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 26
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/zendesk/android/ui/ZDEditText;->mOnImeBack:Lcom/zendesk/android/ui/ZDEditTextListener;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/zendesk/android/ui/ZDEditText;->mOnImeBack:Lcom/zendesk/android/ui/ZDEditTextListener;

    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/zendesk/android/ui/ZDEditTextListener;->onImeBack(Lcom/zendesk/android/ui/ZDEditText;Ljava/lang/String;)V

    .line 31
    :cond_0
    invoke-super {p0, p2}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnEditTextImeBackListener(Lcom/zendesk/android/ui/ZDEditTextListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/zendesk/android/ui/ZDEditText;->mOnImeBack:Lcom/zendesk/android/ui/ZDEditTextListener;

    .line 36
    return-void
.end method
