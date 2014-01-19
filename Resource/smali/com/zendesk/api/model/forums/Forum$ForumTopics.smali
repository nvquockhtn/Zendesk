.class public Lcom/zendesk/api/model/forums/Forum$ForumTopics;
.super Lcom/zendesk/api/model/ZDPagingModelObject;
.source "Forum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/forums/Forum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ForumTopics"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDPagingModelObject",
        "<",
        "Lcom/zendesk/api/model/forums/Topic;",
        "Lcom/zendesk/api/model/forums/Forum;",
        ">;"
    }
.end annotation


# static fields
.field static final KEY_COUNT:Ljava/lang/String; = "count"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "count"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field static final KEY_TOPICS:Ljava/lang/String; = "topics"
    .annotation runtime Lcom/zendesk/api/APIKey;
        listOf = Lcom/zendesk/api/model/forums/Topic;
        path = "topics"
        type = Ljava/util/List;
    .end annotation
.end field


# instance fields
.field private count:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/zendesk/api/model/forums/Forum;


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/forums/Forum;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Forum$ForumTopics;->this$0:Lcom/zendesk/api/model/forums/Forum;

    invoke-direct {p0}, Lcom/zendesk/api/model/ZDPagingModelObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 3

    .prologue
    .line 332
    new-instance v0, Lcom/zendesk/api/requester/TopicsRequester;

    iget-object v1, p0, Lcom/zendesk/api/model/forums/Forum$ForumTopics;->this$0:Lcom/zendesk/api/model/forums/Forum;

    #getter for: Lcom/zendesk/api/model/forums/Forum;->id:Ljava/lang/Long;
    invoke-static {v1}, Lcom/zendesk/api/model/forums/Forum;->access$000(Lcom/zendesk/api/model/forums/Forum;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zendesk/api/model/forums/Forum$ForumTopics;->getPendingPage()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/zendesk/api/requester/TopicsRequester;-><init>(Ljava/lang/Long;I)V

    return-object v0
.end method

.method public getEntry(Ljava/lang/Long;)Lcom/zendesk/api/model/forums/Topic;
    .locals 4
    .parameter "entryId"

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/zendesk/api/model/forums/Forum$ForumTopics;->getListItems()Ljava/util/List;

    move-result-object v2

    .line 369
    .local v2, topics:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/forums/Topic;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/forums/Topic;

    .line 370
    .local v0, fe:Lcom/zendesk/api/model/forums/Topic;
    invoke-virtual {v0}, Lcom/zendesk/api/model/forums/Topic;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    .end local v0           #fe:Lcom/zendesk/api/model/forums/Topic;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReportedCount()I
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Forum$ForumTopics;->count:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Forum$ForumTopics;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 382
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
    .line 338
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 340
    .local v1, json:Lorg/json/JSONObject;
    const-string v6, "count"

    invoke-static {v1, v6}, Lcom/zendesk/api/model/forums/Forum$ForumTopics;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/zendesk/api/model/forums/Forum$ForumTopics;->count:Ljava/lang/Integer;

    .line 342
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v3, tmp:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/forums/Topic;>;"
    const-string v6, "topics"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 345
    .local v5, topics:Lorg/json/JSONArray;
    if-eqz v5, :cond_1

    .line 346
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 348
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 349
    .local v2, t:Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 350
    new-instance v4, Lcom/zendesk/api/model/forums/Topic;

    invoke-direct {v4, v2}, Lcom/zendesk/api/model/forums/Topic;-><init>(Lorg/json/JSONObject;)V

    .line 351
    .local v4, to:Lcom/zendesk/api/model/forums/Topic;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    .end local v4           #to:Lcom/zendesk/api/model/forums/Topic;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    .end local v0           #i:I
    .end local v2           #t:Lorg/json/JSONObject;
    :cond_1
    iput-object v3, p0, Lcom/zendesk/api/model/forums/Forum$ForumTopics;->listItems:Ljava/util/List;

    .line 357
    return-void
.end method
