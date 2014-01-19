.class public Lcom/zendesk/api/model/ticket/audits/types/TicketChangeAuditEvent;
.super Lcom/zendesk/api/model/ticket/audits/AuditEvent;
.source "TicketChangeAuditEvent.java"


# static fields
.field private static final KEY_FIELD_NAME:Ljava/lang/String; = "field_name"

.field private static final KEY_PREVIOUS_VALUE:Ljava/lang/String; = "previous_value"

.field private static final KEY_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private fieldName:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "field_name"
    .end annotation
.end field

.field private previousValue:Ljava/util/List;
    .annotation runtime Lcom/zendesk/api/APIKey;
        altType = Ljava/lang/String;
        path = "previous_value"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private value:Ljava/util/List;
    .annotation runtime Lcom/zendesk/api/APIKey;
        altType = Ljava/lang/String;
        path = "value"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V
    .locals 5
    .parameter "baseModel"
    .parameter "json"
    .parameter "id"

    .prologue
    .line 42
    invoke-direct {p0, p1, p3}, Lcom/zendesk/api/model/ticket/audits/AuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V

    .line 43
    sget-object v3, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->CHANGE:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    iput-object v3, p0, Lcom/zendesk/api/model/ticket/audits/types/TicketChangeAuditEvent;->type:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 44
    const-string v3, "field_name"

    invoke-static {p2, v3}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/api/model/ticket/audits/types/TicketChangeAuditEvent;->fieldName:Ljava/lang/String;

    .line 46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/zendesk/api/model/ticket/audits/types/TicketChangeAuditEvent;->value:Ljava/util/List;

    .line 48
    const-string v3, "value"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 49
    .local v2, val:Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    .line 51
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 52
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/audits/types/TicketChangeAuditEvent;->value:Ljava/util/List;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .end local v0           #i:I
    :cond_0
    const-string v3, "value"

    invoke-static {p2, v3}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, stringVal:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 58
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/audits/types/TicketChangeAuditEvent;->value:Ljava/util/List;

    const-string v4, "value"

    invoke-static {p2, v4}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v1           #stringVal:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/zendesk/api/model/ticket/audits/types/TicketChangeAuditEvent;->previousValue:Ljava/util/List;

    .line 64
    const-string v3, "previous_value"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 65
    if-eqz v2, :cond_2

    .line 67
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 68
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/audits/types/TicketChangeAuditEvent;->previousValue:Ljava/util/List;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    .end local v0           #i:I
    :cond_2
    const-string v3, "previous_value"

    invoke-static {p2, v3}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .restart local v1       #stringVal:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 74
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/audits/types/TicketChangeAuditEvent;->previousValue:Ljava/util/List;

    const-string v4, "previous_value"

    invoke-static {p2, v4}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .end local v1           #stringVal:Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/TicketChangeAuditEvent;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/TicketChangeAuditEvent;->previousValue:Ljava/util/List;

    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/TicketChangeAuditEvent;->value:Ljava/util/List;

    return-object v0
.end method
