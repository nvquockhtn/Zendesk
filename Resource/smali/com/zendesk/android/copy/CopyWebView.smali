.class public Lcom/zendesk/android/copy/CopyWebView;
.super Landroid/webkit/WebView;
.source "CopyWebView.java"


# instance fields
.field private shiftDown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    return-void
.end method


# virtual methods
.method public isShiftDown()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/zendesk/android/copy/CopyWebView;->shiftDown:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/zendesk/android/copy/CopyWebView;->shiftDown:Z

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/zendesk/android/copy/CopyWebView;->setShiftDown()V

    .line 30
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setShiftDown()V
    .locals 9

    .prologue
    const-wide/16 v1, 0x0

    const/4 v5, 0x0

    .line 35
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v6, 0x3b

    move-wide v3, v1

    move v7, v5

    move v8, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 36
    .local v0, shiftPressEvent:Landroid/view/KeyEvent;
    invoke-virtual {v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zendesk/android/copy/CopyWebView;->shiftDown:Z

    .line 38
    return-void
.end method

.method public setShiftUp()V
    .locals 9

    .prologue
    const-wide/16 v1, 0x0

    const/4 v7, 0x0

    .line 41
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/16 v6, 0x3b

    move-wide v3, v1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 42
    .local v0, shiftPressEvent:Landroid/view/KeyEvent;
    invoke-virtual {v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    .line 43
    iput-boolean v7, p0, Lcom/zendesk/android/copy/CopyWebView;->shiftDown:Z

    .line 44
    return-void
.end method

.method public toggleShift()V
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/zendesk/android/copy/CopyWebView;->shiftDown:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/zendesk/android/copy/CopyWebView;->setShiftUp()V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/zendesk/android/copy/CopyWebView;->setShiftDown()V

    goto :goto_0
.end method
