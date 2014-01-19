.class public abstract Lcom/zendesk/api/model/ZDPagingModelObject;
.super Lcom/zendesk/api/model/ZDModelObject;
.source "ZDPagingModelObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/zendesk/api/model/ZDModelObject",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_ITEMS_PER_PAGE:I = 0xf

.field protected static final FIRST_PAGE:I = 0x1


# instance fields
.field private countBeforeParsed:I

.field private currentPage:I

.field private itemsPerPage:I

.field protected listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mayBeMorePages:Z

.field private pendingPage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, this:Lcom/zendesk/api/model/ZDPagingModelObject;,"Lcom/zendesk/api/model/ZDPagingModelObject<TT;TE;>;"
    const/4 v0, 0x1

    .line 19
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    .line 24
    iput v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->currentPage:I

    .line 25
    iput v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->pendingPage:I

    .line 26
    const/16 v0, 0xf

    iput v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->itemsPerPage:I

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->listItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected beforeParsed()V
    .locals 2

    .prologue
    .line 106
    .local p0, this:Lcom/zendesk/api/model/ZDPagingModelObject;,"Lcom/zendesk/api/model/ZDPagingModelObject<TT;TE;>;"
    iget v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->pendingPage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    :cond_0
    iget v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->pendingPage:I

    iput v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->currentPage:I

    .line 110
    iget-object v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->countBeforeParsed:I

    .line 111
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 247
    .local p0, this:Lcom/zendesk/api/model/ZDPagingModelObject;,"Lcom/zendesk/api/model/ZDPagingModelObject<TT;TE;>;"
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->currentPage:I

    .line 248
    const/4 v0, 0x1

    iput v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->pendingPage:I

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->mayBeMorePages:Z

    .line 250
    iget-object v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getCountBeforeParsed()I
    .locals 1

    .prologue
    .line 204
    .local p0, this:Lcom/zendesk/api/model/ZDPagingModelObject;,"Lcom/zendesk/api/model/ZDPagingModelObject<TT;TE;>;"
    iget v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->countBeforeParsed:I

    return v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 154
    .local p0, this:Lcom/zendesk/api/model/ZDPagingModelObject;,"Lcom/zendesk/api/model/ZDPagingModelObject<TT;TE;>;"
    iget v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->currentPage:I

    return v0
.end method

.method public getItemsPerPage()I
    .locals 1

    .prologue
    .line 181
    .local p0, this:Lcom/zendesk/api/model/ZDPagingModelObject;,"Lcom/zendesk/api/model/ZDPagingModelObject<TT;TE;>;"
    iget v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->itemsPerPage:I

    return v0
.end method

.method public declared-synchronized getListItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, this:Lcom/zendesk/api/model/ZDPagingModelObject;,"Lcom/zendesk/api/model/ZDPagingModelObject<TT;TE;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->listItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPendingPage()I
    .locals 1

    .prologue
    .line 163
    .local p0, this:Lcom/zendesk/api/model/ZDPagingModelObject;,"Lcom/zendesk/api/model/ZDPagingModelObject<TT;TE;>;"
    iget v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->pendingPage:I

    return v0
.end method

.method public abstract getReportedCount()I
.end method

.method public declared-synchronized getSourceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, this:Lcom/zendesk/api/model/ZDPagingModelObject;,"Lcom/zendesk/api/model/ZDPagingModelObject<TT;TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->listItems:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadingInProgress()Z
    .locals 1

    .prologue
    .line 98
    .local p0, this:Lcom/zendesk/api/model/ZDPagingModelObject;,"Lcom/zendesk/api/model/ZDPagingModelObject<TT;TE;>;"
    const-string v0, "refresh-req"

    invoke-virtual {p0, v0}, Lcom/zendesk/api/model/ZDPagingModelObject;->requestInProgress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public mayBeMorePages()Z
    .locals 1

    .prologue
    .line 191
    .local p0, this:Lcom/zendesk/api/model/ZDPagingModelObject;,"Lcom/zendesk/api/model/ZDPagingModelObject<TT;TE;>;"
    iget-boolean v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->mayBeMorePages:Z

    return v0
.end method

.method public declared-synchronized nextPage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    .line 60
    .local p0, this:Lcom/zendesk/api/model/ZDPagingModelObject;,"Lcom/zendesk/api/model/ZDPagingModelObject<TT;TE;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->mayBeMorePages:Z

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t request the next page if there are no more results available..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 63
    :cond_0
    :try_start_1
    const-string v0, "refresh-req"

    invoke-virtual {p0, v0}, Lcom/zendesk/api/model/ZDPagingModelObject;->requestInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Next page requested while loading is in progress, this exception is thrown to provide a predicatable response when paging"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    iget v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->pendingPage:I

    .line 68
    const-string v0, "refresh-req"

    new-instance v1, Lcom/zendesk/api/model/ZDModelObject$DummyResponseHandler;

    invoke-direct {v1, p0}, Lcom/zendesk/api/model/ZDModelObject$DummyResponseHandler;-><init>(Lcom/zendesk/api/model/ZDModelObject;)V

    invoke-virtual {p0, v0, v1}, Lcom/zendesk/api/model/ZDPagingModelObject;->addResponseHandler(Ljava/lang/String;Lcom/zendesk/api/model/ResponseHandler;)V

    .line 69
    invoke-super {p0}, Lcom/zendesk/api/model/ZDModelObject;->refresh()V

    .line 70
    const-string v0, "refresh-req"

    invoke-virtual {p0, v0}, Lcom/zendesk/api/model/ZDPagingModelObject;->clearHandlersForRequest(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized nextPage(Lcom/zendesk/api/model/ResponseHandler;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ResponseHandler",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, this:Lcom/zendesk/api/model/ZDPagingModelObject;,"Lcom/zendesk/api/model/ZDPagingModelObject<TT;TE;>;"
    .local p1, handler:Lcom/zendesk/api/model/ResponseHandler;,"Lcom/zendesk/api/model/ResponseHandler<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->mayBeMorePages:Z

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t request the next page if there are no more results available..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 84
    :cond_0
    :try_start_1
    const-string v0, "refresh-req"

    invoke-virtual {p0, v0}, Lcom/zendesk/api/model/ZDPagingModelObject;->requestInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Next page requested while loading is in progress, this exception is thrown to provide a predicatable response when paging"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    iget v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->pendingPage:I

    .line 89
    invoke-super {p0, p1}, Lcom/zendesk/api/model/ZDModelObject;->refresh(Lcom/zendesk/api/model/ResponseHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    monitor-exit p0

    return-void
.end method

.method protected onceParsed()V
    .locals 3

    .prologue
    .local p0, this:Lcom/zendesk/api/model/ZDPagingModelObject;,"Lcom/zendesk/api/model/ZDPagingModelObject<TT;TE;>;"
    const/4 v2, 0x0

    .line 126
    :try_start_0
    invoke-super {p0}, Lcom/zendesk/api/model/ZDModelObject;->onceParsed()V
    :try_end_0
    .catch Lcom/zendesk/api/http/RequestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    invoke-virtual {p0}, Lcom/zendesk/api/model/ZDPagingModelObject;->getReportedCount()I

    move-result v0

    iget-object v1, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->listItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 131
    iput-boolean v2, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->mayBeMorePages:Z

    .line 139
    :goto_1
    return-void

    .line 132
    :cond_0
    iget v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->countBeforeParsed:I

    iget-object v1, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->listItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 133
    iput-boolean v2, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->mayBeMorePages:Z

    goto :goto_1

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->itemsPerPage:I

    if-ge v0, v1, :cond_2

    .line 135
    iput-boolean v2, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->mayBeMorePages:Z

    goto :goto_1

    .line 137
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->mayBeMorePages:Z

    goto :goto_1

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected abstract parseResponse(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public declared-synchronized refresh()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    .line 38
    .local p0, this:Lcom/zendesk/api/model/ZDPagingModelObject;,"Lcom/zendesk/api/model/ZDPagingModelObject<TT;TE;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/zendesk/api/model/ZDPagingModelObject;->clear()V

    .line 39
    invoke-super {p0}, Lcom/zendesk/api/model/ZDModelObject;->refresh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized refresh(Lcom/zendesk/api/model/ResponseHandler;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ResponseHandler",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/zendesk/api/model/ZDPagingModelObject;,"Lcom/zendesk/api/model/ZDPagingModelObject<TT;TE;>;"
    .local p1, handler:Lcom/zendesk/api/model/ResponseHandler;,"Lcom/zendesk/api/model/ResponseHandler<TE;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/zendesk/api/model/ZDPagingModelObject;->clear()V

    .line 49
    invoke-super {p0, p1}, Lcom/zendesk/api/model/ZDModelObject;->refresh(Lcom/zendesk/api/model/ResponseHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListItem(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, this:Lcom/zendesk/api/model/ZDPagingModelObject;,"Lcom/zendesk/api/model/ZDPagingModelObject<TT;TE;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListItems(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, this:Lcom/zendesk/api/model/ZDPagingModelObject;,"Lcom/zendesk/api/model/ZDPagingModelObject<TT;TE;>;"
    .local p1, item:Ljava/util/List;,"Ljava/util/List<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCurrentPage(I)V
    .locals 0
    .parameter "currentPage"

    .prologue
    .line 172
    .local p0, this:Lcom/zendesk/api/model/ZDPagingModelObject;,"Lcom/zendesk/api/model/ZDPagingModelObject<TT;TE;>;"
    iput p1, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->currentPage:I

    .line 173
    return-void
.end method

.method public setMayBeMorePages(Z)V
    .locals 0
    .parameter "mayBeMorePages"

    .prologue
    .line 200
    .local p0, this:Lcom/zendesk/api/model/ZDPagingModelObject;,"Lcom/zendesk/api/model/ZDPagingModelObject<TT;TE;>;"
    iput-boolean p1, p0, Lcom/zendesk/api/model/ZDPagingModelObject;->mayBeMorePages:Z

    .line 201
    return-void
.end method
