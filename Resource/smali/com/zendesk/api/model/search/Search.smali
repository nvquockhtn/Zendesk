.class public Lcom/zendesk/api/model/search/Search;
.super Lcom/zendesk/api/model/ZDPagingModelObject;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDPagingModelObject",
        "<",
        "Lcom/zendesk/api/model/search/SearchResult;",
        "Lcom/zendesk/api/model/search/Search;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_RESULTS:Ljava/lang/String; = "results"
    .annotation runtime Lcom/zendesk/api/APIKey;
        listOf = Lcom/zendesk/api/model/search/SearchResult;
        path = "results"
        type = Ljava/util/List;
    .end annotation
.end field


# instance fields
.field private baseModel:Lcom/zendesk/api/model/BaseModel;

.field private lastResultCount:I

.field protected query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;)V
    .locals 0
    .parameter "baseModel"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDPagingModelObject;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/zendesk/api/model/search/Search;->baseModel:Lcom/zendesk/api/model/BaseModel;

    .line 39
    return-void
.end method


# virtual methods
.method public findForumEntry(Ljava/lang/Long;)Lcom/zendesk/api/model/forums/Topic;
    .locals 4
    .parameter "id"

    .prologue
    .line 93
    iget-object v2, p0, Lcom/zendesk/api/model/search/Search;->listItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/search/SearchResult;

    .line 94
    .local v1, sr:Lcom/zendesk/api/model/search/SearchResult;
    invoke-virtual {v1}, Lcom/zendesk/api/model/search/SearchResult;->getType()Lcom/zendesk/api/model/search/SearchResultType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/search/SearchResultType;->TOPIC:Lcom/zendesk/api/model/search/SearchResultType;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/zendesk/api/model/search/SearchResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/forums/Topic;

    invoke-virtual {v2}, Lcom/zendesk/api/model/forums/Topic;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {v1}, Lcom/zendesk/api/model/search/SearchResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/forums/Topic;

    .line 99
    .end local v1           #sr:Lcom/zendesk/api/model/search/SearchResult;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 3

    .prologue
    .line 57
    new-instance v0, Lcom/zendesk/api/requester/SearchRequester;

    invoke-virtual {p0}, Lcom/zendesk/api/model/search/Search;->getPendingPage()I

    move-result v1

    iget-object v2, p0, Lcom/zendesk/api/model/search/Search;->query:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/zendesk/api/requester/SearchRequester;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public getReportedCount()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/zendesk/api/model/search/Search;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onceParsed()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/zendesk/api/model/ZDPagingModelObject;->onceParsed()V

    .line 80
    iget v0, p0, Lcom/zendesk/api/model/search/Search;->lastResultCount:I

    invoke-virtual {p0}, Lcom/zendesk/api/model/search/Search;->getItemsPerPage()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zendesk/api/model/search/Search;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/zendesk/api/model/search/Search;->getCountBeforeParsed()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zendesk/api/model/search/Search;->setMayBeMorePages(Z)V

    .line 83
    :cond_0
    return-void
.end method

.method protected parseResponse(Ljava/lang/String;)V
    .locals 7
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, json:Lorg/json/JSONObject;
    const-string v4, "results"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 66
    .local v2, results:Lorg/json/JSONArray;
    if-eqz v2, :cond_1

    .line 67
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    iput v4, p0, Lcom/zendesk/api/model/search/Search;->lastResultCount:I

    .line 68
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 70
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 71
    .local v3, sr:Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 72
    iget-object v4, p0, Lcom/zendesk/api/model/search/Search;->listItems:Ljava/util/List;

    new-instance v5, Lcom/zendesk/api/model/search/SearchResult;

    iget-object v6, p0, Lcom/zendesk/api/model/search/Search;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-direct {v5, v6, v3}, Lcom/zendesk/api/model/search/SearchResult;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v0           #i:I
    .end local v3           #sr:Lorg/json/JSONObject;
    :cond_1
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zendesk/api/model/search/Search;->query:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/zendesk/api/model/search/Search;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zendesk/api/model/search/Search;->setMayBeMorePages(Z)V

    .line 51
    iput-object p1, p0, Lcom/zendesk/api/model/search/Search;->query:Ljava/lang/String;

    .line 53
    :cond_0
    return-void
.end method
