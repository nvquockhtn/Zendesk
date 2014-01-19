.class Lcom/zendesk/android/dashboard/DashboardActivity$1;
.super Ljava/lang/Object;
.source "DashboardActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/dashboard/DashboardActivity;->createIU(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/dashboard/DashboardActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/dashboard/DashboardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/zendesk/android/dashboard/DashboardActivity$1;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 188
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 189
    iget-object v3, p0, Lcom/zendesk/android/dashboard/DashboardActivity$1;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #getter for: Lcom/zendesk/android/dashboard/DashboardActivity;->addViewsButton:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$000(Lcom/zendesk/android/dashboard/DashboardActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 190
    iget-object v3, p0, Lcom/zendesk/android/dashboard/DashboardActivity$1;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #setter for: Lcom/zendesk/android/dashboard/DashboardActivity;->downEvent:Z
    invoke-static {v3, v5}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$102(Lcom/zendesk/android/dashboard/DashboardActivity;Z)Z

    .line 204
    :cond_0
    :goto_0
    return v4

    .line 191
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 192
    iget-object v3, p0, Lcom/zendesk/android/dashboard/DashboardActivity$1;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #getter for: Lcom/zendesk/android/dashboard/DashboardActivity;->addViewsButton:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$000(Lcom/zendesk/android/dashboard/DashboardActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 193
    iget-object v3, p0, Lcom/zendesk/android/dashboard/DashboardActivity$1;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #getter for: Lcom/zendesk/android/dashboard/DashboardActivity;->downEvent:Z
    invoke-static {v3}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$100(Lcom/zendesk/android/dashboard/DashboardActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 195
    .local v1, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 196
    .local v2, y:I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 197
    .local v0, r:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/zendesk/android/dashboard/DashboardActivity$1;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #getter for: Lcom/zendesk/android/dashboard/DashboardActivity;->addViewsButton:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$000(Lcom/zendesk/android/dashboard/DashboardActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 198
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 199
    iget-object v3, p0, Lcom/zendesk/android/dashboard/DashboardActivity$1;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    invoke-virtual {v3, p1}, Lcom/zendesk/android/dashboard/DashboardActivity;->configureViews(Landroid/view/View;)V

    .line 201
    :cond_2
    iget-object v3, p0, Lcom/zendesk/android/dashboard/DashboardActivity$1;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #setter for: Lcom/zendesk/android/dashboard/DashboardActivity;->downEvent:Z
    invoke-static {v3, v4}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$102(Lcom/zendesk/android/dashboard/DashboardActivity;Z)Z

    goto :goto_0
.end method
