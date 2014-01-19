.class Lcom/zendesk/android/ui/ZDTabPageIndicator$2;
.super Ljava/lang/Object;
.source "ZDTabPageIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ui/ZDTabPageIndicator;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ui/ZDTabPageIndicator;

.field final synthetic val$tabView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ui/ZDTabPageIndicator;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator$2;->this$0:Lcom/zendesk/android/ui/ZDTabPageIndicator;

    iput-object p2, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator$2;->val$tabView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 113
    iget-object v1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator$2;->val$tabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator$2;->this$0:Lcom/zendesk/android/ui/ZDTabPageIndicator;

    invoke-virtual {v2}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator$2;->val$tabView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 114
    .local v0, scrollPos:I
    iget-object v1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator$2;->this$0:Lcom/zendesk/android/ui/ZDTabPageIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->smoothScrollTo(II)V

    .line 115
    iget-object v1, p0, Lcom/zendesk/android/ui/ZDTabPageIndicator$2;->this$0:Lcom/zendesk/android/ui/ZDTabPageIndicator;

    const/4 v2, 0x0

    #setter for: Lcom/zendesk/android/ui/ZDTabPageIndicator;->mTabSelector:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->access$202(Lcom/zendesk/android/ui/ZDTabPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 116
    return-void
.end method
