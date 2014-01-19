.class public Lcom/zendesk/android/ui/FlowLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "FlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/ui/FlowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public final horizontal_spacing:I

.field public final vertical_spacing:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "horizontal_spacing"
    .parameter "vertical_spacing"

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 25
    iput p1, p0, Lcom/zendesk/android/ui/FlowLayout$LayoutParams;->horizontal_spacing:I

    .line 26
    iput p2, p0, Lcom/zendesk/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    .line 27
    return-void
.end method
