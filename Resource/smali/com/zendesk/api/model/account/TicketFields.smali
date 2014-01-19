.class public Lcom/zendesk/api/model/account/TicketFields;
.super Lcom/zendesk/api/model/ZDModelObject;
.source "TicketFields.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/api/model/account/TicketFields$1;,
        Lcom/zendesk/api/model/account/TicketFields$TicketFieldOrderComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDModelObject",
        "<",
        "Lcom/zendesk/api/model/account/TicketFields;",
        ">;"
    }
.end annotation


# static fields
.field private static final CC_ID:Ljava/lang/Long; = null

.field private static final DESCRIPTION_ID:Ljava/lang/Long; = null

.field private static final DUE_DATE_ID:Ljava/lang/Long; = null

.field private static final KEY_TICKET_FIELDS:Ljava/lang/String; = "ticket_fields"

.field private static final REQUESTER_ID:Ljava/lang/Long;

.field private static final TAGS_ID:Ljava/lang/Long;


# instance fields
.field private activeCustomFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/account/TicketField;",
            ">;"
        }
    .end annotation
.end field

.field private assignee:Lcom/zendesk/api/model/account/TicketField;

.field private baseModel:Lcom/zendesk/api/model/BaseModel;

.field private ccs:Lcom/zendesk/api/model/account/TicketField;

.field private description:Lcom/zendesk/api/model/account/TicketField;

.field private dueDate:Lcom/zendesk/api/model/account/TicketField;

.field private group:Lcom/zendesk/api/model/account/TicketField;

.field private priority:Lcom/zendesk/api/model/account/TicketField;

.field private requester:Lcom/zendesk/api/model/account/TicketField;

.field private status:Lcom/zendesk/api/model/account/TicketField;

.field private subject:Lcom/zendesk/api/model/account/TicketField;

.field private tags:Lcom/zendesk/api/model/account/TicketField;

.field private ticketFields:Ljava/util/List;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "ticket_fields"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/account/TicketField;",
            ">;"
        }
    .end annotation
.end field

.field private ticketType:Lcom/zendesk/api/model/account/TicketField;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/zendesk/api/model/account/TicketFields;->REQUESTER_ID:Ljava/lang/Long;

    .line 30
    const-wide/16 v0, -0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/zendesk/api/model/account/TicketFields;->CC_ID:Ljava/lang/Long;

    .line 31
    const-wide/16 v0, -0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/zendesk/api/model/account/TicketFields;->TAGS_ID:Ljava/lang/Long;

    .line 32
    const-wide/16 v0, -0x4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/zendesk/api/model/account/TicketFields;->DESCRIPTION_ID:Ljava/lang/Long;

    .line 33
    const-wide/16 v0, -0x5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/zendesk/api/model/account/TicketFields;->DUE_DATE_ID:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;)V
    .locals 1
    .parameter "baseModel"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/account/TicketFields;->ticketFields:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/account/TicketFields;->activeCustomFields:Ljava/util/List;

    .line 63
    iput-object p1, p0, Lcom/zendesk/api/model/account/TicketFields;->baseModel:Lcom/zendesk/api/model/BaseModel;

    .line 64
    return-void
.end method


# virtual methods
.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/zendesk/api/requester/TicketFieldsRequester;

    invoke-direct {v0}, Lcom/zendesk/api/requester/TicketFieldsRequester;-><init>()V

    return-object v0
.end method

.method public getAssignee()Lcom/zendesk/api/model/account/TicketField;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketFields;->assignee:Lcom/zendesk/api/model/account/TicketField;

    return-object v0
.end method

.method public getCcs()Lcom/zendesk/api/model/account/TicketField;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketFields;->ccs:Lcom/zendesk/api/model/account/TicketField;

    return-object v0
.end method

.method public getCustomTicketFields()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zendesk/api/model/account/TicketField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zendesk/api/model/account/TicketFields;->activeCustomFields:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDescription()Lcom/zendesk/api/model/account/TicketField;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketFields;->description:Lcom/zendesk/api/model/account/TicketField;

    return-object v0
.end method

.method public getDueDate()Lcom/zendesk/api/model/account/TicketField;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketFields;->dueDate:Lcom/zendesk/api/model/account/TicketField;

    return-object v0
.end method

.method public getFieldForId(Ljava/lang/Long;)Lcom/zendesk/api/model/account/TicketField;
    .locals 3
    .parameter "id"

    .prologue
    .line 186
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/zendesk/api/model/account/TicketFields;->ticketFields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/zendesk/api/model/account/TicketFields;->ticketFields:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/account/TicketField;

    .line 188
    .local v1, tf:Lcom/zendesk/api/model/account/TicketField;
    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    .end local v1           #tf:Lcom/zendesk/api/model/account/TicketField;
    :goto_1
    return-object v1

    .line 186
    .restart local v1       #tf:Lcom/zendesk/api/model/account/TicketField;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    .end local v1           #tf:Lcom/zendesk/api/model/account/TicketField;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFieldForType(Lcom/zendesk/api/model/account/TicketFieldType;)Lcom/zendesk/api/model/account/TicketField;
    .locals 3
    .parameter "type"

    .prologue
    .line 200
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/zendesk/api/model/account/TicketFields;->ticketFields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 201
    iget-object v2, p0, Lcom/zendesk/api/model/account/TicketFields;->ticketFields:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/account/TicketField;

    .line 202
    .local v1, tf:Lcom/zendesk/api/model/account/TicketField;
    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 204
    .end local v1           #tf:Lcom/zendesk/api/model/account/TicketField;
    :goto_1
    return-object v1

    .line 200
    .restart local v1       #tf:Lcom/zendesk/api/model/account/TicketField;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    .end local v1           #tf:Lcom/zendesk/api/model/account/TicketField;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getGroup()Lcom/zendesk/api/model/account/TicketField;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketFields;->group:Lcom/zendesk/api/model/account/TicketField;

    return-object v0
.end method

.method public getPriority()Lcom/zendesk/api/model/account/TicketField;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketFields;->priority:Lcom/zendesk/api/model/account/TicketField;

    return-object v0
.end method

.method public getRequester()Lcom/zendesk/api/model/account/TicketField;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketFields;->requester:Lcom/zendesk/api/model/account/TicketField;

    return-object v0
.end method

.method public getStatus()Lcom/zendesk/api/model/account/TicketField;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketFields;->status:Lcom/zendesk/api/model/account/TicketField;

    return-object v0
.end method

.method public getSubject()Lcom/zendesk/api/model/account/TicketField;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketFields;->subject:Lcom/zendesk/api/model/account/TicketField;

    return-object v0
.end method

.method public getTags()Lcom/zendesk/api/model/account/TicketField;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketFields;->tags:Lcom/zendesk/api/model/account/TicketField;

    return-object v0
.end method

.method public getTicketFields()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zendesk/api/model/account/TicketField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zendesk/api/model/account/TicketFields;->ticketFields:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTicketType()Lcom/zendesk/api/model/account/TicketField;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketFields;->ticketType:Lcom/zendesk/api/model/account/TicketField;

    return-object v0
.end method

.method protected parseResponse(Ljava/lang/String;)V
    .locals 11
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x270f

    const/4 v8, 0x1

    .line 75
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    .local v4, json:Lorg/json/JSONObject;
    const-string v6, "ticket_fields"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 78
    .local v2, fieldsArray:Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v1, fields:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/account/TicketField;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, customFields:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/account/TicketField;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 83
    new-instance v5, Lcom/zendesk/api/model/account/TicketField;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/zendesk/api/model/account/TicketField;-><init>(Lorg/json/JSONObject;)V

    .line 85
    .local v5, tf:Lcom/zendesk/api/model/account/TicketField;
    invoke-virtual {v5}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 87
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v5}, Lcom/zendesk/api/model/account/TicketField;->isActive()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 90
    invoke-virtual {v5}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zendesk/api/model/account/TicketFieldType;->isSystemField()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    invoke-virtual {v5}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zendesk/api/model/account/TicketFieldType;->isSystemField()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 93
    sget-object v6, Lcom/zendesk/api/model/account/TicketFields$1;->$SwitchMap$com$zendesk$api$model$account$TicketFieldType:[I

    invoke-virtual {v5}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/account/TicketFieldType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 81
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :pswitch_0
    iput-object v5, p0, Lcom/zendesk/api/model/account/TicketFields;->status:Lcom/zendesk/api/model/account/TicketField;

    goto :goto_1

    .line 99
    :pswitch_1
    iput-object v5, p0, Lcom/zendesk/api/model/account/TicketFields;->subject:Lcom/zendesk/api/model/account/TicketField;

    goto :goto_1

    .line 103
    :pswitch_2
    iput-object v5, p0, Lcom/zendesk/api/model/account/TicketFields;->priority:Lcom/zendesk/api/model/account/TicketField;

    goto :goto_1

    .line 107
    :pswitch_3
    iput-object v5, p0, Lcom/zendesk/api/model/account/TicketFields;->ticketType:Lcom/zendesk/api/model/account/TicketField;

    goto :goto_1

    .line 111
    :pswitch_4
    iput-object v5, p0, Lcom/zendesk/api/model/account/TicketFields;->assignee:Lcom/zendesk/api/model/account/TicketField;

    goto :goto_1

    .line 115
    :pswitch_5
    iput-object v5, p0, Lcom/zendesk/api/model/account/TicketFields;->group:Lcom/zendesk/api/model/account/TicketField;

    goto :goto_1

    .line 124
    .end local v5           #tf:Lcom/zendesk/api/model/account/TicketField;
    :cond_2
    new-instance v6, Lcom/zendesk/api/model/account/TicketField;

    iget-object v7, p0, Lcom/zendesk/api/model/account/TicketFields;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-direct {v6, v7}, Lcom/zendesk/api/model/account/TicketField;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    iput-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->tags:Lcom/zendesk/api/model/account/TicketField;

    .line 125
    iget-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->tags:Lcom/zendesk/api/model/account/TicketField;

    sget-object v7, Lcom/zendesk/api/model/account/TicketFields;->TAGS_ID:Ljava/lang/Long;

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/account/TicketField;->setId(Ljava/lang/Long;)V

    .line 126
    iget-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->tags:Lcom/zendesk/api/model/account/TicketField;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/account/TicketField;->setActive(Ljava/lang/Boolean;)V

    .line 127
    iget-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->tags:Lcom/zendesk/api/model/account/TicketField;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/account/TicketField;->setPosition(Ljava/lang/Integer;)V

    .line 128
    iget-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->tags:Lcom/zendesk/api/model/account/TicketField;

    sget-object v7, Lcom/zendesk/api/model/account/TicketFieldType;->TAG:Lcom/zendesk/api/model/account/TicketFieldType;

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/account/TicketField;->setType(Lcom/zendesk/api/model/account/TicketFieldType;)V

    .line 130
    new-instance v6, Lcom/zendesk/api/model/account/TicketField;

    iget-object v7, p0, Lcom/zendesk/api/model/account/TicketFields;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-direct {v6, v7}, Lcom/zendesk/api/model/account/TicketField;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    iput-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->dueDate:Lcom/zendesk/api/model/account/TicketField;

    .line 131
    iget-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->dueDate:Lcom/zendesk/api/model/account/TicketField;

    sget-object v7, Lcom/zendesk/api/model/account/TicketFields;->DUE_DATE_ID:Ljava/lang/Long;

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/account/TicketField;->setId(Ljava/lang/Long;)V

    .line 132
    iget-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->dueDate:Lcom/zendesk/api/model/account/TicketField;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/account/TicketField;->setActive(Ljava/lang/Boolean;)V

    .line 133
    iget-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->dueDate:Lcom/zendesk/api/model/account/TicketField;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/account/TicketField;->setPosition(Ljava/lang/Integer;)V

    .line 134
    iget-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->dueDate:Lcom/zendesk/api/model/account/TicketField;

    sget-object v7, Lcom/zendesk/api/model/account/TicketFieldType;->DUEDATE:Lcom/zendesk/api/model/account/TicketFieldType;

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/account/TicketField;->setType(Lcom/zendesk/api/model/account/TicketFieldType;)V

    .line 136
    new-instance v6, Lcom/zendesk/api/model/account/TicketField;

    iget-object v7, p0, Lcom/zendesk/api/model/account/TicketFields;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-direct {v6, v7}, Lcom/zendesk/api/model/account/TicketField;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    iput-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->ccs:Lcom/zendesk/api/model/account/TicketField;

    .line 137
    iget-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->ccs:Lcom/zendesk/api/model/account/TicketField;

    sget-object v7, Lcom/zendesk/api/model/account/TicketFields;->CC_ID:Ljava/lang/Long;

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/account/TicketField;->setId(Ljava/lang/Long;)V

    .line 138
    iget-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->ccs:Lcom/zendesk/api/model/account/TicketField;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/account/TicketField;->setActive(Ljava/lang/Boolean;)V

    .line 139
    iget-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->ccs:Lcom/zendesk/api/model/account/TicketField;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/account/TicketField;->setPosition(Ljava/lang/Integer;)V

    .line 140
    iget-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->ccs:Lcom/zendesk/api/model/account/TicketField;

    sget-object v7, Lcom/zendesk/api/model/account/TicketFieldType;->CC:Lcom/zendesk/api/model/account/TicketFieldType;

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/account/TicketField;->setType(Lcom/zendesk/api/model/account/TicketFieldType;)V

    .line 142
    new-instance v6, Lcom/zendesk/api/model/account/TicketField;

    iget-object v7, p0, Lcom/zendesk/api/model/account/TicketFields;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-direct {v6, v7}, Lcom/zendesk/api/model/account/TicketField;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    iput-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->description:Lcom/zendesk/api/model/account/TicketField;

    .line 143
    iget-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->description:Lcom/zendesk/api/model/account/TicketField;

    sget-object v7, Lcom/zendesk/api/model/account/TicketFields;->DESCRIPTION_ID:Ljava/lang/Long;

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/account/TicketField;->setId(Ljava/lang/Long;)V

    .line 144
    iget-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->description:Lcom/zendesk/api/model/account/TicketField;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/account/TicketField;->setActive(Ljava/lang/Boolean;)V

    .line 145
    iget-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->description:Lcom/zendesk/api/model/account/TicketField;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/account/TicketField;->setPosition(Ljava/lang/Integer;)V

    .line 146
    iget-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->description:Lcom/zendesk/api/model/account/TicketField;

    sget-object v7, Lcom/zendesk/api/model/account/TicketFieldType;->DESCRIPTION:Lcom/zendesk/api/model/account/TicketFieldType;

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/account/TicketField;->setType(Lcom/zendesk/api/model/account/TicketFieldType;)V

    .line 148
    new-instance v6, Lcom/zendesk/api/model/account/TicketField;

    iget-object v7, p0, Lcom/zendesk/api/model/account/TicketFields;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-direct {v6, v7}, Lcom/zendesk/api/model/account/TicketField;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    iput-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->requester:Lcom/zendesk/api/model/account/TicketField;

    .line 149
    iget-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->requester:Lcom/zendesk/api/model/account/TicketField;

    sget-object v7, Lcom/zendesk/api/model/account/TicketFields;->REQUESTER_ID:Ljava/lang/Long;

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/account/TicketField;->setId(Ljava/lang/Long;)V

    .line 150
    iget-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->requester:Lcom/zendesk/api/model/account/TicketField;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/account/TicketField;->setActive(Ljava/lang/Boolean;)V

    .line 151
    iget-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->requester:Lcom/zendesk/api/model/account/TicketField;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/account/TicketField;->setPosition(Ljava/lang/Integer;)V

    .line 152
    iget-object v6, p0, Lcom/zendesk/api/model/account/TicketFields;->requester:Lcom/zendesk/api/model/account/TicketField;

    sget-object v7, Lcom/zendesk/api/model/account/TicketFieldType;->REQUESTER:Lcom/zendesk/api/model/account/TicketFieldType;

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/account/TicketField;->setType(Lcom/zendesk/api/model/account/TicketFieldType;)V

    .line 154
    new-instance v6, Lcom/zendesk/api/model/account/TicketFields$TicketFieldOrderComparator;

    invoke-direct {v6, p0, v10}, Lcom/zendesk/api/model/account/TicketFields$TicketFieldOrderComparator;-><init>(Lcom/zendesk/api/model/account/TicketFields;Lcom/zendesk/api/model/account/TicketFields$1;)V

    invoke-static {v1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 155
    new-instance v6, Lcom/zendesk/api/model/account/TicketFields$TicketFieldOrderComparator;

    invoke-direct {v6, p0, v10}, Lcom/zendesk/api/model/account/TicketFields$TicketFieldOrderComparator;-><init>(Lcom/zendesk/api/model/account/TicketFields;Lcom/zendesk/api/model/account/TicketFields$1;)V

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 157
    iput-object v1, p0, Lcom/zendesk/api/model/account/TicketFields;->ticketFields:Ljava/util/List;

    .line 158
    iput-object v0, p0, Lcom/zendesk/api/model/account/TicketFields;->activeCustomFields:Ljava/util/List;

    .line 159
    return-void

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
