.class Lcom/zendesk/android/newticket/NewTicketActivity$1;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "NewTicketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/newticket/NewTicketActivity;->applyMacro(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/newticket/NewTicketActivity;

.field final synthetic val$mr:Lcom/zendesk/api/model/macros/MacroResult;


# direct methods
.method constructor <init>(Lcom/zendesk/android/newticket/NewTicketActivity;Lcom/zendesk/api/model/macros/MacroResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/zendesk/android/newticket/NewTicketActivity$1;->this$0:Lcom/zendesk/android/newticket/NewTicketActivity;

    iput-object p2, p0, Lcom/zendesk/android/newticket/NewTicketActivity$1;->val$mr:Lcom/zendesk/api/model/macros/MacroResult;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 333
    const-string v0, "NewTicketActivity"

    const-string v1, "Error applying macro"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 335
    iget-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity$1;->this$0:Lcom/zendesk/android/newticket/NewTicketActivity;

    #calls: Lcom/zendesk/android/newticket/NewTicketActivity;->toggleLoading()V
    invoke-static {v0}, Lcom/zendesk/android/newticket/NewTicketActivity;->access$000(Lcom/zendesk/android/newticket/NewTicketActivity;)V

    .line 336
    return-void
.end method

.method protected responseSuccess()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity$1;->this$0:Lcom/zendesk/android/newticket/NewTicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/newticket/NewTicketActivity;->loginSuccess()V

    .line 328
    iget-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity$1;->this$0:Lcom/zendesk/android/newticket/NewTicketActivity;

    #calls: Lcom/zendesk/android/newticket/NewTicketActivity;->toggleLoading()V
    invoke-static {v0}, Lcom/zendesk/android/newticket/NewTicketActivity;->access$000(Lcom/zendesk/android/newticket/NewTicketActivity;)V

    .line 329
    return-void
.end method

.method protected run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity$1;->val$mr:Lcom/zendesk/api/model/macros/MacroResult;

    invoke-virtual {v0}, Lcom/zendesk/api/model/macros/MacroResult;->refresh()V

    .line 341
    return-void
.end method
