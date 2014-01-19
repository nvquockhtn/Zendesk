.class Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;
.super Landroid/widget/RelativeLayout;
.source "ZDTabPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/ui/ZDTabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTabView"
.end annotation


# instance fields
.field private mIndex:I

.field private textViewTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/zendesk/android/ui/ZDTabPageIndicator;

.field private ticketStateIndicator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/zendesk/android/ui/ZDTabPageIndicator;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;->this$0:Lcom/zendesk/android/ui/ZDTabPageIndicator;

    .line 265
    const/4 v1, 0x0

    sget v2, Lcom/zendesk/android/R$attr;->zenTabPageIndicatorStyle:I

    invoke-direct {p0, p2, v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 266
    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 267
    .local v0, i:Landroid/view/LayoutInflater;
    sget v1, Lcom/zendesk/android/R$layout;->tabs_custom_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 269
    sget v1, Lcom/zendesk/android/R$id;->textViewTexTitle:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;->textViewTitle:Landroid/widget/TextView;

    .line 270
    sget v1, Lcom/zendesk/android/R$id;->tabStateIndicator:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;->ticketStateIndicator:Landroid/widget/ImageView;

    .line 271
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;->showTabStateIndicator(Z)V

    .line 272
    return-void
.end method

.method static synthetic access$302(Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 258
    iput p1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;->mIndex:I

    return p1
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;->mIndex:I

    return v0
.end method

.method public onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 277
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 280
    iget-object v0, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;->this$0:Lcom/zendesk/android/ui/ZDTabPageIndicator;

    #getter for: Lcom/zendesk/android/ui/ZDTabPageIndicator;->mMaxTabWidth:I
    invoke-static {v0}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->access$400(Lcom/zendesk/android/ui/ZDTabPageIndicator;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;->this$0:Lcom/zendesk/android/ui/ZDTabPageIndicator;

    #getter for: Lcom/zendesk/android/ui/ZDTabPageIndicator;->mMaxTabWidth:I
    invoke-static {v1}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->access$400(Lcom/zendesk/android/ui/ZDTabPageIndicator;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;->this$0:Lcom/zendesk/android/ui/ZDTabPageIndicator;

    #getter for: Lcom/zendesk/android/ui/ZDTabPageIndicator;->mMaxTabWidth:I
    invoke-static {v0}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->access$400(Lcom/zendesk/android/ui/ZDTabPageIndicator;)I

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 284
    :cond_0
    return-void
.end method

.method public setTextViewTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "textViewTitle"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;->textViewTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    return-void
.end method

.method public showTabStateIndicator(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 295
    iget-object v1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;->ticketStateIndicator:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    return-void

    .line 295
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
