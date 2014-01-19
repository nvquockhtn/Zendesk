.class public final enum Lcom/zendesk/api/model/search/SearchResultType;
.super Ljava/lang/Enum;
.source "SearchResultType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zendesk/api/model/search/SearchResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zendesk/api/model/search/SearchResultType;

.field public static final enum GROUP:Lcom/zendesk/api/model/search/SearchResultType;

.field public static final enum ORGANIZATION:Lcom/zendesk/api/model/search/SearchResultType;

.field public static final enum TICKET:Lcom/zendesk/api/model/search/SearchResultType;

.field public static final enum TOPIC:Lcom/zendesk/api/model/search/SearchResultType;

.field public static final enum USER:Lcom/zendesk/api/model/search/SearchResultType;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/zendesk/api/model/search/SearchResultType;",
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

    .line 17
    new-instance v2, Lcom/zendesk/api/model/search/SearchResultType;

    const-string v3, "TICKET"

    const-string v4, "ticket"

    invoke-direct {v2, v3, v5, v4}, Lcom/zendesk/api/model/search/SearchResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/search/SearchResultType;->TICKET:Lcom/zendesk/api/model/search/SearchResultType;

    .line 21
    new-instance v2, Lcom/zendesk/api/model/search/SearchResultType;

    const-string v3, "TOPIC"

    const-string v4, "topic"

    invoke-direct {v2, v3, v6, v4}, Lcom/zendesk/api/model/search/SearchResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/search/SearchResultType;->TOPIC:Lcom/zendesk/api/model/search/SearchResultType;

    .line 25
    new-instance v2, Lcom/zendesk/api/model/search/SearchResultType;

    const-string v3, "USER"

    const-string v4, "user"

    invoke-direct {v2, v3, v7, v4}, Lcom/zendesk/api/model/search/SearchResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/search/SearchResultType;->USER:Lcom/zendesk/api/model/search/SearchResultType;

    .line 29
    new-instance v2, Lcom/zendesk/api/model/search/SearchResultType;

    const-string v3, "GROUP"

    const-string v4, "group"

    invoke-direct {v2, v3, v8, v4}, Lcom/zendesk/api/model/search/SearchResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/search/SearchResultType;->GROUP:Lcom/zendesk/api/model/search/SearchResultType;

    .line 33
    new-instance v2, Lcom/zendesk/api/model/search/SearchResultType;

    const-string v3, "ORGANIZATION"

    const-string v4, "organization"

    invoke-direct {v2, v3, v9, v4}, Lcom/zendesk/api/model/search/SearchResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/search/SearchResultType;->ORGANIZATION:Lcom/zendesk/api/model/search/SearchResultType;

    .line 12
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/zendesk/api/model/search/SearchResultType;

    sget-object v3, Lcom/zendesk/api/model/search/SearchResultType;->TICKET:Lcom/zendesk/api/model/search/SearchResultType;

    aput-object v3, v2, v5

    sget-object v3, Lcom/zendesk/api/model/search/SearchResultType;->TOPIC:Lcom/zendesk/api/model/search/SearchResultType;

    aput-object v3, v2, v6

    sget-object v3, Lcom/zendesk/api/model/search/SearchResultType;->USER:Lcom/zendesk/api/model/search/SearchResultType;

    aput-object v3, v2, v7

    sget-object v3, Lcom/zendesk/api/model/search/SearchResultType;->GROUP:Lcom/zendesk/api/model/search/SearchResultType;

    aput-object v3, v2, v8

    sget-object v3, Lcom/zendesk/api/model/search/SearchResultType;->ORGANIZATION:Lcom/zendesk/api/model/search/SearchResultType;

    aput-object v3, v2, v9

    sput-object v2, Lcom/zendesk/api/model/search/SearchResultType;->$VALUES:[Lcom/zendesk/api/model/search/SearchResultType;

    .line 35
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/zendesk/api/model/search/SearchResultType;->lookup:Ljava/util/Map;

    .line 38
    const-class v2, Lcom/zendesk/api/model/search/SearchResultType;

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

    check-cast v1, Lcom/zendesk/api/model/search/SearchResultType;

    .line 39
    .local v1, s:Lcom/zendesk/api/model/search/SearchResultType;
    sget-object v2, Lcom/zendesk/api/model/search/SearchResultType;->lookup:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/zendesk/api/model/search/SearchResultType;->getApiVal()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    .end local v1           #s:Lcom/zendesk/api/model/search/SearchResultType;
    :cond_0
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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lcom/zendesk/api/model/search/SearchResultType;->apiVal:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/zendesk/api/model/search/SearchResultType;
    .locals 1
    .parameter "apiVal"

    .prologue
    .line 66
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/zendesk/api/model/search/SearchResultType;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/search/SearchResultType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zendesk/api/model/search/SearchResultType;
    .locals 1
    .parameter "name"

    .prologue
    .line 12
    const-class v0, Lcom/zendesk/api/model/search/SearchResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/search/SearchResultType;

    return-object v0
.end method

.method public static values()[Lcom/zendesk/api/model/search/SearchResultType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/zendesk/api/model/search/SearchResultType;->$VALUES:[Lcom/zendesk/api/model/search/SearchResultType;

    invoke-virtual {v0}, [Lcom/zendesk/api/model/search/SearchResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zendesk/api/model/search/SearchResultType;

    return-object v0
.end method


# virtual methods
.method public getApiVal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zendesk/api/model/search/SearchResultType;->apiVal:Ljava/lang/String;

    return-object v0
.end method
