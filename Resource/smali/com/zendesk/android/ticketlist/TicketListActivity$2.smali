.class Lcom/zendesk/android/ticketlist/TicketListActivity$2;
.super Ljava/lang/Object;
.source "TicketListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/ticketlist/TicketListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticketlist/TicketListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$2;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$2;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    #getter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$300(Lcom/zendesk/android/ticketlist/TicketListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$2;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    #getter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$300(Lcom/zendesk/android/ticketlist/TicketListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$2;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    #getter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$300(Lcom/zendesk/android/ticketlist/TicketListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 225
    :cond_0
    return-void
.end method
