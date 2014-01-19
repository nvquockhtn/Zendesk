.class Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$3;
.super Ljava/lang/Object;
.source "ProblemTicketViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->loadView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$3;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$3;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;

    const-class v2, Lcom/zendesk/android/ticket/TicketActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ticketId"

    iget-object v2, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$3;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->problemTicketId:Ljava/lang/Long;
    invoke-static {v2}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->access$100(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$3;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 138
    return-void
.end method
