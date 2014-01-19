.class Lcom/zendesk/android/ticket/TicketPropertiesFragment$1;
.super Ljava/lang/Object;
.source "TicketPropertiesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/TicketPropertiesFragment;->setRequesterRow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/TicketPropertiesFragment;

.field final synthetic val$userId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/TicketPropertiesFragment;Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$1;->this$0:Lcom/zendesk/android/ticket/TicketPropertiesFragment;

    iput-object p2, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$1;->val$userId:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 360
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$1;->this$0:Lcom/zendesk/android/ticket/TicketPropertiesFragment;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/zendesk/android/user/UserProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "userId"

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$1;->val$userId:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 362
    const-string v1, "ticketId"

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$1;->this$0:Lcom/zendesk/android/ticket/TicketPropertiesFragment;

    #getter for: Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v2}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->access$000(Lcom/zendesk/android/ticket/TicketPropertiesFragment;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 363
    const-string v2, "userChangeable"

    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$1;->this$0:Lcom/zendesk/android/ticket/TicketPropertiesFragment;

    #getter for: Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v1}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->access$000(Lcom/zendesk/android/ticket/TicketPropertiesFragment;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getStatus()Lcom/zendesk/api/model/account/Status;

    move-result-object v1

    sget-object v3, Lcom/zendesk/api/model/account/Status;->CLOSED:Lcom/zendesk/api/model/account/Status;

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 366
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$1;->this$0:Lcom/zendesk/android/ticket/TicketPropertiesFragment;

    const/16 v2, 0x7d7

    invoke-virtual {v1, v0, v2}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 367
    return-void

    .line 363
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
