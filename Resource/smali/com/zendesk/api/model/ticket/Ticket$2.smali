.class Lcom/zendesk/api/model/ticket/Ticket$2;
.super Ljava/lang/Object;
.source "Ticket.java"

# interfaces
.implements Lcom/zendesk/api/model/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/api/model/ticket/Ticket;->delete(Lcom/zendesk/api/model/ResponseHandler;)V
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
.field final synthetic this$0:Lcom/zendesk/api/model/ticket/Ticket;

.field final synthetic val$handler:Lcom/zendesk/api/model/ResponseHandler;


# direct methods
.method constructor <init>(Lcom/zendesk/api/model/ticket/Ticket;Lcom/zendesk/api/model/ResponseHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/Ticket$2;->this$0:Lcom/zendesk/api/model/ticket/Ticket;

    iput-object p2, p0, Lcom/zendesk/api/model/ticket/Ticket$2;->val$handler:Lcom/zendesk/api/model/ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseFailed(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket$2;->val$handler:Lcom/zendesk/api/model/ResponseHandler;

    invoke-interface {v0, p1}, Lcom/zendesk/api/model/ResponseHandler;->responseFailed(Ljava/lang/Throwable;)V

    .line 1219
    return-void
.end method

.method public responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
    .locals 1
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
    .line 1212
    .local p1, forObject:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<Lcom/zendesk/api/model/ticket/Ticket;>;"
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket$2;->this$0:Lcom/zendesk/api/model/ticket/Ticket;

    #calls: Lcom/zendesk/api/model/ticket/Ticket;->deleteLocalTicketRefs()V
    invoke-static {v0}, Lcom/zendesk/api/model/ticket/Ticket;->access$300(Lcom/zendesk/api/model/ticket/Ticket;)V

    .line 1213
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket$2;->val$handler:Lcom/zendesk/api/model/ResponseHandler;

    invoke-interface {v0, p1}, Lcom/zendesk/api/model/ResponseHandler;->responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V

    .line 1214
    return-void
.end method
