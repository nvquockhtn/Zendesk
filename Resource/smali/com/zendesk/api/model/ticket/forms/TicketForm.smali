.class public Lcom/zendesk/api/model/ticket/forms/TicketForm;
.super Ljava/lang/Object;
.source "TicketForm.java"


# static fields
.field private static final KEY_ACTIVE:Ljava/lang/String; = "active"

.field private static final KEY_CREATED_DATE:Ljava/lang/String; = "created_at"

.field private static final KEY_DEFAULT:Ljava/lang/String; = "default"

.field private static final KEY_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field private static final KEY_END_USER_VISIBLE:Ljava/lang/String; = "end_user_visible"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_POSITION:Ljava/lang/String; = "position"

.field private static final KEY_TICKET_FIELD_IDS:Ljava/lang/String; = "ticket_field_ids"

.field private static final KEY_UPDATED_DATE:Ljava/lang/String; = "updated_at"

.field private static final KEY_URL:Ljava/lang/String; = "url"


# instance fields
.field private createdOn:Lcom/zendesk/api/model/shared/ZDDate;

.field private displayName:Ljava/lang/String;

.field private id:J

.field private isActive:Z

.field private isDefault:Z

.field private isEndUserVisible:Z

.field private name:Ljava/lang/String;

.field private position:I

.field private ticketFieldIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private ticketFormURL:Ljava/lang/String;

.field private updatedOn:Lcom/zendesk/api/model/shared/ZDDate;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "json"

    .prologue
    const/4 v6, 0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v4, "url"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zendesk/api/model/ticket/forms/TicketForm;->ticketFormURL:Ljava/lang/String;

    .line 81
    const-string v4, "id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zendesk/api/model/ticket/forms/TicketForm;->id:J

    .line 82
    const-string v4, "name"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zendesk/api/model/ticket/forms/TicketForm;->name:Ljava/lang/String;

    .line 83
    const-string v4, "display_name"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zendesk/api/model/ticket/forms/TicketForm;->displayName:Ljava/lang/String;

    .line 84
    const-string v4, "end_user_visible"

    invoke-virtual {p1, v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/zendesk/api/model/ticket/forms/TicketForm;->isEndUserVisible:Z

    .line 85
    const-string v4, "position"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/zendesk/api/model/ticket/forms/TicketForm;->position:I

    .line 86
    const-string v4, "active"

    invoke-virtual {p1, v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/zendesk/api/model/ticket/forms/TicketForm;->isActive:Z

    .line 87
    const-string v4, "default"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/zendesk/api/model/ticket/forms/TicketForm;->isDefault:Z

    .line 89
    new-instance v4, Lcom/zendesk/api/model/shared/ZDDate;

    const-string v5, "created_at"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/zendesk/api/model/shared/ZDDate;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/zendesk/api/model/ticket/forms/TicketForm;->createdOn:Lcom/zendesk/api/model/shared/ZDDate;

    .line 90
    new-instance v4, Lcom/zendesk/api/model/shared/ZDDate;

    const-string v5, "updated_at"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/zendesk/api/model/shared/ZDDate;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/zendesk/api/model/ticket/forms/TicketForm;->updatedOn:Lcom/zendesk/api/model/shared/ZDDate;

    .line 92
    const-string v4, "ticket_field_ids"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 93
    .local v0, arrayOfFieldIDs:Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/zendesk/api/model/ticket/forms/TicketForm;->ticketFieldIds:Ljava/util/List;

    .line 94
    if-eqz v0, :cond_0

    .line 95
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 97
    :try_start_0
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v1

    .line 98
    .local v1, fieldId:J
    iget-object v4, p0, Lcom/zendesk/api/model/ticket/forms/TicketForm;->ticketFieldIds:Ljava/util/List;

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1           #fieldId:J
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    .end local v3           #i:I
    :cond_0
    return-void

    .line 99
    .restart local v3       #i:I
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public getCreatedOn()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/forms/TicketForm;->createdOn:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/forms/TicketForm;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/zendesk/api/model/ticket/forms/TicketForm;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/forms/TicketForm;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/zendesk/api/model/ticket/forms/TicketForm;->position:I

    return v0
.end method

.method public getTicketFieldIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/forms/TicketForm;->ticketFieldIds:Ljava/util/List;

    return-object v0
.end method

.method public getTicketFormURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/forms/TicketForm;->ticketFormURL:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedOn()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/forms/TicketForm;->updatedOn:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/zendesk/api/model/ticket/forms/TicketForm;->isActive:Z

    return v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/zendesk/api/model/ticket/forms/TicketForm;->isDefault:Z

    return v0
.end method

.method public isEndUserVisible()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/zendesk/api/model/ticket/forms/TicketForm;->isEndUserVisible:Z

    return v0
.end method

.method public isPartOfTicketForm(J)Z
    .locals 4
    .parameter "ticketFieldId"

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/zendesk/api/model/ticket/forms/TicketForm;->getTicketFieldIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 189
    .local v1, tfId:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 190
    const/4 v2, 0x1

    .line 193
    .end local v1           #tfId:Ljava/lang/Long;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
