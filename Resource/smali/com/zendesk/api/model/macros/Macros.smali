.class public Lcom/zendesk/api/model/macros/Macros;
.super Lcom/zendesk/api/model/ZDModelObject;
.source "Macros.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDModelObject",
        "<",
        "Lcom/zendesk/api/model/macros/Macros;",
        ">;"
    }
.end annotation


# static fields
.field static final KEY_MACROS:Ljava/lang/String; = "macros"


# instance fields
.field private currentPage:I

.field private groupsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/zendesk/api/model/macros/Macro;",
            ">;"
        }
    .end annotation
.end field

.field private groupsByNameTemp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/zendesk/api/model/macros/Macro;",
            ">;"
        }
    .end annotation
.end field

.field hasNextPage:Z

.field private macros:Ljava/util/List;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "macros"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/macros/Macro;",
            ">;"
        }
    .end annotation
.end field

.field private macrosTemp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/macros/Macro;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/macros/Macros;->macros:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/macros/Macros;->macrosTemp:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/macros/Macros;->groupsByName:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/macros/Macros;->groupsByNameTemp:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method createOrFindParent(Ljava/lang/String;I)Lcom/zendesk/api/model/macros/Macro;
    .locals 4
    .parameter "title"
    .parameter "position"

    .prologue
    .line 140
    if-eqz p1, :cond_0

    const-string v2, "::"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 160
    :cond_1
    :goto_0
    return-object v0

    .line 141
    :cond_2
    const/4 v2, 0x0

    const-string v3, "::"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, parentName:Ljava/lang/String;
    iget-object v2, p0, Lcom/zendesk/api/model/macros/Macros;->groupsByNameTemp:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/macros/Macro;

    .line 144
    .local v0, m:Lcom/zendesk/api/model/macros/Macro;
    if-nez v0, :cond_1

    .line 148
    new-instance v0, Lcom/zendesk/api/model/macros/Macro;

    .end local v0           #m:Lcom/zendesk/api/model/macros/Macro;
    invoke-direct {v0, v1}, Lcom/zendesk/api/model/macros/Macro;-><init>(Ljava/lang/String;)V

    .line 149
    .restart local v0       #m:Lcom/zendesk/api/model/macros/Macro;
    iget-object v2, p0, Lcom/zendesk/api/model/macros/Macros;->groupsByNameTemp:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    invoke-virtual {p0, v1, p2}, Lcom/zendesk/api/model/macros/Macros;->createOrFindParent(Ljava/lang/String;I)Lcom/zendesk/api/model/macros/Macro;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/macros/Macro;->getSubMacros()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_3
    iget-object v2, p0, Lcom/zendesk/api/model/macros/Macros;->macrosTemp:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le p2, v2, :cond_4

    .line 155
    iget-object v2, p0, Lcom/zendesk/api/model/macros/Macros;->macrosTemp:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_4
    iget-object v2, p0, Lcom/zendesk/api/model/macros/Macros;->macrosTemp:Ljava/util/List;

    invoke-interface {v2, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/zendesk/api/requester/MacrosRequester;

    iget v1, p0, Lcom/zendesk/api/model/macros/Macros;->currentPage:I

    invoke-direct {v0, v1}, Lcom/zendesk/api/requester/MacrosRequester;-><init>(I)V

    return-object v0
.end method

.method public getMacros()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/macros/Macro;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zendesk/api/model/macros/Macros;->macros:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getMacrosForParent(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/macros/Macro;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/zendesk/api/model/macros/Macros;->groupsByName:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/macros/Macro;

    .line 126
    .local v0, m:Lcom/zendesk/api/model/macros/Macro;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/zendesk/api/model/macros/Macro;->getSubMacros()Ljava/util/List;

    move-result-object v1

    .line 130
    .end local v0           #m:Lcom/zendesk/api/model/macros/Macro;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/zendesk/api/model/macros/Macros;->macros:Ljava/util/List;

    goto :goto_0
.end method

.method protected onceParsed()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    .line 84
    iget-boolean v3, p0, Lcom/zendesk/api/model/macros/Macros;->hasNextPage:Z

    if-eqz v3, :cond_0

    .line 85
    iget v3, p0, Lcom/zendesk/api/model/macros/Macros;->currentPage:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/zendesk/api/model/macros/Macros;->currentPage:I

    .line 86
    invoke-super {p0}, Lcom/zendesk/api/model/ZDModelObject;->refresh()V

    .line 104
    :goto_0
    return-void

    .line 89
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/zendesk/api/model/macros/Macros;->macrosTemp:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 91
    .local v0, all:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/macros/Macro;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/macros/Macro;

    .line 93
    .local v2, m:Lcom/zendesk/api/model/macros/Macro;
    invoke-virtual {v2}, Lcom/zendesk/api/model/macros/Macro;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/zendesk/api/model/macros/Macro;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {v2}, Lcom/zendesk/api/model/macros/Macro;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/zendesk/api/model/macros/Macros;->createOrFindParent(Ljava/lang/String;I)Lcom/zendesk/api/model/macros/Macro;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/macros/Macro;->getSubMacros()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v3, p0, Lcom/zendesk/api/model/macros/Macros;->macrosTemp:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 91
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    .end local v2           #m:Lcom/zendesk/api/model/macros/Macro;
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/zendesk/api/model/macros/Macros;->macrosTemp:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/zendesk/api/model/macros/Macros;->macros:Ljava/util/List;

    .line 100
    new-instance v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/zendesk/api/model/macros/Macros;->groupsByNameTemp:Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v3, p0, Lcom/zendesk/api/model/macros/Macros;->groupsByName:Ljava/util/Map;

    .line 101
    iget-object v3, p0, Lcom/zendesk/api/model/macros/Macros;->macrosTemp:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 102
    iget-object v3, p0, Lcom/zendesk/api/model/macros/Macros;->groupsByNameTemp:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method protected parseResponse(Ljava/lang/String;)V
    .locals 6
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    .local v1, json:Lorg/json/JSONObject;
    const-string v4, "next_page"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/zendesk/api/model/macros/Macros;->hasNextPage:Z

    .line 68
    const-string v4, "macros"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 70
    .local v3, macrosArray:Lorg/json/JSONArray;
    if-eqz v3, :cond_2

    .line 71
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 73
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 74
    .local v2, ma:Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 75
    iget-object v4, p0, Lcom/zendesk/api/model/macros/Macros;->macrosTemp:Ljava/util/List;

    new-instance v5, Lcom/zendesk/api/model/macros/Macro;

    invoke-direct {v5, v2}, Lcom/zendesk/api/model/macros/Macro;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    .end local v0           #i:I
    .end local v2           #ma:Lorg/json/JSONObject;
    .end local v3           #macrosArray:Lorg/json/JSONArray;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 79
    .restart local v3       #macrosArray:Lorg/json/JSONArray;
    :cond_2
    return-void
.end method

.method public declared-synchronized refresh()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    .line 55
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/zendesk/api/model/macros/Macros;->currentPage:I

    .line 56
    iget-object v0, p0, Lcom/zendesk/api/model/macros/Macros;->macrosTemp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    iget-object v0, p0, Lcom/zendesk/api/model/macros/Macros;->groupsByNameTemp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 58
    invoke-super {p0}, Lcom/zendesk/api/model/ZDModelObject;->refresh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 55
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
            "<",
            "Lcom/zendesk/api/model/macros/Macros;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, responseHandler:Lcom/zendesk/api/model/ResponseHandler;,"Lcom/zendesk/api/model/ResponseHandler<Lcom/zendesk/api/model/macros/Macros;>;"
    monitor-enter p0

    :try_start_0
    const-string v0, "refresh-req"

    invoke-virtual {p0, v0}, Lcom/zendesk/api/model/macros/Macros;->requestInProgress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/zendesk/api/model/macros/Macros;->currentPage:I

    .line 47
    iget-object v0, p0, Lcom/zendesk/api/model/macros/Macros;->macrosTemp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    iget-object v0, p0, Lcom/zendesk/api/model/macros/Macros;->groupsByNameTemp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 50
    :cond_0
    invoke-super {p0, p1}, Lcom/zendesk/api/model/ZDModelObject;->refresh(Lcom/zendesk/api/model/ResponseHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
