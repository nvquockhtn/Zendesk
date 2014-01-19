.class Lcom/zendesk/android/newticket/NewTicketActivity$3;
.super Ljava/lang/Object;
.source "NewTicketActivity.java"

# interfaces
.implements Lcom/zendesk/api/http/ProgressMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/newticket/NewTicketActivity;->setupForProgressMonitor(I)Lcom/zendesk/api/http/ProgressMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/newticket/NewTicketActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/newticket/NewTicketActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/zendesk/android/newticket/NewTicketActivity$3;->this$0:Lcom/zendesk/android/newticket/NewTicketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity$3;->this$0:Lcom/zendesk/android/newticket/NewTicketActivity;

    iget-object v0, v0, Lcom/zendesk/android/newticket/NewTicketActivity;->progressBarProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 420
    return-void
.end method

.method public setProgressType(Lcom/zendesk/api/http/ProgressMonitor$ProgressType;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity$3;->this$0:Lcom/zendesk/android/newticket/NewTicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/newticket/NewTicketActivity;->setupForIndeterminateProgress()V

    .line 424
    return-void
.end method
