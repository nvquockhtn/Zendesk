.class Lcom/zendesk/android/newticket/NewTicketActivity$2;
.super Ljava/lang/Object;
.source "NewTicketActivity.java"

# interfaces
.implements Lcom/zendesk/api/model/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/newticket/NewTicketActivity;->submit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zendesk/api/model/ResponseHandler",
        "<",
        "Lcom/zendesk/api/model/ticket/Ticket;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/newticket/NewTicketActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/newticket/NewTicketActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/zendesk/android/newticket/NewTicketActivity$2;->this$0:Lcom/zendesk/android/newticket/NewTicketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity$2;->this$0:Lcom/zendesk/android/newticket/NewTicketActivity;

    new-instance v1, Lcom/zendesk/android/newticket/NewTicketActivity$2$2;

    invoke-direct {v1, p0, p1}, Lcom/zendesk/android/newticket/NewTicketActivity$2$2;-><init>(Lcom/zendesk/android/newticket/NewTicketActivity$2;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/android/newticket/NewTicketActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 393
    return-void
.end method

.method public responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ZDModelObject",
            "<",
            "Lcom/zendesk/api/model/ticket/Ticket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, responseObject:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<Lcom/zendesk/api/model/ticket/Ticket;>;"
    iget-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity$2;->this$0:Lcom/zendesk/android/newticket/NewTicketActivity;

    new-instance v1, Lcom/zendesk/android/newticket/NewTicketActivity$2$1;

    invoke-direct {v1, p0}, Lcom/zendesk/android/newticket/NewTicketActivity$2$1;-><init>(Lcom/zendesk/android/newticket/NewTicketActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/android/newticket/NewTicketActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 378
    return-void
.end method
