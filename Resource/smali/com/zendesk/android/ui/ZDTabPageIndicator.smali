.class public Lcom/zendesk/android/ui/ZDTabPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "ZDTabPageIndicator.java"

# interfaces
.implements Lcom/viewpagerindicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;,
        Lcom/zendesk/android/ui/ZDTabPageIndicator$OnTabReselectedListener;
    }
.end annotation


# static fields
.field private static final EMPTY_TITLE:Ljava/lang/CharSequence;


# instance fields
.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mMaxTabWidth:I

.field private mSelectedTabIndex:I

.field private final mTabClickListener:Landroid/view/View$OnClickListener;

.field private final mTabLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

.field private mTabReselectedListener:Lcom/zendesk/android/ui/ZDTabPageIndicator$OnTabReselectedListener;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, ""

    sput-object v0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->EMPTY_TITLE:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zendesk/android/ui/ZDTabPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/zendesk/android/R$style;->Theme_Zendesk:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Lcom/zendesk/android/ui/ZDTabPageIndicator$1;

    invoke-direct {v0, p0}, Lcom/zendesk/android/ui/ZDTabPageIndicator$1;-><init>(Lcom/zendesk/android/ui/ZDTabPageIndicator;)V

    iput-object v0, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabClickListener:Landroid/view/View$OnClickListener;

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->setHorizontalScrollBarEnabled(Z)V

    .line 71
    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    invoke-direct {v0, p1, p2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    .line 72
    iget-object v0, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/ui/ZDTabPageIndicator;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zendesk/android/ui/ZDTabPageIndicator;)Lcom/zendesk/android/ui/ZDTabPageIndicator$OnTabReselectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabReselectedListener:Lcom/zendesk/android/ui/ZDTabPageIndicator$OnTabReselectedListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/zendesk/android/ui/ZDTabPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zendesk/android/ui/ZDTabPageIndicator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mMaxTabWidth:I

    return v0
.end method

.method private addTab(ILjava/lang/CharSequence;I)V
    .locals 6
    .parameter "index"
    .parameter "text"
    .parameter "iconResId"

    .prologue
    .line 139
    new-instance v0, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;

    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;-><init>(Lcom/zendesk/android/ui/ZDTabPageIndicator;Landroid/content/Context;)V

    .line 140
    .local v0, tabView:Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;
    #setter for: Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;->mIndex:I
    invoke-static {v0, p1}, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;->access$302(Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;I)I

    .line 141
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;->setFocusable(Z)V

    .line 142
    iget-object v1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v0, p2}, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;->setTextViewTitle(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f80

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    return-void
.end method

.method private animateToTab(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    invoke-virtual {v1, p1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, tabView:Landroid/view/View;
    iget-object v1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 111
    :cond_0
    new-instance v1, Lcom/zendesk/android/ui/ZDTabPageIndicator$2;

    invoke-direct {v1, p0, v0}, Lcom/zendesk/android/ui/ZDTabPageIndicator$2;-><init>(Lcom/zendesk/android/ui/ZDTabPageIndicator;Landroid/view/View;)V

    iput-object v1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    .line 118
    iget-object v1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 7

    .prologue
    .line 192
    iget-object v6, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->removeAllViews()V

    .line 193
    iget-object v6, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 194
    .local v0, adapter:Landroid/support/v4/view/PagerAdapter;
    const/4 v3, 0x0

    .line 195
    .local v3, iconAdapter:Lcom/viewpagerindicator/IconPagerAdapter;
    instance-of v6, v0, Lcom/viewpagerindicator/IconPagerAdapter;

    if-eqz v6, :cond_0

    move-object v3, v0

    .line 196
    check-cast v3, Lcom/viewpagerindicator/IconPagerAdapter;

    .line 198
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 199
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 200
    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 201
    .local v5, title:Ljava/lang/CharSequence;
    if-nez v5, :cond_1

    .line 202
    sget-object v5, Lcom/zendesk/android/ui/ZDTabPageIndicator;->EMPTY_TITLE:Ljava/lang/CharSequence;

    .line 204
    :cond_1
    const/4 v4, 0x0

    .line 205
    .local v4, iconResId:I
    if-eqz v3, :cond_2

    .line 206
    invoke-interface {v3, v2}, Lcom/viewpagerindicator/IconPagerAdapter;->getIconResId(I)I

    move-result v4

    .line 208
    :cond_2
    invoke-direct {p0, v2, v5, v4}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->addTab(ILjava/lang/CharSequence;I)V

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .end local v4           #iconResId:I
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_3
    iget v6, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mSelectedTabIndex:I

    if-le v6, v1, :cond_4

    .line 211
    add-int/lit8 v6, v1, -0x1

    iput v6, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mSelectedTabIndex:I

    .line 213
    :cond_4
    iget v6, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mSelectedTabIndex:I

    invoke-virtual {p0, v6}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->setCurrentItem(I)V

    .line 214
    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->requestLayout()V

    .line 215
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 124
    iget-object v0, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 128
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 133
    iget-object v0, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 136
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v7, 0x4000

    const/4 v5, 0x1

    .line 81
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 82
    .local v4, widthMode:I
    if-ne v4, v7, :cond_2

    move v1, v5

    .line 83
    .local v1, lockedExpanded:Z
    :goto_0
    invoke-virtual {p0, v1}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->setFillViewport(Z)V

    .line 85
    iget-object v6, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildCount()I

    move-result v0

    .line 86
    .local v0, childCount:I
    if-le v0, v5, :cond_4

    if-eq v4, v7, :cond_0

    const/high16 v5, -0x8000

    if-ne v4, v5, :cond_4

    .line 87
    :cond_0
    const/4 v5, 0x2

    if-le v0, v5, :cond_3

    .line 88
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3ecccccd

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mMaxTabWidth:I

    .line 96
    :goto_1
    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->getMeasuredWidth()I

    move-result v3

    .line 97
    .local v3, oldWidth:I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 98
    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->getMeasuredWidth()I

    move-result v2

    .line 100
    .local v2, newWidth:I
    if-eqz v1, :cond_1

    if-eq v3, v2, :cond_1

    .line 102
    iget v5, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mSelectedTabIndex:I

    invoke-virtual {p0, v5}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->setCurrentItem(I)V

    .line 104
    :cond_1
    return-void

    .line 82
    .end local v0           #childCount:I
    .end local v1           #lockedExpanded:Z
    .end local v2           #newWidth:I
    .end local v3           #oldWidth:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 90
    .restart local v0       #childCount:I
    .restart local v1       #lockedExpanded:Z
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mMaxTabWidth:I

    goto :goto_1

    .line 93
    :cond_4
    const/4 v5, -0x1

    iput v5, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mMaxTabWidth:I

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 157
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 164
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->setCurrentItem(I)V

    .line 169
    iget-object v0, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 172
    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 6
    .parameter "item"

    .prologue
    .line 225
    iget-object v4, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_0

    .line 226
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "ViewPager has not been bound."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 228
    :cond_0
    iput p1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mSelectedTabIndex:I

    .line 229
    iget-object v4, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 231
    iget-object v4, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildCount()I

    move-result v3

    .line 232
    .local v3, tabCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 233
    iget-object v4, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    invoke-virtual {v4, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 234
    .local v0, child:Landroid/view/View;
    if-ne v1, p1, :cond_2

    const/4 v2, 0x1

    .line 235
    .local v2, isSelected:Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 236
    if-eqz v2, :cond_1

    .line 237
    invoke-direct {p0, p1}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->animateToTab(I)V

    .line 232
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    .end local v2           #isSelected:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 240
    .end local v0           #child:Landroid/view/View;
    :cond_3
    return-void
.end method

.method public setItemStateIndicatorVisible(IZ)V
    .locals 3
    .parameter "item"
    .parameter "visibility"

    .prologue
    .line 244
    iget-object v2, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    invoke-virtual {v2, p1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;

    .line 246
    .local v0, child:Landroid/view/View;
    instance-of v2, v0, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 247
    check-cast v1, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;

    .line 248
    .local v1, tView:Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;
    invoke-virtual {v1, p2}, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;->showTabStateIndicator(Z)V

    .line 251
    .end local v0           #child:Landroid/view/View;
    .end local v1           #tView:Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;
    :cond_0
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 256
    return-void
.end method

.method public setOnTabReselectedListener(Lcom/zendesk/android/ui/ZDTabPageIndicator$OnTabReselectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabReselectedListener:Lcom/zendesk/android/ui/ZDTabPageIndicator$OnTabReselectedListener;

    .line 77
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v1, p1, :cond_0

    .line 189
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 182
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 183
    .local v0, adapter:Landroid/support/v4/view/PagerAdapter;
    if-nez v0, :cond_2

    .line 184
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ViewPager does not have adapter instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_2
    iput-object p1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 187
    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 188
    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .parameter "view"
    .parameter "initialPosition"

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 220
    invoke-virtual {p0, p2}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->setCurrentItem(I)V

    .line 221
    return-void
.end method
