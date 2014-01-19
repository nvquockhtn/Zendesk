.class public Lcom/zendesk/api/model/forums/Category$CategoryForums;
.super Lcom/zendesk/api/model/ZDPagingModelObject;
.source "Category.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/forums/Category;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CategoryForums"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDPagingModelObject",
        "<",
        "Lcom/zendesk/api/model/forums/Forum;",
        "Lcom/zendesk/api/model/forums/Category;",
        ">;"
    }
.end annotation


# static fields
.field static final KEY_FORUMS:Ljava/lang/String; = "forums"
    .annotation runtime Lcom/zendesk/api/APIKey;
        listOf = Lcom/zendesk/api/model/forums/Forum;
        path = "forums"
        type = Ljava/util/List;
    .end annotation
.end field


# instance fields
.field private count:Ljava/lang/Integer;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "count"
    .end annotation
.end field

.field final synthetic this$0:Lcom/zendesk/api/model/forums/Category;


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/forums/Category;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Category$CategoryForums;->this$0:Lcom/zendesk/api/model/forums/Category;

    invoke-direct {p0}, Lcom/zendesk/api/model/ZDPagingModelObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 4

    .prologue
    .line 209
    new-instance v0, Lcom/zendesk/api/requester/CategoryForumsRequester;

    iget-object v1, p0, Lcom/zendesk/api/model/forums/Category$CategoryForums;->this$0:Lcom/zendesk/api/model/forums/Category;

    #getter for: Lcom/zendesk/api/model/forums/Category;->id:Ljava/lang/Long;
    invoke-static {v1}, Lcom/zendesk/api/model/forums/Category;->access$000(Lcom/zendesk/api/model/forums/Category;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/zendesk/api/model/forums/Category$CategoryForums;->getPendingPage()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/zendesk/api/requester/CategoryForumsRequester;-><init>(JI)V

    return-object v0
.end method

.method public getEntry(Ljava/lang/Long;)Lcom/zendesk/api/model/forums/Forum;
    .locals 4
    .parameter "entryId"

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/zendesk/api/model/forums/Category$CategoryForums;->getListItems()Ljava/util/List;

    move-result-object v1

    .line 245
    .local v1, forums:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/forums/Forum;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/forums/Forum;

    .line 246
    .local v0, fe:Lcom/zendesk/api/model/forums/Forum;
    invoke-virtual {v0}, Lcom/zendesk/api/model/forums/Forum;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    .end local v0           #fe:Lcom/zendesk/api/model/forums/Forum;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReportedCount()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Category$CategoryForums;->count:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Category$CategoryForums;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 258
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
    .line 215
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 217
    .local v3, json:Lorg/json/JSONObject;
    const-string v5, "count"

    invoke-static {v3, v5}, Lcom/zendesk/api/model/forums/Category$CategoryForums;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/api/model/forums/Category$CategoryForums;->count:Ljava/lang/Integer;

    .line 219
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v4, tmp:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/forums/Forum;>;"
    const-string v5, "forums"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 222
    .local v1, forums:Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    .line 224
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 226
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 227
    .local v0, f:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 228
    new-instance v5, Lcom/zendesk/api/model/forums/Forum;

    invoke-direct {v5, v0}, Lcom/zendesk/api/model/forums/Forum;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    .end local v0           #f:Lorg/json/JSONObject;
    .end local v2           #i:I
    :cond_1
    iput-object v4, p0, Lcom/zendesk/api/model/forums/Category$CategoryForums;->listItems:Ljava/util/List;

    .line 233
    return-void
.end method
