.class Lcom/zendesk/api/model/ViewsWithCounts$1;
.super Ljava/lang/Thread;
.source "ViewsWithCounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/api/model/ViewsWithCounts;->loadCounts(Lcom/zendesk/api/model/ResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/api/model/ViewsWithCounts;

.field final synthetic val$ids:[J


# direct methods
.method constructor <init>(Lcom/zendesk/api/model/ViewsWithCounts;[J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/zendesk/api/model/ViewsWithCounts$1;->this$0:Lcom/zendesk/api/model/ViewsWithCounts;

    iput-object p2, p0, Lcom/zendesk/api/model/ViewsWithCounts$1;->val$ids:[J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 88
    new-instance v5, Lcom/zendesk/api/requester/ViewsCountsRequester;

    iget-object v8, p0, Lcom/zendesk/api/model/ViewsWithCounts$1;->val$ids:[J

    invoke-direct {v5, v8}, Lcom/zendesk/api/requester/ViewsCountsRequester;-><init>([J)V

    .line 91
    .local v5, vcr:Lcom/zendesk/api/requester/ViewsCountsRequester;
    :try_start_0
    invoke-virtual {v5}, Lcom/zendesk/api/requester/ViewsCountsRequester;->execute()V

    .line 92
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v5}, Lcom/zendesk/api/requester/ViewsCountsRequester;->getResponseString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    .local v3, response:Lorg/json/JSONObject;
    const-string v8, "view_counts"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 94
    .local v2, json:Lorg/json/JSONArray;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 95
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 96
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 97
    .local v7, viewJson:Lorg/json/JSONObject;
    const-string v8, "view_id"

    invoke-static {v7, v8}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 98
    .local v6, viewId:Ljava/lang/Long;
    iget-object v8, p0, Lcom/zendesk/api/model/ViewsWithCounts$1;->this$0:Lcom/zendesk/api/model/ViewsWithCounts;

    #getter for: Lcom/zendesk/api/model/ViewsWithCounts;->viewsMap:Ljava/util/Map;
    invoke-static {v8}, Lcom/zendesk/api/model/ViewsWithCounts;->access$000(Lcom/zendesk/api/model/ViewsWithCounts;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zendesk/api/model/views/View;

    .line 99
    .local v4, v:Lcom/zendesk/api/model/views/View;
    if-eqz v4, :cond_0

    .line 100
    const-string v8, "value"

    invoke-static {v7, v8}, Lcom/zendesk/api/model/ZDModelObject;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/zendesk/api/model/views/View;->setCount(Ljava/lang/Integer;)V

    .line 95
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v4           #v:Lcom/zendesk/api/model/views/View;
    .end local v6           #viewId:Ljava/lang/Long;
    .end local v7           #viewJson:Lorg/json/JSONObject;
    :cond_1
    iget-object v8, p0, Lcom/zendesk/api/model/ViewsWithCounts$1;->this$0:Lcom/zendesk/api/model/ViewsWithCounts;

    const-string v9, "view-counts"

    invoke-virtual {v8, v9}, Lcom/zendesk/api/model/ViewsWithCounts;->respondSuccess(Ljava/lang/String;)V

    .line 105
    .end local v1           #i:I
    :cond_2
    iget-object v8, p0, Lcom/zendesk/api/model/ViewsWithCounts$1;->this$0:Lcom/zendesk/api/model/ViewsWithCounts;

    invoke-virtual {v8}, Lcom/zendesk/api/model/ViewsWithCounts;->shouldLoadCounts()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/zendesk/api/model/ViewsWithCounts$1;->this$0:Lcom/zendesk/api/model/ViewsWithCounts;

    invoke-static {v8}, Lcom/zendesk/api/model/ViewsWithCounts;->access$108(Lcom/zendesk/api/model/ViewsWithCounts;)I

    move-result v8

    invoke-static {}, Lcom/zendesk/api/model/ViewsWithCounts;->access$200()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-ge v8, v9, :cond_3

    .line 106
    const-wide/16 v8, 0x1388

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    :goto_1
    :try_start_2
    iget-object v8, p0, Lcom/zendesk/api/model/ViewsWithCounts$1;->this$0:Lcom/zendesk/api/model/ViewsWithCounts;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/zendesk/api/model/ViewsWithCounts;->loadCounts(Lcom/zendesk/api/model/ResponseHandler;)V

    .line 120
    .end local v2           #json:Lorg/json/JSONArray;
    .end local v3           #response:Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 109
    .restart local v2       #json:Lorg/json/JSONArray;
    .restart local v3       #response:Lorg/json/JSONObject;
    :cond_3
    iget-object v8, p0, Lcom/zendesk/api/model/ViewsWithCounts$1;->this$0:Lcom/zendesk/api/model/ViewsWithCounts;

    const/4 v9, 0x0

    #setter for: Lcom/zendesk/api/model/ViewsWithCounts;->countsRetryCount:I
    invoke-static {v8, v9}, Lcom/zendesk/api/model/ViewsWithCounts;->access$102(Lcom/zendesk/api/model/ViewsWithCounts;I)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 111
    .end local v2           #json:Lorg/json/JSONArray;
    .end local v3           #response:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/Throwable;
    iget-object v8, p0, Lcom/zendesk/api/model/ViewsWithCounts$1;->this$0:Lcom/zendesk/api/model/ViewsWithCounts;

    invoke-virtual {v8}, Lcom/zendesk/api/model/ViewsWithCounts;->shouldLoadCounts()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/zendesk/api/model/ViewsWithCounts$1;->this$0:Lcom/zendesk/api/model/ViewsWithCounts;

    invoke-static {v8}, Lcom/zendesk/api/model/ViewsWithCounts;->access$108(Lcom/zendesk/api/model/ViewsWithCounts;)I

    move-result v8

    invoke-static {}, Lcom/zendesk/api/model/ViewsWithCounts;->access$200()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 113
    const-wide/16 v8, 0x1388

    :try_start_3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 114
    :goto_3
    iget-object v8, p0, Lcom/zendesk/api/model/ViewsWithCounts$1;->this$0:Lcom/zendesk/api/model/ViewsWithCounts;

    invoke-virtual {v8, v11}, Lcom/zendesk/api/model/ViewsWithCounts;->loadCounts(Lcom/zendesk/api/model/ResponseHandler;)V

    goto :goto_2

    .line 116
    :cond_4
    iget-object v8, p0, Lcom/zendesk/api/model/ViewsWithCounts$1;->this$0:Lcom/zendesk/api/model/ViewsWithCounts;

    const-string v9, "view-counts"

    invoke-virtual {v8, v9, v0}, Lcom/zendesk/api/model/ViewsWithCounts;->respondWithError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    iget-object v8, p0, Lcom/zendesk/api/model/ViewsWithCounts$1;->this$0:Lcom/zendesk/api/model/ViewsWithCounts;

    #setter for: Lcom/zendesk/api/model/ViewsWithCounts;->countsRetryCount:I
    invoke-static {v8, v10}, Lcom/zendesk/api/model/ViewsWithCounts;->access$102(Lcom/zendesk/api/model/ViewsWithCounts;I)I

    goto :goto_2

    .line 106
    .end local v0           #e:Ljava/lang/Throwable;
    .restart local v2       #json:Lorg/json/JSONArray;
    .restart local v3       #response:Lorg/json/JSONObject;
    :catch_1
    move-exception v8

    goto :goto_1

    .line 113
    .end local v2           #json:Lorg/json/JSONArray;
    .end local v3           #response:Lorg/json/JSONObject;
    .restart local v0       #e:Ljava/lang/Throwable;
    :catch_2
    move-exception v8

    goto :goto_3
.end method
