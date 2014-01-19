.class public Lcom/zendesk/android/ui/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/android/ui/FlowLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private line_height:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/zendesk/android/ui/FlowLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/zendesk/android/ui/FlowLayout;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 93
    instance-of v0, p1, Lcom/zendesk/android/ui/FlowLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 88
    new-instance v0, Lcom/zendesk/android/ui/FlowLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/zendesk/android/ui/FlowLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/zendesk/android/ui/FlowLayout;->getChildCount()I

    move-result v3

    .line 102
    .local v3, count:I
    sub-int v6, p4, p2

    .line 103
    .local v6, width:I
    invoke-virtual {p0}, Lcom/zendesk/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v7

    .line 104
    .local v7, xpos:I
    invoke-virtual {p0}, Lcom/zendesk/android/ui/FlowLayout;->getPaddingTop()I

    move-result v8

    .line 106
    .local v8, ypos:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 107
    invoke-virtual {p0, v4}, Lcom/zendesk/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_1

    .line 109
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 110
    .local v2, childw:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 111
    .local v1, childh:I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/zendesk/android/ui/FlowLayout$LayoutParams;

    .line 112
    .local v5, lp:Lcom/zendesk/android/ui/FlowLayout$LayoutParams;
    add-int v9, v7, v2

    if-le v9, v6, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/zendesk/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v7

    .line 114
    iget v9, p0, Lcom/zendesk/android/ui/FlowLayout;->line_height:I

    add-int/2addr v8, v9

    .line 116
    :cond_0
    add-int v9, v7, v2

    add-int v10, v8, v1

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 117
    iget v9, v5, Lcom/zendesk/android/ui/FlowLayout$LayoutParams;->horizontal_spacing:I

    add-int/2addr v9, v2

    add-int/2addr v7, v9

    .line 106
    .end local v1           #childh:I
    .end local v2           #childw:I
    .end local v5           #lp:Lcom/zendesk/android/ui/FlowLayout$LayoutParams;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 120
    .end local v0           #child:Landroid/view/View;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 40
    sget-boolean v11, Lcom/zendesk/android/ui/FlowLayout;->$assertionsDisabled:Z

    if-nez v11, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    if-nez v11, :cond_0

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 42
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-virtual {p0}, Lcom/zendesk/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/zendesk/android/ui/FlowLayout;->getPaddingRight()I

    move-result v12

    sub-int v8, v11, v12

    .line 43
    .local v8, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-virtual {p0}, Lcom/zendesk/android/ui/FlowLayout;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/zendesk/android/ui/FlowLayout;->getPaddingBottom()I

    move-result v12

    sub-int v4, v11, v12

    .line 44
    .local v4, height:I
    invoke-virtual {p0}, Lcom/zendesk/android/ui/FlowLayout;->getChildCount()I

    move-result v3

    .line 45
    .local v3, count:I
    const/4 v6, 0x0

    .line 47
    .local v6, line_height:I
    invoke-virtual {p0}, Lcom/zendesk/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v9

    .line 48
    .local v9, xpos:I
    invoke-virtual {p0}, Lcom/zendesk/android/ui/FlowLayout;->getPaddingTop()I

    move-result v10

    .line 51
    .local v10, ypos:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, -0x8000

    if-ne v11, v12, :cond_3

    .line 52
    const/high16 v11, -0x8000

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 57
    .local v1, childHeightMeasureSpec:I
    :goto_0
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v3, :cond_4

    .line 58
    invoke-virtual {p0, v5}, Lcom/zendesk/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_2

    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/zendesk/android/ui/FlowLayout$LayoutParams;

    .line 61
    .local v7, lp:Lcom/zendesk/android/ui/FlowLayout$LayoutParams;
    const/high16 v11, -0x8000

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v0, v11, v1}, Landroid/view/View;->measure(II)V

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 63
    .local v2, childw:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iget v12, v7, Lcom/zendesk/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    add-int/2addr v11, v12

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 65
    add-int v11, v9, v2

    if-le v11, v8, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/zendesk/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v9

    .line 67
    add-int/2addr v10, v6

    .line 70
    :cond_1
    iget v11, v7, Lcom/zendesk/android/ui/FlowLayout$LayoutParams;->horizontal_spacing:I

    add-int/2addr v11, v2

    add-int/2addr v9, v11

    .line 57
    .end local v2           #childw:I
    .end local v7           #lp:Lcom/zendesk/android/ui/FlowLayout$LayoutParams;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 54
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeightMeasureSpec:I
    .end local v5           #i:I
    :cond_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1       #childHeightMeasureSpec:I
    goto :goto_0

    .line 73
    .restart local v5       #i:I
    :cond_4
    iput v6, p0, Lcom/zendesk/android/ui/FlowLayout;->line_height:I

    .line 75
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    if-nez v11, :cond_6

    .line 76
    add-int v4, v10, v6

    .line 83
    :cond_5
    :goto_2
    invoke-virtual {p0, v8, v4}, Lcom/zendesk/android/ui/FlowLayout;->setMeasuredDimension(II)V

    .line 84
    return-void

    .line 78
    :cond_6
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, -0x8000

    if-ne v11, v12, :cond_5

    .line 79
    add-int v11, v10, v6

    if-ge v11, v4, :cond_5

    .line 80
    add-int v4, v10, v6

    goto :goto_2
.end method
