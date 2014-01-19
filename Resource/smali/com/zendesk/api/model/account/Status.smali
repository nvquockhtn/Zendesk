.class public final enum Lcom/zendesk/api/model/account/Status;
.super Ljava/lang/Enum;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zendesk/api/model/account/Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zendesk/api/model/account/Status;

.field public static final enum CLOSED:Lcom/zendesk/api/model/account/Status;

.field public static final enum NEW:Lcom/zendesk/api/model/account/Status;

.field public static final enum ON_HOLD:Lcom/zendesk/api/model/account/Status;

.field public static final enum OPEN:Lcom/zendesk/api/model/account/Status;

.field public static final enum PENDING:Lcom/zendesk/api/model/account/Status;

.field public static final enum SOLVED:Lcom/zendesk/api/model/account/Status;

.field private static final existingTicketStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/account/Status;",
            ">;"
        }
    .end annotation
.end field

.field private static final existingTicketStatusOnHoldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/account/Status;",
            ">;"
        }
    .end annotation
.end field

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/zendesk/api/model/account/Status;",
            ">;"
        }
    .end annotation
.end field

.field private static final newTicketStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/account/Status;",
            ">;"
        }
    .end annotation
.end field

.field private static final newTicketStatusOnHoldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/account/Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private apiVal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 19
    new-instance v2, Lcom/zendesk/api/model/account/Status;

    const-string v3, "NEW"

    const-string v4, "new"

    invoke-direct {v2, v3, v6, v4}, Lcom/zendesk/api/model/account/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/Status;->NEW:Lcom/zendesk/api/model/account/Status;

    .line 23
    new-instance v2, Lcom/zendesk/api/model/account/Status;

    const-string v3, "OPEN"

    const-string v4, "open"

    invoke-direct {v2, v3, v7, v4}, Lcom/zendesk/api/model/account/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/Status;->OPEN:Lcom/zendesk/api/model/account/Status;

    .line 27
    new-instance v2, Lcom/zendesk/api/model/account/Status;

    const-string v3, "PENDING"

    const-string v4, "pending"

    invoke-direct {v2, v3, v8, v4}, Lcom/zendesk/api/model/account/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/Status;->PENDING:Lcom/zendesk/api/model/account/Status;

    .line 31
    new-instance v2, Lcom/zendesk/api/model/account/Status;

    const-string v3, "SOLVED"

    const-string v4, "solved"

    invoke-direct {v2, v3, v9, v4}, Lcom/zendesk/api/model/account/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/Status;->SOLVED:Lcom/zendesk/api/model/account/Status;

    .line 35
    new-instance v2, Lcom/zendesk/api/model/account/Status;

    const-string v3, "CLOSED"

    const-string v4, "closed"

    invoke-direct {v2, v3, v10, v4}, Lcom/zendesk/api/model/account/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/Status;->CLOSED:Lcom/zendesk/api/model/account/Status;

    .line 39
    new-instance v2, Lcom/zendesk/api/model/account/Status;

    const-string v3, "ON_HOLD"

    const/4 v4, 0x5

    const-string v5, "hold"

    invoke-direct {v2, v3, v4, v5}, Lcom/zendesk/api/model/account/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/Status;->ON_HOLD:Lcom/zendesk/api/model/account/Status;

    .line 14
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/zendesk/api/model/account/Status;

    sget-object v3, Lcom/zendesk/api/model/account/Status;->NEW:Lcom/zendesk/api/model/account/Status;

    aput-object v3, v2, v6

    sget-object v3, Lcom/zendesk/api/model/account/Status;->OPEN:Lcom/zendesk/api/model/account/Status;

    aput-object v3, v2, v7

    sget-object v3, Lcom/zendesk/api/model/account/Status;->PENDING:Lcom/zendesk/api/model/account/Status;

    aput-object v3, v2, v8

    sget-object v3, Lcom/zendesk/api/model/account/Status;->SOLVED:Lcom/zendesk/api/model/account/Status;

    aput-object v3, v2, v9

    sget-object v3, Lcom/zendesk/api/model/account/Status;->CLOSED:Lcom/zendesk/api/model/account/Status;

    aput-object v3, v2, v10

    const/4 v3, 0x5

    sget-object v4, Lcom/zendesk/api/model/account/Status;->ON_HOLD:Lcom/zendesk/api/model/account/Status;

    aput-object v4, v2, v3

    sput-object v2, Lcom/zendesk/api/model/account/Status;->$VALUES:[Lcom/zendesk/api/model/account/Status;

    .line 41
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/zendesk/api/model/account/Status;->lookup:Ljava/util/Map;

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/zendesk/api/model/account/Status;->newTicketStatusList:Ljava/util/List;

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/zendesk/api/model/account/Status;->newTicketStatusOnHoldList:Ljava/util/List;

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/zendesk/api/model/account/Status;->existingTicketStatusList:Ljava/util/List;

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/zendesk/api/model/account/Status;->existingTicketStatusOnHoldList:Ljava/util/List;

    .line 48
    const-class v2, Lcom/zendesk/api/model/account/Status;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/account/Status;

    .line 49
    .local v1, s:Lcom/zendesk/api/model/account/Status;
    sget-object v2, Lcom/zendesk/api/model/account/Status;->lookup:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/Status;->getApiVal()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 52
    .end local v1           #s:Lcom/zendesk/api/model/account/Status;
    :cond_0
    sget-object v2, Lcom/zendesk/api/model/account/Status;->newTicketStatusList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Status;->NEW:Lcom/zendesk/api/model/account/Status;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v2, Lcom/zendesk/api/model/account/Status;->newTicketStatusList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Status;->OPEN:Lcom/zendesk/api/model/account/Status;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v2, Lcom/zendesk/api/model/account/Status;->newTicketStatusList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Status;->PENDING:Lcom/zendesk/api/model/account/Status;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v2, Lcom/zendesk/api/model/account/Status;->newTicketStatusList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Status;->SOLVED:Lcom/zendesk/api/model/account/Status;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v2, Lcom/zendesk/api/model/account/Status;->newTicketStatusOnHoldList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Status;->NEW:Lcom/zendesk/api/model/account/Status;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v2, Lcom/zendesk/api/model/account/Status;->newTicketStatusOnHoldList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Status;->OPEN:Lcom/zendesk/api/model/account/Status;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v2, Lcom/zendesk/api/model/account/Status;->newTicketStatusOnHoldList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Status;->PENDING:Lcom/zendesk/api/model/account/Status;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v2, Lcom/zendesk/api/model/account/Status;->newTicketStatusOnHoldList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Status;->ON_HOLD:Lcom/zendesk/api/model/account/Status;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v2, Lcom/zendesk/api/model/account/Status;->newTicketStatusOnHoldList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Status;->SOLVED:Lcom/zendesk/api/model/account/Status;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v2, Lcom/zendesk/api/model/account/Status;->existingTicketStatusList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Status;->OPEN:Lcom/zendesk/api/model/account/Status;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v2, Lcom/zendesk/api/model/account/Status;->existingTicketStatusList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Status;->PENDING:Lcom/zendesk/api/model/account/Status;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v2, Lcom/zendesk/api/model/account/Status;->existingTicketStatusList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Status;->SOLVED:Lcom/zendesk/api/model/account/Status;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v2, Lcom/zendesk/api/model/account/Status;->existingTicketStatusOnHoldList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Status;->OPEN:Lcom/zendesk/api/model/account/Status;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v2, Lcom/zendesk/api/model/account/Status;->existingTicketStatusOnHoldList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Status;->PENDING:Lcom/zendesk/api/model/account/Status;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v2, Lcom/zendesk/api/model/account/Status;->existingTicketStatusOnHoldList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Status;->ON_HOLD:Lcom/zendesk/api/model/account/Status;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v2, Lcom/zendesk/api/model/account/Status;->existingTicketStatusOnHoldList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Status;->SOLVED:Lcom/zendesk/api/model/account/Status;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "apiVal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput-object p3, p0, Lcom/zendesk/api/model/account/Status;->apiVal:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/zendesk/api/model/account/Status;
    .locals 1
    .parameter "apiVal"

    .prologue
    .line 95
    sget-object v0, Lcom/zendesk/api/model/account/Status;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/account/Status;

    return-object v0
.end method

.method public static getExistingTicketStatusList(Z)Ljava/util/List;
    .locals 1
    .parameter "usesOnHold"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/account/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    if-eqz p0, :cond_0

    .line 119
    sget-object v0, Lcom/zendesk/api/model/account/Status;->existingTicketStatusOnHoldList:Ljava/util/List;

    .line 121
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/zendesk/api/model/account/Status;->existingTicketStatusList:Ljava/util/List;

    goto :goto_0
.end method

.method public static getNewTicketStatusList(Z)Ljava/util/List;
    .locals 1
    .parameter "usesOnHold"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/account/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    if-eqz p0, :cond_0

    .line 106
    sget-object v0, Lcom/zendesk/api/model/account/Status;->newTicketStatusOnHoldList:Ljava/util/List;

    .line 108
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/zendesk/api/model/account/Status;->newTicketStatusList:Ljava/util/List;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zendesk/api/model/account/Status;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/zendesk/api/model/account/Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/account/Status;

    return-object v0
.end method

.method public static values()[Lcom/zendesk/api/model/account/Status;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/zendesk/api/model/account/Status;->$VALUES:[Lcom/zendesk/api/model/account/Status;

    invoke-virtual {v0}, [Lcom/zendesk/api/model/account/Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zendesk/api/model/account/Status;

    return-object v0
.end method


# virtual methods
.method public getApiVal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/zendesk/api/model/account/Status;->apiVal:Ljava/lang/String;

    return-object v0
.end method
