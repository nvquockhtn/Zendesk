.class public Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;
.super Lcom/zendesk/api/model/ticket/TicketFieldEntry;
.source "CcsTicketFieldEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/zendesk/api/model/users/User;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/account/TicketField;)V
    .locals 1
    .parameter "baseModel"
    .parameter "ticketField"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    .line 25
    iput-object p2, p0, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->ticketField:Lcom/zendesk/api/model/account/TicketField;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;->editedValue:Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/account/TicketField;Ljava/util/List;)V
    .locals 1
    .parameter "baseModel"
    .parameter "ticketField"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/BaseModel;",
            "Lcom/zendesk/api/model/account/TicketField;",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p3, value:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/users/User;>;"
    invoke-direct {p0, p1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    .line 38
    iput-object p2, p0, Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;->ticketField:Lcom/zendesk/api/model/account/TicketField;

    .line 39
    iput-object p3, p0, Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;->value:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;->editedValue:Ljava/lang/Object;

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;->getValue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;->setValue(Ljava/util/List;)V

    return-void
.end method

.method public setValue(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, value:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/users/User;>;"
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;->value:Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;->editedValue:Ljava/lang/Object;

    .line 47
    return-void
.end method
