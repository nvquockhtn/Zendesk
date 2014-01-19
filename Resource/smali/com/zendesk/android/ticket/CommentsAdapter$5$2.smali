.class Lcom/zendesk/android/ticket/CommentsAdapter$5$2;
.super Ljava/lang/Object;
.source "CommentsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/CommentsAdapter$5;->responseFailed(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zendesk/android/ticket/CommentsAdapter$5;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/CommentsAdapter$5;)V
    .locals 0
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/zendesk/android/ticket/CommentsAdapter$5$2;->this$1:Lcom/zendesk/android/ticket/CommentsAdapter$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 485
    iget-object v1, p0, Lcom/zendesk/android/ticket/CommentsAdapter$5$2;->this$1:Lcom/zendesk/android/ticket/CommentsAdapter$5;

    iget-object v1, v1, Lcom/zendesk/android/ticket/CommentsAdapter$5;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->ticketActivity:Lcom/zendesk/android/ticket/TicketActivity;
    invoke-static {v1}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$000(Lcom/zendesk/android/ticket/CommentsAdapter;)Lcom/zendesk/android/ticket/TicketActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/TicketActivity;->hideLoading()V

    .line 487
    sget v1, Lcom/zendesk/android/R$string;->connection_error_title:I

    iget-object v2, p0, Lcom/zendesk/android/ticket/CommentsAdapter$5$2;->this$1:Lcom/zendesk/android/ticket/CommentsAdapter$5;

    iget-object v2, v2, Lcom/zendesk/android/ticket/CommentsAdapter$5;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->ticketActivity:Lcom/zendesk/android/ticket/TicketActivity;
    invoke-static {v2}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$000(Lcom/zendesk/android/ticket/CommentsAdapter;)Lcom/zendesk/android/ticket/TicketActivity;

    move-result-object v2

    sget v3, Lcom/zendesk/android/R$string;->attachment_download_error:I

    invoke-virtual {v2, v3}, Lcom/zendesk/android/ticket/TicketActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v1, v2, v3}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 489
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    iget-object v1, p0, Lcom/zendesk/android/ticket/CommentsAdapter$5$2;->this$1:Lcom/zendesk/android/ticket/CommentsAdapter$5;

    iget-object v1, v1, Lcom/zendesk/android/ticket/CommentsAdapter$5;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->ticketActivity:Lcom/zendesk/android/ticket/TicketActivity;
    invoke-static {v1}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$000(Lcom/zendesk/android/ticket/CommentsAdapter;)Lcom/zendesk/android/ticket/TicketActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/TicketActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/zendesk/android/ui/ZDAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 491
    return-void
.end method
