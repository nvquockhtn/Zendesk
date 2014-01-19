.class Lcom/zendesk/android/ui/ZDTabPageIndicator$1;
.super Ljava/lang/Object;
.source "ZDTabPageIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/ui/ZDTabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ui/ZDTabPageIndicator;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ui/ZDTabPageIndicator;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator$1;->this$0:Lcom/zendesk/android/ui/ZDTabPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 43
    move-object v2, p1

    check-cast v2, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;

    .line 44
    .local v2, tabView:Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;
    iget-object v3, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator$1;->this$0:Lcom/zendesk/android/ui/ZDTabPageIndicator;

    #getter for: Lcom/zendesk/android/ui/ZDTabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v3}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->access$000(Lcom/zendesk/android/ui/ZDTabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 45
    .local v1, oldSelected:I
    invoke-virtual {v2}, Lcom/zendesk/android/ui/ZDTabPageIndicator$CustomTabView;->getIndex()I

    move-result v0

    .line 46
    .local v0, newSelected:I
    iget-object v3, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator$1;->this$0:Lcom/zendesk/android/ui/ZDTabPageIndicator;

    #getter for: Lcom/zendesk/android/ui/ZDTabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v3}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->access$000(Lcom/zendesk/android/ui/ZDTabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 47
    if-ne v1, v0, :cond_0

    iget-object v3, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator$1;->this$0:Lcom/zendesk/android/ui/ZDTabPageIndicator;

    #getter for: Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabReselectedListener:Lcom/zendesk/android/ui/ZDTabPageIndicator$OnTabReselectedListener;
    invoke-static {v3}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->access$100(Lcom/zendesk/android/ui/ZDTabPageIndicator;)Lcom/zendesk/android/ui/ZDTabPageIndicator$OnTabReselectedListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 48
    iget-object v3, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator$1;->this$0:Lcom/zendesk/android/ui/ZDTabPageIndicator;

    #getter for: Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabReselectedListener:Lcom/zendesk/android/ui/ZDTabPageIndicator$OnTabReselectedListener;
    invoke-static {v3}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->access$100(Lcom/zendesk/android/ui/ZDTabPageIndicator;)Lcom/zendesk/android/ui/ZDTabPageIndicator$OnTabReselectedListener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/zendesk/android/ui/ZDTabPageIndicator$OnTabReselectedListener;->onTabReselected(I)V

    .line 50
    :cond_0
    return-void
.end method
