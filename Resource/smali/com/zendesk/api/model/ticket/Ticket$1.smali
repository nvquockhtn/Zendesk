.class Lcom/zendesk/api/model/ticket/Ticket$1;
.super Ljava/lang/Thread;
.source "Ticket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/api/model/ticket/Ticket;->commit(Lcom/zendesk/api/model/ResponseHandler;Lcom/zendesk/api/http/ProgressMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/api/model/ticket/Ticket;

.field final synthetic val$handler:Lcom/zendesk/api/model/ResponseHandler;

.field final synthetic val$progressMonitor:Lcom/zendesk/api/http/ProgressMonitor;


# direct methods
.method constructor <init>(Lcom/zendesk/api/model/ticket/Ticket;Lcom/zendesk/api/http/ProgressMonitor;Lcom/zendesk/api/model/ResponseHandler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 883
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/Ticket$1;->this$0:Lcom/zendesk/api/model/ticket/Ticket;

    iput-object p2, p0, Lcom/zendesk/api/model/ticket/Ticket$1;->val$progressMonitor:Lcom/zendesk/api/http/ProgressMonitor;

    iput-object p3, p0, Lcom/zendesk/api/model/ticket/Ticket$1;->val$handler:Lcom/zendesk/api/model/ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 886
    :try_start_0
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket$1;->this$0:Lcom/zendesk/api/model/ticket/Ticket;

    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket$1;->val$progressMonitor:Lcom/zendesk/api/http/ProgressMonitor;

    invoke-virtual {v1, v2}, Lcom/zendesk/api/model/ticket/Ticket;->commit(Lcom/zendesk/api/http/ProgressMonitor;)V

    .line 887
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket$1;->val$handler:Lcom/zendesk/api/model/ResponseHandler;

    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket$1;->this$0:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-interface {v1, v2}, Lcom/zendesk/api/model/ResponseHandler;->responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket$1;->this$0:Lcom/zendesk/api/model/ticket/Ticket;

    #setter for: Lcom/zendesk/api/model/ticket/Ticket;->ticketUpdateHandler:Lcom/zendesk/api/model/ResponseHandler;
    invoke-static {v1, v3}, Lcom/zendesk/api/model/ticket/Ticket;->access$202(Lcom/zendesk/api/model/ticket/Ticket;Lcom/zendesk/api/model/ResponseHandler;)Lcom/zendesk/api/model/ResponseHandler;

    .line 893
    :goto_0
    return-void

    .line 888
    :catch_0
    move-exception v0

    .line 889
    .local v0, e:Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket$1;->val$handler:Lcom/zendesk/api/model/ResponseHandler;

    invoke-interface {v1, v0}, Lcom/zendesk/api/model/ResponseHandler;->responseFailed(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 891
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket$1;->this$0:Lcom/zendesk/api/model/ticket/Ticket;

    #setter for: Lcom/zendesk/api/model/ticket/Ticket;->ticketUpdateHandler:Lcom/zendesk/api/model/ResponseHandler;
    invoke-static {v1, v3}, Lcom/zendesk/api/model/ticket/Ticket;->access$202(Lcom/zendesk/api/model/ticket/Ticket;Lcom/zendesk/api/model/ResponseHandler;)Lcom/zendesk/api/model/ResponseHandler;

    goto :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket$1;->this$0:Lcom/zendesk/api/model/ticket/Ticket;

    #setter for: Lcom/zendesk/api/model/ticket/Ticket;->ticketUpdateHandler:Lcom/zendesk/api/model/ResponseHandler;
    invoke-static {v2, v3}, Lcom/zendesk/api/model/ticket/Ticket;->access$202(Lcom/zendesk/api/model/ticket/Ticket;Lcom/zendesk/api/model/ResponseHandler;)Lcom/zendesk/api/model/ResponseHandler;

    throw v1
.end method
