.class Lcom/zendesk/android/ticket/TicketActivity$15;
.super Ljava/lang/Object;
.source "TicketActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/TicketActivity;->showPopoverView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/TicketActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/TicketActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/zendesk/android/ticket/TicketActivity$15;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1088
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1089
    .local v0, itemId:I
    sget v1, Lcom/zendesk/android/R$id;->ticket_menu_delete:I

    if-ne v0, v1, :cond_1

    .line 1090
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity$15;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->deleteTicket()V
    invoke-static {v1}, Lcom/zendesk/android/ticket/TicketActivity;->access$2700(Lcom/zendesk/android/ticket/TicketActivity;)V

    .line 1100
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1091
    :cond_1
    sget v1, Lcom/zendesk/android/R$id;->ticket_menu_unbookmark:I

    if-eq v0, v1, :cond_2

    sget v1, Lcom/zendesk/android/R$id;->ticket_menu_bookmark:I

    if-ne v0, v1, :cond_3

    .line 1093
    :cond_2
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity$15;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/TicketActivity;->toggleBookmark()V

    goto :goto_0

    .line 1094
    :cond_3
    sget v1, Lcom/zendesk/android/R$id;->ticket_menu_mark_as_spam:I

    if-ne v0, v1, :cond_4

    .line 1095
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity$15;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->markTicketAsSpam()V
    invoke-static {v1}, Lcom/zendesk/android/ticket/TicketActivity;->access$2800(Lcom/zendesk/android/ticket/TicketActivity;)V

    goto :goto_0

    .line 1096
    :cond_4
    sget v1, Lcom/zendesk/android/R$id;->ticket_menu_refresh:I

    if-ne v0, v1, :cond_0

    .line 1097
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity$15;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->refreshTicket()V
    invoke-static {v1}, Lcom/zendesk/android/ticket/TicketActivity;->access$2900(Lcom/zendesk/android/ticket/TicketActivity;)V

    goto :goto_0
.end method
