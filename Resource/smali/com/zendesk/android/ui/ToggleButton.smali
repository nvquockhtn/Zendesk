.class public Lcom/zendesk/android/ui/ToggleButton;
.super Landroid/widget/RelativeLayout;
.source "ToggleButton.java"


# instance fields
.field private image:Landroid/widget/ImageView;

.field private offText:Landroid/widget/TextView;

.field private on:Z

.field private onText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/zendesk/android/R$id;->toggle_image:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ui/ToggleButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zendesk/android/ui/ToggleButton;->image:Landroid/widget/ImageView;

    .line 32
    sget v0, Lcom/zendesk/android/R$id;->toggle_on:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ui/ToggleButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/ui/ToggleButton;->onText:Landroid/widget/TextView;

    .line 33
    sget v0, Lcom/zendesk/android/R$id;->toggle_off:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ui/ToggleButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/ui/ToggleButton;->offText:Landroid/widget/TextView;

    .line 34
    return-void
.end method

.method public isOn()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/zendesk/android/ui/ToggleButton;->on:Z

    return v0
.end method

.method public setOn(Z)V
    .locals 4
    .parameter "on"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/zendesk/android/ui/ToggleButton;->on:Z

    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/zendesk/android/ui/ToggleButton;->image:Landroid/widget/ImageView;

    sget v1, Lcom/zendesk/android/R$drawable;->toggle_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    iget-object v0, p0, Lcom/zendesk/android/ui/ToggleButton;->onText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/zendesk/android/ui/ToggleButton;->offText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/ui/ToggleButton;->image:Landroid/widget/ImageView;

    sget v1, Lcom/zendesk/android/R$drawable;->toggle_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    iget-object v0, p0, Lcom/zendesk/android/ui/ToggleButton;->onText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/zendesk/android/ui/ToggleButton;->offText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
