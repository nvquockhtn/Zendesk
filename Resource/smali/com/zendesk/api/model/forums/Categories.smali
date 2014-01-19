.class public Lcom/zendesk/api/model/forums/Categories;
.super Lcom/zendesk/api/model/ZDPagingModelObject;
.source "Categories.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDPagingModelObject",
        "<",
        "Lcom/zendesk/api/model/forums/Category;",
        "Lcom/zendesk/api/model/forums/Categories;",
        ">;"
    }
.end annotation


# static fields
.field static final KEY_CATEGORIES:Ljava/lang/String; = "categories"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "categories"
        type = Ljava/util/List;
    .end annotation
.end field

.field static final KEY_COUNT:Ljava/lang/String; = "count"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "count"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field static final KEY_DESCRIPTION:Ljava/lang/String; = "description"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "categories.description"
        type = Ljava/lang/String;
    .end annotation
.end field

.field static final KEY_ID:Ljava/lang/String; = "id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "categories.id"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field static final KEY_NAME:Ljava/lang/String; = "name"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "categories.name"
        type = Ljava/lang/String;
    .end annotation
.end field

.field static final KEY_POSITION:Ljava/lang/String; = "position"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "categories.position"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field static final KEY_UPDATED_AT:Ljava/lang/String; = "updated_at"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "categories.updated_at"
        type = Lcom/zendesk/api/model/shared/ZDDate;
    .end annotation
.end field


# instance fields
.field protected baseModel:Lcom/zendesk/api/model/BaseModel;

.field private count:Ljava/lang/Integer;

.field protected showEmptyViews:Z


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;)V
    .locals 0
    .parameter "baseModel"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDPagingModelObject;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Categories;->baseModel:Lcom/zendesk/api/model/BaseModel;

    .line 51
    return-void
.end method


# virtual methods
.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/zendesk/api/requester/CategoriesRequester;

    invoke-virtual {p0}, Lcom/zendesk/api/model/forums/Categories;->getPendingPage()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/zendesk/api/requester/CategoriesRequester;-><init>(I)V

    return-object v0
.end method

.method public getForum(Ljava/lang/Long;)Lcom/zendesk/api/model/forums/Category;
    .locals 3
    .parameter "id"

    .prologue
    .line 97
    iget-object v2, p0, Lcom/zendesk/api/model/forums/Categories;->listItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/forums/Category;

    .line 98
    .local v0, f:Lcom/zendesk/api/model/forums/Category;
    invoke-virtual {v0}, Lcom/zendesk/api/model/forums/Category;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    .end local v0           #f:Lcom/zendesk/api/model/forums/Category;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReportedCount()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Categories;->count:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Categories;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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
    .line 61
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    .local v5, json:Lorg/json/JSONObject;
    const-string v6, "count"

    invoke-static {v5, v6}, Lcom/zendesk/api/model/forums/Categories;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/zendesk/api/model/forums/Categories;->count:Ljava/lang/Integer;

    .line 65
    const-string v6, "categories"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 67
    .local v0, categories:Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    .line 69
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 71
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 73
    .local v2, forumJSON:Lorg/json/JSONObject;
    const-string v6, "id"

    invoke-static {v2, v6}, Lcom/zendesk/api/model/forums/Categories;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 75
    .local v4, id:Ljava/lang/Long;
    if-eqz v4, :cond_0

    .line 77
    new-instance v1, Lcom/zendesk/api/model/forums/Category;

    invoke-direct {v1, v4}, Lcom/zendesk/api/model/forums/Category;-><init>(Ljava/lang/Long;)V

    .line 78
    .local v1, f:Lcom/zendesk/api/model/forums/Category;
    const-string v6, "name"

    invoke-static {v2, v6}, Lcom/zendesk/api/model/forums/Categories;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/zendesk/api/model/forums/Category;->setName(Ljava/lang/String;)V

    .line 79
    const-string v6, "description"

    invoke-static {v2, v6}, Lcom/zendesk/api/model/forums/Categories;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/zendesk/api/model/forums/Category;->setDescription(Ljava/lang/String;)V

    .line 80
    const-string v6, "position"

    invoke-static {v2, v6}, Lcom/zendesk/api/model/forums/Categories;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/zendesk/api/model/forums/Category;->setPosition(Ljava/lang/Integer;)V

    .line 81
    const-string v6, "updated_at"

    invoke-static {v2, v6}, Lcom/zendesk/api/model/forums/Categories;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/zendesk/api/model/forums/Category;->setUpdatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V

    .line 83
    iget-object v6, p0, Lcom/zendesk/api/model/forums/Categories;->listItems:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .end local v1           #f:Lcom/zendesk/api/model/forums/Category;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    .end local v2           #forumJSON:Lorg/json/JSONObject;
    .end local v3           #i:I
    .end local v4           #id:Ljava/lang/Long;
    :cond_1
    return-void
.end method
