.class Lcom/zendesk/api/model/views/Bookmarks$1;
.super Ljava/lang/Object;
.source "Bookmarks.java"

# interfaces
.implements Lcom/zendesk/api/model/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/api/model/views/Bookmarks;->createBookmark(Lcom/zendesk/api/model/ticket/Ticket;Lcom/zendesk/api/model/ResponseHandler;)V
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
        "Lcom/zendesk/api/model/views/Bookmarks;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/api/model/views/Bookmarks;

.field final synthetic val$handler:Lcom/zendesk/api/model/ResponseHandler;


# direct methods
.method constructor <init>(Lcom/zendesk/api/model/views/Bookmarks;Lcom/zendesk/api/model/ResponseHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/zendesk/api/model/views/Bookmarks$1;->this$0:Lcom/zendesk/api/model/views/Bookmarks;

    iput-object p2, p0, Lcom/zendesk/api/model/views/Bookmarks$1;->val$handler:Lcom/zendesk/api/model/ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/zendesk/api/model/views/Bookmarks$1;->val$handler:Lcom/zendesk/api/model/ResponseHandler;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/zendesk/api/model/views/Bookmarks$1;->val$handler:Lcom/zendesk/api/model/ResponseHandler;

    invoke-interface {v0, p1}, Lcom/zendesk/api/model/ResponseHandler;->responseFailed(Ljava/lang/Throwable;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/zendesk/api/model/views/Bookmarks$1;->this$0:Lcom/zendesk/api/model/views/Bookmarks;

    iget-object v1, p0, Lcom/zendesk/api/model/views/Bookmarks$1;->this$0:Lcom/zendesk/api/model/views/Bookmarks;

    #getter for: Lcom/zendesk/api/model/views/Bookmarks;->quietRefreshHandler:Lcom/zendesk/api/model/ResponseHandler;
    invoke-static {v1}, Lcom/zendesk/api/model/views/Bookmarks;->access$000(Lcom/zendesk/api/model/views/Bookmarks;)Lcom/zendesk/api/model/ResponseHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/views/Bookmarks;->refresh(Lcom/zendesk/api/model/ResponseHandler;)V

    .line 106
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
            "Lcom/zendesk/api/model/views/Bookmarks;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, forObject:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<Lcom/zendesk/api/model/views/Bookmarks;>;"
    iget-object v0, p0, Lcom/zendesk/api/model/views/Bookmarks$1;->val$handler:Lcom/zendesk/api/model/ResponseHandler;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/zendesk/api/model/views/Bookmarks$1;->val$handler:Lcom/zendesk/api/model/ResponseHandler;

    iget-object v1, p0, Lcom/zendesk/api/model/views/Bookmarks$1;->this$0:Lcom/zendesk/api/model/views/Bookmarks;

    invoke-interface {v0, v1}, Lcom/zendesk/api/model/ResponseHandler;->responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/zendesk/api/model/views/Bookmarks$1;->this$0:Lcom/zendesk/api/model/views/Bookmarks;

    iget-object v1, p0, Lcom/zendesk/api/model/views/Bookmarks$1;->this$0:Lcom/zendesk/api/model/views/Bookmarks;

    #getter for: Lcom/zendesk/api/model/views/Bookmarks;->quietRefreshHandler:Lcom/zendesk/api/model/ResponseHandler;
    invoke-static {v1}, Lcom/zendesk/api/model/views/Bookmarks;->access$000(Lcom/zendesk/api/model/views/Bookmarks;)Lcom/zendesk/api/model/ResponseHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/views/Bookmarks;->refresh(Lcom/zendesk/api/model/ResponseHandler;)V

    .line 98
    return-void
.end method
