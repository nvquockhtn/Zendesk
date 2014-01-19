.class public Lcom/zendesk/api/model/views/Views;
.super Lcom/zendesk/api/model/ZDPagingModelObject;
.source "Views.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDPagingModelObject",
        "<",
        "Lcom/zendesk/api/model/views/View;",
        "Lcom/zendesk/api/model/views/Views;",
        ">;"
    }
.end annotation


# static fields
.field static final KEY_COUNT:Ljava/lang/String; = "count"

.field static final KEY_VIEWS:Ljava/lang/String; = "views"
    .annotation runtime Lcom/zendesk/api/APIKey;
        listOf = Lcom/zendesk/api/model/views/View;
        path = "views"
        type = Ljava/util/List;
    .end annotation
.end field


# instance fields
.field protected baseModel:Lcom/zendesk/api/model/BaseModel;

.field private count:Ljava/lang/Integer;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "count"
    .end annotation
.end field

.field protected final viewsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/zendesk/api/model/views/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;)V
    .locals 1
    .parameter "baseModel"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDPagingModelObject;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/views/Views;->viewsMap:Ljava/util/Map;

    .line 42
    iput-object p1, p0, Lcom/zendesk/api/model/views/Views;->baseModel:Lcom/zendesk/api/model/BaseModel;

    .line 43
    return-void
.end method


# virtual methods
.method protected beforeParsed()V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/zendesk/api/model/views/Views;->getPendingPage()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/zendesk/api/model/views/Views;->viewsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 80
    :cond_0
    invoke-super {p0}, Lcom/zendesk/api/model/ZDPagingModelObject;->beforeParsed()V

    .line 81
    return-void
.end method

.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/zendesk/api/requester/ViewsRequester;

    invoke-direct {v0}, Lcom/zendesk/api/requester/ViewsRequester;-><init>()V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/zendesk/api/model/views/Views;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getReportedCount()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/zendesk/api/model/views/Views;->count:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/zendesk/api/model/views/Views;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(Ljava/lang/Long;)Lcom/zendesk/api/model/views/View;
    .locals 3
    .parameter "id"

    .prologue
    .line 90
    iget-object v2, p0, Lcom/zendesk/api/model/views/Views;->listItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/views/View;

    .line 91
    .local v1, v:Lcom/zendesk/api/model/views/View;
    invoke-virtual {v1}, Lcom/zendesk/api/model/views/View;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    .end local v1           #v:Lcom/zendesk/api/model/views/View;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
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
    .line 54
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, json:Lorg/json/JSONObject;
    const-string v5, "views"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 57
    .local v3, viewsArray:Lorg/json/JSONArray;
    const-string v5, "count"

    invoke-static {v1, v5}, Lcom/zendesk/api/model/ZDModelObject;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/api/model/views/Views;->count:Ljava/lang/Integer;

    .line 59
    if-eqz v3, :cond_1

    .line 60
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 62
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 63
    .local v4, vo:Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 64
    new-instance v2, Lcom/zendesk/api/model/views/View;

    iget-object v5, p0, Lcom/zendesk/api/model/views/Views;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-direct {v2, v5, v4}, Lcom/zendesk/api/model/views/View;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)V

    .line 65
    .local v2, v:Lcom/zendesk/api/model/views/View;
    iget-object v5, p0, Lcom/zendesk/api/model/views/Views;->listItems:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v5, p0, Lcom/zendesk/api/model/views/Views;->viewsMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/zendesk/api/model/views/View;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .end local v2           #v:Lcom/zendesk/api/model/views/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v0           #i:I
    .end local v4           #vo:Lorg/json/JSONObject;
    :cond_1
    iget-object v5, p0, Lcom/zendesk/api/model/views/Views;->count:Ljava/lang/Integer;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/zendesk/api/model/views/Views;->count:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/zendesk/api/model/views/Views;->listItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 71
    :cond_2
    iget-object v5, p0, Lcom/zendesk/api/model/views/Views;->listItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/api/model/views/Views;->count:Ljava/lang/Integer;

    .line 73
    :cond_3
    return-void
.end method
