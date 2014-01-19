.class public final enum Lcom/zendesk/api/model/account/TicketType;
.super Ljava/lang/Enum;
.source "TicketType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zendesk/api/model/account/TicketType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zendesk/api/model/account/TicketType;

.field public static final enum INCIDENT:Lcom/zendesk/api/model/account/TicketType;

.field public static final enum PROBLEM:Lcom/zendesk/api/model/account/TicketType;

.field public static final enum QUESTION:Lcom/zendesk/api/model/account/TicketType;

.field public static final enum TASK:Lcom/zendesk/api/model/account/TicketType;

.field public static final enum UNSET:Lcom/zendesk/api/model/account/TicketType;

.field private static final existingTicketTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/account/TicketType;",
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
            "Lcom/zendesk/api/model/account/TicketType;",
            ">;"
        }
    .end annotation
.end field

.field private static final newTicketTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/account/TicketType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private apiVal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 19
    new-instance v2, Lcom/zendesk/api/model/account/TicketType;

    const-string v3, "UNSET"

    const-string v4, ""

    invoke-direct {v2, v3, v5, v4}, Lcom/zendesk/api/model/account/TicketType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketType;->UNSET:Lcom/zendesk/api/model/account/TicketType;

    .line 23
    new-instance v2, Lcom/zendesk/api/model/account/TicketType;

    const-string v3, "QUESTION"

    const-string v4, "question"

    invoke-direct {v2, v3, v6, v4}, Lcom/zendesk/api/model/account/TicketType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketType;->QUESTION:Lcom/zendesk/api/model/account/TicketType;

    .line 27
    new-instance v2, Lcom/zendesk/api/model/account/TicketType;

    const-string v3, "INCIDENT"

    const-string v4, "incident"

    invoke-direct {v2, v3, v7, v4}, Lcom/zendesk/api/model/account/TicketType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketType;->INCIDENT:Lcom/zendesk/api/model/account/TicketType;

    .line 31
    new-instance v2, Lcom/zendesk/api/model/account/TicketType;

    const-string v3, "PROBLEM"

    const-string v4, "problem"

    invoke-direct {v2, v3, v8, v4}, Lcom/zendesk/api/model/account/TicketType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketType;->PROBLEM:Lcom/zendesk/api/model/account/TicketType;

    .line 35
    new-instance v2, Lcom/zendesk/api/model/account/TicketType;

    const-string v3, "TASK"

    const-string v4, "task"

    invoke-direct {v2, v3, v9, v4}, Lcom/zendesk/api/model/account/TicketType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketType;->TASK:Lcom/zendesk/api/model/account/TicketType;

    .line 14
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/zendesk/api/model/account/TicketType;

    sget-object v3, Lcom/zendesk/api/model/account/TicketType;->UNSET:Lcom/zendesk/api/model/account/TicketType;

    aput-object v3, v2, v5

    sget-object v3, Lcom/zendesk/api/model/account/TicketType;->QUESTION:Lcom/zendesk/api/model/account/TicketType;

    aput-object v3, v2, v6

    sget-object v3, Lcom/zendesk/api/model/account/TicketType;->INCIDENT:Lcom/zendesk/api/model/account/TicketType;

    aput-object v3, v2, v7

    sget-object v3, Lcom/zendesk/api/model/account/TicketType;->PROBLEM:Lcom/zendesk/api/model/account/TicketType;

    aput-object v3, v2, v8

    sget-object v3, Lcom/zendesk/api/model/account/TicketType;->TASK:Lcom/zendesk/api/model/account/TicketType;

    aput-object v3, v2, v9

    sput-object v2, Lcom/zendesk/api/model/account/TicketType;->$VALUES:[Lcom/zendesk/api/model/account/TicketType;

    .line 37
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/zendesk/api/model/account/TicketType;->lookup:Ljava/util/Map;

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/zendesk/api/model/account/TicketType;->newTicketTypeList:Ljava/util/List;

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/zendesk/api/model/account/TicketType;->existingTicketTypeList:Ljava/util/List;

    .line 42
    const-class v2, Lcom/zendesk/api/model/account/TicketType;

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

    check-cast v1, Lcom/zendesk/api/model/account/TicketType;

    .line 43
    .local v1, s:Lcom/zendesk/api/model/account/TicketType;
    sget-object v2, Lcom/zendesk/api/model/account/TicketType;->lookup:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketType;->getApiVal()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 46
    .end local v1           #s:Lcom/zendesk/api/model/account/TicketType;
    :cond_0
    sget-object v2, Lcom/zendesk/api/model/account/TicketType;->newTicketTypeList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/TicketType;->UNSET:Lcom/zendesk/api/model/account/TicketType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v2, Lcom/zendesk/api/model/account/TicketType;->newTicketTypeList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/TicketType;->QUESTION:Lcom/zendesk/api/model/account/TicketType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v2, Lcom/zendesk/api/model/account/TicketType;->newTicketTypeList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/TicketType;->INCIDENT:Lcom/zendesk/api/model/account/TicketType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v2, Lcom/zendesk/api/model/account/TicketType;->newTicketTypeList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/TicketType;->PROBLEM:Lcom/zendesk/api/model/account/TicketType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v2, Lcom/zendesk/api/model/account/TicketType;->newTicketTypeList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/TicketType;->TASK:Lcom/zendesk/api/model/account/TicketType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v2, Lcom/zendesk/api/model/account/TicketType;->existingTicketTypeList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/TicketType;->QUESTION:Lcom/zendesk/api/model/account/TicketType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v2, Lcom/zendesk/api/model/account/TicketType;->existingTicketTypeList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/TicketType;->INCIDENT:Lcom/zendesk/api/model/account/TicketType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v2, Lcom/zendesk/api/model/account/TicketType;->existingTicketTypeList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/TicketType;->PROBLEM:Lcom/zendesk/api/model/account/TicketType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v2, Lcom/zendesk/api/model/account/TicketType;->existingTicketTypeList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/TicketType;->TASK:Lcom/zendesk/api/model/account/TicketType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-object p3, p0, Lcom/zendesk/api/model/account/TicketType;->apiVal:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/zendesk/api/model/account/TicketType;
    .locals 1
    .parameter "apiVal"

    .prologue
    .line 80
    sget-object v0, Lcom/zendesk/api/model/account/TicketType;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/account/TicketType;

    return-object v0
.end method

.method public static getExistingTicketTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/account/TicketType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    sget-object v0, Lcom/zendesk/api/model/account/TicketType;->existingTicketTypeList:Ljava/util/List;

    return-object v0
.end method

.method public static getNewTicketTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/account/TicketType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    sget-object v0, Lcom/zendesk/api/model/account/TicketType;->newTicketTypeList:Ljava/util/List;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zendesk/api/model/account/TicketType;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/zendesk/api/model/account/TicketType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/account/TicketType;

    return-object v0
.end method

.method public static values()[Lcom/zendesk/api/model/account/TicketType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/zendesk/api/model/account/TicketType;->$VALUES:[Lcom/zendesk/api/model/account/TicketType;

    invoke-virtual {v0}, [Lcom/zendesk/api/model/account/TicketType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zendesk/api/model/account/TicketType;

    return-object v0
.end method


# virtual methods
.method public getApiVal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketType;->apiVal:Ljava/lang/String;

    return-object v0
.end method
