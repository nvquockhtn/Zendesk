.class public Lcom/zendesk/api/model/ticket/forms/TicketForms;
.super Lcom/zendesk/api/model/ZDPagingModelObject;
.source "TicketForms.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDPagingModelObject",
        "<",
        "Lcom/zendesk/api/model/ticket/forms/TicketForm;",
        "Lcom/zendesk/api/model/ticket/forms/TicketForms;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_COUNT:Ljava/lang/String; = "count"

.field private static final KEY_TICKET_FORMS:Ljava/lang/String; = "ticket_forms"


# instance fields
.field private baseModel:Lcom/zendesk/api/model/BaseModel;

.field private count:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;)V
    .locals 0
    .parameter "baseModel"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDPagingModelObject;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/forms/TicketForms;->baseModel:Lcom/zendesk/api/model/BaseModel;

    .line 35
    return-void
.end method


# virtual methods
.method public count()I
    .locals 4

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, i:I
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/forms/TicketForms;->listItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/ticket/forms/TicketForm;

    .line 71
    .local v0, form:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/forms/TicketForm;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v0           #form:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    :cond_1
    return v1
.end method

.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/zendesk/api/requester/TicketFormRequester;

    invoke-direct {v0}, Lcom/zendesk/api/requester/TicketFormRequester;-><init>()V

    return-object v0
.end method

.method public getDefaultTicketForm()Lcom/zendesk/api/model/ticket/forms/TicketForm;
    .locals 3

    .prologue
    .line 83
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/forms/TicketForms;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v2}, Lcom/zendesk/api/model/BaseModel;->getTicketForms()Lcom/zendesk/api/model/ticket/forms/TicketForms;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zendesk/api/model/ticket/forms/TicketForms;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v2}, Lcom/zendesk/api/model/BaseModel;->getTicketForms()Lcom/zendesk/api/model/ticket/forms/TicketForms;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/forms/TicketForms;->getListItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/forms/TicketForms;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v2}, Lcom/zendesk/api/model/BaseModel;->getTicketForms()Lcom/zendesk/api/model/ticket/forms/TicketForms;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/forms/TicketForms;->getListItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/ticket/forms/TicketForm;

    .line 85
    .local v0, form:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/forms/TicketForm;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    .end local v0           #form:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReportedCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/forms/TicketForms;->count:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/forms/TicketForms;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 62
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTicketFormByTicketFormId(J)Lcom/zendesk/api/model/ticket/forms/TicketForm;
    .locals 5
    .parameter "ticketFormId"

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, form:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/forms/TicketForms;->listItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/ticket/forms/TicketForm;

    .line 100
    .local v2, tf:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/forms/TicketForm;->getId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 101
    move-object v0, v2

    goto :goto_0

    .line 104
    .end local v2           #tf:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    :cond_1
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
    .line 40
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    .local v3, jsonObject:Lorg/json/JSONObject;
    if-eqz v3, :cond_1

    .line 42
    const-string v5, "count"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/api/model/ticket/forms/TicketForms;->count:Ljava/lang/Integer;

    .line 44
    const-string v5, "ticket_forms"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 45
    .local v0, arrayOfTicketForms:Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 46
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 47
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 48
    .local v1, form:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 49
    new-instance v4, Lcom/zendesk/api/model/ticket/forms/TicketForm;

    invoke-direct {v4, v1}, Lcom/zendesk/api/model/ticket/forms/TicketForm;-><init>(Lorg/json/JSONObject;)V

    .line 50
    .local v4, ticketForm:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    iget-object v5, p0, Lcom/zendesk/api/model/ticket/forms/TicketForms;->listItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .end local v4           #ticketForm:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    .end local v0           #arrayOfTicketForms:Lorg/json/JSONArray;
    .end local v1           #form:Lorg/json/JSONObject;
    .end local v2           #i:I
    :cond_1
    return-void
.end method
