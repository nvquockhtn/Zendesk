.class public final enum Lcom/zendesk/api/model/account/Priority;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zendesk/api/model/account/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zendesk/api/model/account/Priority;

.field public static final enum HIGH:Lcom/zendesk/api/model/account/Priority;

.field public static final enum LOW:Lcom/zendesk/api/model/account/Priority;

.field public static final enum NORMAL:Lcom/zendesk/api/model/account/Priority;

.field public static final enum UNSET:Lcom/zendesk/api/model/account/Priority;

.field public static final enum URGENT:Lcom/zendesk/api/model/account/Priority;

.field private static final existingPriorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/account/Priority;",
            ">;"
        }
    .end annotation
.end field

.field private static final existingRestrictedPriorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/account/Priority;",
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
            "Lcom/zendesk/api/model/account/Priority;",
            ">;"
        }
    .end annotation
.end field

.field private static final newPriorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/account/Priority;",
            ">;"
        }
    .end annotation
.end field

.field private static final newRestrictedPriorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/account/Priority;",
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
    new-instance v2, Lcom/zendesk/api/model/account/Priority;

    const-string v3, "UNSET"

    const-string v4, ""

    invoke-direct {v2, v3, v5, v4}, Lcom/zendesk/api/model/account/Priority;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/Priority;->UNSET:Lcom/zendesk/api/model/account/Priority;

    .line 23
    new-instance v2, Lcom/zendesk/api/model/account/Priority;

    const-string v3, "LOW"

    const-string v4, "low"

    invoke-direct {v2, v3, v6, v4}, Lcom/zendesk/api/model/account/Priority;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/Priority;->LOW:Lcom/zendesk/api/model/account/Priority;

    .line 27
    new-instance v2, Lcom/zendesk/api/model/account/Priority;

    const-string v3, "NORMAL"

    const-string v4, "normal"

    invoke-direct {v2, v3, v7, v4}, Lcom/zendesk/api/model/account/Priority;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/Priority;->NORMAL:Lcom/zendesk/api/model/account/Priority;

    .line 31
    new-instance v2, Lcom/zendesk/api/model/account/Priority;

    const-string v3, "HIGH"

    const-string v4, "high"

    invoke-direct {v2, v3, v8, v4}, Lcom/zendesk/api/model/account/Priority;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/Priority;->HIGH:Lcom/zendesk/api/model/account/Priority;

    .line 35
    new-instance v2, Lcom/zendesk/api/model/account/Priority;

    const-string v3, "URGENT"

    const-string v4, "urgent"

    invoke-direct {v2, v3, v9, v4}, Lcom/zendesk/api/model/account/Priority;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/Priority;->URGENT:Lcom/zendesk/api/model/account/Priority;

    .line 14
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/zendesk/api/model/account/Priority;

    sget-object v3, Lcom/zendesk/api/model/account/Priority;->UNSET:Lcom/zendesk/api/model/account/Priority;

    aput-object v3, v2, v5

    sget-object v3, Lcom/zendesk/api/model/account/Priority;->LOW:Lcom/zendesk/api/model/account/Priority;

    aput-object v3, v2, v6

    sget-object v3, Lcom/zendesk/api/model/account/Priority;->NORMAL:Lcom/zendesk/api/model/account/Priority;

    aput-object v3, v2, v7

    sget-object v3, Lcom/zendesk/api/model/account/Priority;->HIGH:Lcom/zendesk/api/model/account/Priority;

    aput-object v3, v2, v8

    sget-object v3, Lcom/zendesk/api/model/account/Priority;->URGENT:Lcom/zendesk/api/model/account/Priority;

    aput-object v3, v2, v9

    sput-object v2, Lcom/zendesk/api/model/account/Priority;->$VALUES:[Lcom/zendesk/api/model/account/Priority;

    .line 37
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/zendesk/api/model/account/Priority;->lookup:Ljava/util/Map;

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/zendesk/api/model/account/Priority;->newPriorityList:Ljava/util/List;

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/zendesk/api/model/account/Priority;->existingPriorityList:Ljava/util/List;

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/zendesk/api/model/account/Priority;->newRestrictedPriorityList:Ljava/util/List;

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/zendesk/api/model/account/Priority;->existingRestrictedPriorityList:Ljava/util/List;

    .line 45
    const-class v2, Lcom/zendesk/api/model/account/Priority;

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

    check-cast v1, Lcom/zendesk/api/model/account/Priority;

    .line 46
    .local v1, s:Lcom/zendesk/api/model/account/Priority;
    sget-object v2, Lcom/zendesk/api/model/account/Priority;->lookup:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/Priority;->getApiVal()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    .end local v1           #s:Lcom/zendesk/api/model/account/Priority;
    :cond_0
    sget-object v2, Lcom/zendesk/api/model/account/Priority;->newPriorityList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Priority;->UNSET:Lcom/zendesk/api/model/account/Priority;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v2, Lcom/zendesk/api/model/account/Priority;->newPriorityList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Priority;->LOW:Lcom/zendesk/api/model/account/Priority;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v2, Lcom/zendesk/api/model/account/Priority;->newPriorityList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Priority;->NORMAL:Lcom/zendesk/api/model/account/Priority;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v2, Lcom/zendesk/api/model/account/Priority;->newPriorityList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Priority;->HIGH:Lcom/zendesk/api/model/account/Priority;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v2, Lcom/zendesk/api/model/account/Priority;->newPriorityList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Priority;->URGENT:Lcom/zendesk/api/model/account/Priority;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v2, Lcom/zendesk/api/model/account/Priority;->newRestrictedPriorityList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Priority;->UNSET:Lcom/zendesk/api/model/account/Priority;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v2, Lcom/zendesk/api/model/account/Priority;->newRestrictedPriorityList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Priority;->NORMAL:Lcom/zendesk/api/model/account/Priority;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v2, Lcom/zendesk/api/model/account/Priority;->newRestrictedPriorityList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Priority;->HIGH:Lcom/zendesk/api/model/account/Priority;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v2, Lcom/zendesk/api/model/account/Priority;->existingPriorityList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Priority;->LOW:Lcom/zendesk/api/model/account/Priority;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v2, Lcom/zendesk/api/model/account/Priority;->existingPriorityList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Priority;->NORMAL:Lcom/zendesk/api/model/account/Priority;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v2, Lcom/zendesk/api/model/account/Priority;->existingPriorityList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Priority;->HIGH:Lcom/zendesk/api/model/account/Priority;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v2, Lcom/zendesk/api/model/account/Priority;->existingPriorityList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Priority;->URGENT:Lcom/zendesk/api/model/account/Priority;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v2, Lcom/zendesk/api/model/account/Priority;->existingRestrictedPriorityList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Priority;->NORMAL:Lcom/zendesk/api/model/account/Priority;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v2, Lcom/zendesk/api/model/account/Priority;->existingRestrictedPriorityList:Ljava/util/List;

    sget-object v3, Lcom/zendesk/api/model/account/Priority;->HIGH:Lcom/zendesk/api/model/account/Priority;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput-object p3, p0, Lcom/zendesk/api/model/account/Priority;->apiVal:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/zendesk/api/model/account/Priority;
    .locals 1
    .parameter "apiVal"

    .prologue
    .line 90
    if-eqz p0, :cond_0

    .line 91
    sget-object v0, Lcom/zendesk/api/model/account/Priority;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/account/Priority;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/zendesk/api/model/account/Priority;->UNSET:Lcom/zendesk/api/model/account/Priority;

    goto :goto_0
.end method

.method public static getExistingPriorityList(Ljava/lang/Integer;)Ljava/util/List;
    .locals 2
    .parameter "subtype"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/account/Priority;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 117
    sget-object v0, Lcom/zendesk/api/model/account/Priority;->existingRestrictedPriorityList:Ljava/util/List;

    .line 119
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/zendesk/api/model/account/Priority;->existingPriorityList:Ljava/util/List;

    goto :goto_0
.end method

.method public static getNewPriorityList(Ljava/lang/Integer;)Ljava/util/List;
    .locals 2
    .parameter "subtype"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/account/Priority;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 104
    sget-object v0, Lcom/zendesk/api/model/account/Priority;->newRestrictedPriorityList:Ljava/util/List;

    .line 106
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/zendesk/api/model/account/Priority;->newPriorityList:Ljava/util/List;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zendesk/api/model/account/Priority;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/zendesk/api/model/account/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/account/Priority;

    return-object v0
.end method

.method public static values()[Lcom/zendesk/api/model/account/Priority;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/zendesk/api/model/account/Priority;->$VALUES:[Lcom/zendesk/api/model/account/Priority;

    invoke-virtual {v0}, [Lcom/zendesk/api/model/account/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zendesk/api/model/account/Priority;

    return-object v0
.end method


# virtual methods
.method public getApiVal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/zendesk/api/model/account/Priority;->apiVal:Ljava/lang/String;

    return-object v0
.end method
