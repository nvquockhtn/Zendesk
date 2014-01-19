.class Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$5;
.super Ljava/lang/Object;
.source "ProblemTicketViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->showLoading()V
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
    .line 169
    iput-object p1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$5;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$5;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->access$600(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$5;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->access$600(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$5;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->access$600(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 175
    :cond_0
    return-void
.end method
