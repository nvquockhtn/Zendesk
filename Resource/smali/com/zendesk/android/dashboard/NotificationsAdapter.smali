.class public Lcom/zendesk/android/dashboard/NotificationsAdapter;
.super Lcom/zendesk/android/adapters/BaseListAdapter;
.source "NotificationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private activityGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ActivityGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "NotificationsAdapter"

    sput-object v0, Lcom/zendesk/android/dashboard/NotificationsAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/zendesk/android/adapters/BaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/android/dashboard/NotificationsAdapter;->activityGroups:Ljava/util/List;

    .line 28
    return-void
.end method

.method private addDetailRow(Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;Landroid/view/ViewGroup;Lcom/zendesk/api/model/ActivityGroup;ILjava/lang/String;)V
    .locals 6
    .parameter "row"
    .parameter "parent"
    .parameter "a"
    .parameter "iconId"
    .parameter "text"

    .prologue
    .line 91
    iget-object v3, p0, Lcom/zendesk/android/dashboard/NotificationsAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/zendesk/android/R$layout;->dashboard_notification_detail_row:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 92
    .local v0, detailRow:Landroid/widget/LinearLayout;
    sget v3, Lcom/zendesk/android/R$id;->notification_detail_icon:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 93
    .local v2, icon:Landroid/widget/ImageView;
    invoke-virtual {v2, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    sget v3, Lcom/zendesk/android/R$id;->notification_detail_text:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 95
    .local v1, detailText:Landroid/widget/TextView;
    invoke-virtual {v1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v3, p1, Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;->notificationDetailArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    return-void
.end method


# virtual methods
.method public getActivityGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ActivityGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zendesk/android/dashboard/NotificationsAdapter;->activityGroups:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zendesk/android/dashboard/NotificationsAdapter;->activityGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "pos"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zendesk/android/dashboard/NotificationsAdapter;->activityGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, row:Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;
    if-nez p2, :cond_3

    .line 57
    iget-object v0, p0, Lcom/zendesk/android/dashboard/NotificationsAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/zendesk/android/R$layout;->dashboard_notification_row:I

    invoke-virtual {v0, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 58
    new-instance v1, Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;

    .end local v1           #row:Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;
    invoke-direct {v1, p0, p2, p3}, Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;-><init>(Lcom/zendesk/android/dashboard/NotificationsAdapter;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 59
    .restart local v1       #row:Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/zendesk/android/dashboard/NotificationsAdapter;->activityGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zendesk/api/model/ActivityGroup;

    .line 65
    .local v3, a:Lcom/zendesk/api/model/ActivityGroup;
    iget-object v0, v1, Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;->notificationSubject:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ActivityGroup;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, v1, Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;->notificationDate:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ActivityGroup;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, v1, Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;->notificationTicketId:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/zendesk/api/model/ActivityGroup;->getTicketId()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, v1, Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;->notificationDetailArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 70
    iget-object v0, v1, Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;->notificationDetailArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 73
    iget-object v0, p0, Lcom/zendesk/android/dashboard/NotificationsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 75
    .local v6, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Lcom/zendesk/api/model/ActivityGroup;->getLastAssigned()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    sget v4, Lcom/zendesk/android/R$drawable;->icon_assign_ticket:I

    invoke-static {v6, v3}, Lcom/zendesk/api/model/strings/ActivityGroupStrings;->getAssignString(Landroid/content/res/Resources;Lcom/zendesk/api/model/ActivityGroup;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/zendesk/android/dashboard/NotificationsAdapter;->addDetailRow(Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;Landroid/view/ViewGroup;Lcom/zendesk/api/model/ActivityGroup;ILjava/lang/String;)V

    .line 79
    :cond_0
    invoke-virtual {v3}, Lcom/zendesk/api/model/ActivityGroup;->getCommenters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    sget v4, Lcom/zendesk/android/R$drawable;->icon_comment:I

    invoke-static {v6, v3}, Lcom/zendesk/api/model/strings/ActivityGroupStrings;->getCommentString(Landroid/content/res/Resources;Lcom/zendesk/api/model/ActivityGroup;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/zendesk/android/dashboard/NotificationsAdapter;->addDetailRow(Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;Landroid/view/ViewGroup;Lcom/zendesk/api/model/ActivityGroup;ILjava/lang/String;)V

    .line 83
    :cond_1
    invoke-virtual {v3}, Lcom/zendesk/api/model/ActivityGroup;->hasPriorityChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    sget v4, Lcom/zendesk/android/R$drawable;->icon_priority_change:I

    invoke-static {v6, v3}, Lcom/zendesk/api/model/strings/ActivityGroupStrings;->getPriorityString(Landroid/content/res/Resources;Lcom/zendesk/api/model/ActivityGroup;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/zendesk/android/dashboard/NotificationsAdapter;->addDetailRow(Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;Landroid/view/ViewGroup;Lcom/zendesk/api/model/ActivityGroup;ILjava/lang/String;)V

    .line 87
    :cond_2
    return-object p2

    .line 62
    .end local v3           #a:Lcom/zendesk/api/model/ActivityGroup;
    .end local v6           #resources:Landroid/content/res/Resources;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #row:Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;
    check-cast v1, Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;

    .restart local v1       #row:Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;
    goto/16 :goto_0
.end method

.method protected onItemClick(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "pos"

    .prologue
    .line 117
    return-void
.end method

.method public setActivityGroups()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/ZendeskModel;->getActivityStream()Lcom/zendesk/api/model/ActivityStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/ActivityStream;->getActivitiyGroups()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/zendesk/android/dashboard/NotificationsAdapter;->activityGroups:Ljava/util/List;

    .line 32
    return-void
.end method
