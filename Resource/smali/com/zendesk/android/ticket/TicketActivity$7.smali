.class Lcom/zendesk/android/ticket/TicketActivity$7;
.super Ljava/lang/Thread;
.source "TicketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/TicketActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/TicketActivity;

.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$requestCode:I

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/TicketActivity;IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/zendesk/android/ticket/TicketActivity$7;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    iput p2, p0, Lcom/zendesk/android/ticket/TicketActivity$7;->val$requestCode:I

    iput p3, p0, Lcom/zendesk/android/ticket/TicketActivity$7;->val$resultCode:I

    iput-object p4, p0, Lcom/zendesk/android/ticket/TicketActivity$7;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 428
    iget v0, p0, Lcom/zendesk/android/ticket/TicketActivity$7;->val$requestCode:I

    sparse-switch v0, :sswitch_data_0

    .line 441
    :goto_0
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$7;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->checkEditStatus()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$600(Lcom/zendesk/android/ticket/TicketActivity;)V

    .line 442
    return-void

    .line 430
    :sswitch_0
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$7;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    iget v1, p0, Lcom/zendesk/android/ticket/TicketActivity$7;->val$resultCode:I

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketActivity$7;->val$data:Landroid/content/Intent;

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->applyMacro(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/zendesk/android/ticket/TicketActivity;->access$1200(Lcom/zendesk/android/ticket/TicketActivity;ILandroid/content/Intent;)V

    goto :goto_0

    .line 434
    :sswitch_1
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$7;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    iget v1, p0, Lcom/zendesk/android/ticket/TicketActivity$7;->val$resultCode:I

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->createCommentReturned(I)V
    invoke-static {v0, v1}, Lcom/zendesk/android/ticket/TicketActivity;->access$1300(Lcom/zendesk/android/ticket/TicketActivity;I)V

    goto :goto_0

    .line 428
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d3 -> :sswitch_1
        0x7d8 -> :sswitch_0
    .end sparse-switch
.end method
