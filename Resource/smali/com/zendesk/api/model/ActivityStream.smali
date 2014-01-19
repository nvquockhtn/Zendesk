.class public Lcom/zendesk/api/model/ActivityStream;
.super Lcom/zendesk/api/model/ZDModelObject;
.source "ActivityStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDModelObject",
        "<",
        "Lcom/zendesk/api/model/ActivityStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_ACTIVITIES:Ljava/lang/String; = "activities"

.field private static final KEY_COUNT:Ljava/lang/String; = "count"


# instance fields
.field private final activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final activityGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ActivityGroup;",
            ">;"
        }
    .end annotation
.end field

.field private baseModel:Lcom/zendesk/api/model/BaseModel;

.field private count:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;)V
    .locals 1
    .parameter "baseModel"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/ActivityStream;->activityGroups:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/ActivityStream;->activities:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/zendesk/api/model/ActivityStream;->baseModel:Lcom/zendesk/api/model/BaseModel;

    .line 38
    return-void
.end method

.method private parseGroups(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, activities:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/Activity;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v2, groupMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/zendesk/api/model/ActivityGroup;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/Activity;

    .line 67
    .local v0, a:Lcom/zendesk/api/model/Activity;
    invoke-virtual {v0}, Lcom/zendesk/api/model/Activity;->getTarget()Lcom/zendesk/api/model/Activity$ActivityTargetTicket;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/Activity$ActivityTargetTicket;->getNiceId()Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/ActivityGroup;

    .line 68
    .local v1, ag:Lcom/zendesk/api/model/ActivityGroup;
    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/zendesk/api/model/ActivityGroup;

    .end local v1           #ag:Lcom/zendesk/api/model/ActivityGroup;
    invoke-direct {v1}, Lcom/zendesk/api/model/ActivityGroup;-><init>()V

    .line 70
    .restart local v1       #ag:Lcom/zendesk/api/model/ActivityGroup;
    invoke-virtual {v0}, Lcom/zendesk/api/model/Activity;->getTarget()Lcom/zendesk/api/model/Activity$ActivityTargetTicket;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/Activity$ActivityTargetTicket;->getNiceId()Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v4, p0, Lcom/zendesk/api/model/ActivityStream;->activityGroups:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    invoke-virtual {v1}, Lcom/zendesk/api/model/ActivityGroup;->getActivities()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    .end local v0           #a:Lcom/zendesk/api/model/Activity;
    .end local v1           #ag:Lcom/zendesk/api/model/ActivityGroup;
    :cond_1
    iget-object v4, p0, Lcom/zendesk/api/model/ActivityStream;->activityGroups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/ActivityGroup;

    .line 77
    .restart local v1       #ag:Lcom/zendesk/api/model/ActivityGroup;
    invoke-virtual {v1}, Lcom/zendesk/api/model/ActivityGroup;->parseValues()V

    goto :goto_1

    .line 79
    .end local v1           #ag:Lcom/zendesk/api/model/ActivityGroup;
    :cond_2
    return-void
.end method


# virtual methods
.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/zendesk/api/requester/ActivityStreamRequester;

    invoke-direct {v0}, Lcom/zendesk/api/requester/ActivityStreamRequester;-><init>()V

    return-object v0
.end method

.method public getActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zendesk/api/model/ActivityStream;->activities:Ljava/util/List;

    return-object v0
.end method

.method public getActivitiyGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ActivityGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/zendesk/api/model/ActivityStream;->activityGroups:Ljava/util/List;

    return-object v0
.end method

.method public getCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/zendesk/api/model/ActivityStream;->count:Ljava/lang/Integer;

    return-object v0
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
    .line 49
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    .local v2, json:Lorg/json/JSONObject;
    const-string v3, "count"

    invoke-static {v2, v3}, Lcom/zendesk/api/model/ZDModelObject;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/api/model/ActivityStream;->count:Ljava/lang/Integer;

    .line 51
    const-string v3, "activities"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 53
    .local v0, activitiesArray:Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/zendesk/api/model/ActivityStream;->activities:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 54
    iget-object v3, p0, Lcom/zendesk/api/model/ActivityStream;->activities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 55
    iget-object v3, p0, Lcom/zendesk/api/model/ActivityStream;->activityGroups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 56
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 57
    iget-object v3, p0, Lcom/zendesk/api/model/ActivityStream;->activities:Ljava/util/List;

    new-instance v4, Lcom/zendesk/api/model/Activity;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/zendesk/api/model/Activity;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v1           #i:I
    :cond_0
    iget-object v3, p0, Lcom/zendesk/api/model/ActivityStream;->activities:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/zendesk/api/model/ActivityStream;->parseGroups(Ljava/util/List;)V

    .line 62
    return-void
.end method
