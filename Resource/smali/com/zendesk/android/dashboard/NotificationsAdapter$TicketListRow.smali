.class Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;
.super Ljava/lang/Object;
.source "NotificationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/dashboard/NotificationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TicketListRow"
.end annotation


# instance fields
.field notificationDate:Landroid/widget/TextView;

.field notificationDetailArea:Landroid/widget/LinearLayout;

.field notificationSubject:Landroid/widget/TextView;

.field notificationTicketId:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/zendesk/android/dashboard/NotificationsAdapter;


# direct methods
.method public constructor <init>(Lcom/zendesk/android/dashboard/NotificationsAdapter;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;->this$0:Lcom/zendesk/android/dashboard/NotificationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    sget v0, Lcom/zendesk/android/R$id;->notification_ticket_id:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;->notificationTicketId:Landroid/widget/TextView;

    .line 108
    sget v0, Lcom/zendesk/android/R$id;->notification_date:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;->notificationDate:Landroid/widget/TextView;

    .line 109
    sget v0, Lcom/zendesk/android/R$id;->notification_subject:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;->notificationSubject:Landroid/widget/TextView;

    .line 110
    sget v0, Lcom/zendesk/android/R$id;->notification_detail_area:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zendesk/android/dashboard/NotificationsAdapter$TicketListRow;->notificationDetailArea:Landroid/widget/LinearLayout;

    .line 111
    return-void
.end method
