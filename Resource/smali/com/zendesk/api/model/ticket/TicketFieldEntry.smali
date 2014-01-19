.class public Lcom/zendesk/api/model/ticket/TicketFieldEntry;
.super Ljava/lang/Object;
.source "TicketFieldEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final KEY_TICKET_FIELD_ID:Ljava/lang/String; = "id"

.field static final KEY_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private baseModel:Lcom/zendesk/api/model/BaseModel;

.field protected editedValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field protected ticketField:Lcom/zendesk/api/model/account/TicketField;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "id"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field protected value:Ljava/lang/Object;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "value"
        type = Ljava/lang/String;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/zendesk/api/model/BaseModel;)V
    .locals 0
    .parameter "baseModel"

    .prologue
    .line 43
    .local p0, this:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->baseModel:Lcom/zendesk/api/model/BaseModel;

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/account/TicketField;)V
    .locals 0
    .parameter "baseModel"
    .parameter "ticketField"

    .prologue
    .line 53
    .local p0, this:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->baseModel:Lcom/zendesk/api/model/BaseModel;

    .line 55
    iput-object p2, p0, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->ticketField:Lcom/zendesk/api/model/account/TicketField;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Object;)V
    .locals 0
    .parameter "baseModel"
    .parameter "ticketField"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/BaseModel;",
            "Lcom/zendesk/api/model/account/TicketField;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<TE;>;"
    .local p3, value:Ljava/lang/Object;,"TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->baseModel:Lcom/zendesk/api/model/BaseModel;

    .line 67
    iput-object p2, p0, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->ticketField:Lcom/zendesk/api/model/account/TicketField;

    .line 68
    iput-object p3, p0, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->value:Ljava/lang/Object;

    .line 69
    iput-object p3, p0, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->editedValue:Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "baseModel"
    .parameter "json"

    .prologue
    .line 77
    .local p0, this:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->baseModel:Lcom/zendesk/api/model/BaseModel;

    .line 79
    invoke-virtual {p0, p2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->update(Lorg/json/JSONObject;)V

    .line 80
    return-void
.end method

.method public static getTicketFieldId(Lorg/json/JSONObject;)Ljava/lang/Long;
    .locals 1
    .parameter "json"

    .prologue
    .line 40
    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getEditedValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, this:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<TE;>;"
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->editedValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getTicketField()Lcom/zendesk/api/model/account/TicketField;
    .locals 1

    .prologue
    .line 131
    .local p0, this:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<TE;>;"
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->ticketField:Lcom/zendesk/api/model/account/TicketField;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, this:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<TE;>;"
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasBeenEdited()Z
    .locals 2

    .prologue
    .line 149
    .local p0, this:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<TE;>;"
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->value:Ljava/lang/Object;

    iget-object v1, p0, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->editedValue:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zendesk/api/model/ZDModelObject;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEditedValue(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, this:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<TE;>;"
    .local p1, editedValue:Ljava/lang/Object;,"TE;"
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->editedValue:Ljava/lang/Object;

    .line 123
    return-void
.end method

.method public setTicketField(Lcom/zendesk/api/model/account/TicketField;)V
    .locals 0
    .parameter "ticketField"

    .prologue
    .line 140
    .local p0, this:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<TE;>;"
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->ticketField:Lcom/zendesk/api/model/account/TicketField;

    .line 141
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, this:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<TE;>;"
    .local p1, value:Ljava/lang/Object;,"TE;"
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->value:Ljava/lang/Object;

    .line 104
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->editedValue:Ljava/lang/Object;

    .line 105
    return-void
.end method

.method update(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "json"

    .prologue
    .line 84
    .local p0, this:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<TE;>;"
    const-string v1, "id"

    invoke-static {p1, v1}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 85
    .local v0, ticketFieldId:Ljava/lang/Long;
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v1}, Lcom/zendesk/api/model/BaseModel;->getTicketFields()Lcom/zendesk/api/model/account/TicketFields;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zendesk/api/model/account/TicketFields;->getFieldForId(Ljava/lang/Long;)Lcom/zendesk/api/model/account/TicketField;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->ticketField:Lcom/zendesk/api/model/account/TicketField;

    .line 86
    return-void
.end method
