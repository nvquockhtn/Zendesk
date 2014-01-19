.class public Lcom/zendesk/android/views/ViewsAdapter;
.super Lcom/zendesk/android/adapters/BaseListAdapter;
.source "ViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/android/views/ViewsAdapter$ViewRow;
    }
.end annotation


# instance fields
.field private activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/views/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 1
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/zendesk/android/adapters/BaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/android/views/ViewsAdapter;->views:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zendesk/android/views/ViewsAdapter;->activity:Ljava/lang/ref/WeakReference;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zendesk/android/views/ViewsAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "pos"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zendesk/android/views/ViewsAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, row:Lcom/zendesk/android/views/ViewsAdapter$ViewRow;
    iget-object v2, p0, Lcom/zendesk/android/views/ViewsAdapter;->views:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/views/View;

    .line 54
    .local v1, v:Lcom/zendesk/api/model/views/View;
    if-nez p2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/zendesk/android/views/ViewsAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/zendesk/android/R$layout;->views_row:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 57
    new-instance v0, Lcom/zendesk/android/views/ViewsAdapter$ViewRow;

    .end local v0           #row:Lcom/zendesk/android/views/ViewsAdapter$ViewRow;
    invoke-direct {v0, p0, p2, p3}, Lcom/zendesk/android/views/ViewsAdapter$ViewRow;-><init>(Lcom/zendesk/android/views/ViewsAdapter;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 58
    .restart local v0       #row:Lcom/zendesk/android/views/ViewsAdapter$ViewRow;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    :goto_0
    iget-object v2, v0, Lcom/zendesk/android/views/ViewsAdapter$ViewRow;->viewTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zendesk/api/model/views/View;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v1}, Lcom/zendesk/api/model/views/View;->getCount()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 66
    iget-object v2, v0, Lcom/zendesk/android/views/ViewsAdapter$ViewRow;->ticketCount:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zendesk/api/model/views/View;->getCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_1
    return-object p2

    .line 61
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #row:Lcom/zendesk/android/views/ViewsAdapter$ViewRow;
    check-cast v0, Lcom/zendesk/android/views/ViewsAdapter$ViewRow;

    .restart local v0       #row:Lcom/zendesk/android/views/ViewsAdapter$ViewRow;
    goto :goto_0

    .line 68
    :cond_1
    iget-object v2, v0, Lcom/zendesk/android/views/ViewsAdapter$ViewRow;->ticketCount:Landroid/widget/TextView;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onItemClick(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "pos"

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zendesk/android/views/ViewsAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/zendesk/android/ticketlist/TicketListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "viewId"

    iget-object v1, p0, Lcom/zendesk/android/views/ViewsAdapter;->views:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/views/View;

    invoke-virtual {v1}, Lcom/zendesk/api/model/views/View;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/zendesk/android/views/ViewsAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method public setViews(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/views/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/views/View;>;"
    iput-object p1, p0, Lcom/zendesk/android/views/ViewsAdapter;->views:Ljava/util/List;

    .line 33
    return-void
.end method
