.class public Lcom/zendesk/api/model/users/Organizations;
.super Lcom/zendesk/api/model/ZDModelObject;
.source "Organizations.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDModelObject",
        "<",
        "Lcom/zendesk/api/model/users/Organizations;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_ORGANIZATIONS:Ljava/lang/String; = "organizations"


# instance fields
.field private organisations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/users/Organization;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/zendesk/api/requester/OrganizationsRequester;

    invoke-direct {v0}, Lcom/zendesk/api/requester/OrganizationsRequester;-><init>()V

    return-object v0
.end method

.method public getListItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/users/Organization;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zendesk/api/model/users/Organizations;->organisations:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/zendesk/api/model/users/Organizations;->organisations:Ljava/util/List;

    .line 68
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public getOrganizationById(J)Lcom/zendesk/api/model/users/Organization;
    .locals 4
    .parameter "organizationId"

    .prologue
    .line 51
    iget-object v2, p0, Lcom/zendesk/api/model/users/Organizations;->organisations:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zendesk/api/model/users/Organizations;->organisations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/zendesk/api/model/users/Organizations;->organisations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/users/Organization;

    .line 53
    .local v1, org:Lcom/zendesk/api/model/users/Organization;
    invoke-virtual {v1}, Lcom/zendesk/api/model/users/Organization;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 58
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #org:Lcom/zendesk/api/model/users/Organization;
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
    .line 31
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    .local v1, json:Lorg/json/JSONObject;
    const-string v5, "organizations"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 33
    .local v4, organisationsArray:Lorg/json/JSONArray;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 34
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/zendesk/api/model/users/Organizations;->organisations:Ljava/util/List;

    .line 35
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 36
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 37
    .local v2, obj:Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 38
    new-instance v3, Lcom/zendesk/api/model/users/Organization;

    invoke-direct {v3, v2}, Lcom/zendesk/api/model/users/Organization;-><init>(Lorg/json/JSONObject;)V

    .line 39
    .local v3, org:Lcom/zendesk/api/model/users/Organization;
    iget-object v5, p0, Lcom/zendesk/api/model/users/Organizations;->organisations:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .end local v3           #org:Lcom/zendesk/api/model/users/Organization;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    .end local v0           #i:I
    .end local v2           #obj:Lorg/json/JSONObject;
    :cond_1
    return-void
.end method
