.class public Lcom/zendesk/android/ticket/editors/ZDEditText;
.super Landroid/widget/EditText;
.source "ZDEditText.java"


# instance fields
.field private mOnImeBack:Lcom/zendesk/android/ticket/editors/EditTextImeBackListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 28
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/ZDEditText;->mOnImeBack:Lcom/zendesk/android/ticket/editors/EditTextImeBackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/ZDEditText;->mOnImeBack:Lcom/zendesk/android/ticket/editors/EditTextImeBackListener;

    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/ZDEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/zendesk/android/ticket/editors/EditTextImeBackListener;->onImeBack(Lcom/zendesk/android/ticket/editors/ZDEditText;Ljava/lang/String;)V

    .line 31
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnEditTextImeBackListener(Lcom/zendesk/android/ticket/editors/EditTextImeBackListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/zendesk/android/ticket/editors/ZDEditText;->mOnImeBack:Lcom/zendesk/android/ticket/editors/EditTextImeBackListener;

    .line 37
    return-void
.end method
