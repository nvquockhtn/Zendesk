.class public Lcom/zendesk/api/model/forums/Topic$TopicComments;
.super Lcom/zendesk/api/model/ZDPagingModelObject;
.source "Topic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/forums/Topic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TopicComments"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDPagingModelObject",
        "<",
        "Lcom/zendesk/api/model/forums/TopicComment;",
        "Lcom/zendesk/api/model/forums/Topic;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_TOPIC_COMMENTS:Ljava/lang/String; = "topic_comments"
    .annotation runtime Lcom/zendesk/api/APIKey;
        listOf = Lcom/zendesk/api/model/forums/TopicComment;
        path = "topic_comments"
        type = Ljava/util/List;
    .end annotation
.end field


# instance fields
.field private count:Ljava/lang/Integer;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "count"
    .end annotation
.end field

.field final synthetic this$0:Lcom/zendesk/api/model/forums/Topic;


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/forums/Topic;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Topic$TopicComments;->this$0:Lcom/zendesk/api/model/forums/Topic;

    invoke-direct {p0}, Lcom/zendesk/api/model/ZDPagingModelObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 4

    .prologue
    .line 362
    new-instance v0, Lcom/zendesk/api/requester/TopicCommentsRequester;

    iget-object v1, p0, Lcom/zendesk/api/model/forums/Topic$TopicComments;->this$0:Lcom/zendesk/api/model/forums/Topic;

    #getter for: Lcom/zendesk/api/model/forums/Topic;->id:Ljava/lang/Long;
    invoke-static {v1}, Lcom/zendesk/api/model/forums/Topic;->access$000(Lcom/zendesk/api/model/forums/Topic;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/zendesk/api/model/forums/Topic$TopicComments;->getPendingPage()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/zendesk/api/requester/TopicCommentsRequester;-><init>(JI)V

    return-object v0
.end method

.method public getReportedCount()I
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Topic$TopicComments;->count:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Topic$TopicComments;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 388
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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
    .line 368
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 370
    .local v3, json:Lorg/json/JSONObject;
    const-string v4, "count"

    invoke-static {v3, v4}, Lcom/zendesk/api/model/forums/Topic$TopicComments;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/zendesk/api/model/forums/Topic$TopicComments;->count:Ljava/lang/Integer;

    .line 372
    const-string v4, "topic_comments"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 373
    .local v1, comments:Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    .line 374
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 375
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 376
    .local v0, comment:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 377
    iget-object v4, p0, Lcom/zendesk/api/model/forums/Topic$TopicComments;->listItems:Ljava/util/List;

    new-instance v5, Lcom/zendesk/api/model/forums/TopicComment;

    invoke-direct {v5, v0}, Lcom/zendesk/api/model/forums/TopicComment;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    .end local v0           #comment:Lorg/json/JSONObject;
    .end local v2           #i:I
    :cond_1
    return-void
.end method
