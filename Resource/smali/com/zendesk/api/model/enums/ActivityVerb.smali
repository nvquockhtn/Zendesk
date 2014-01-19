.class public final enum Lcom/zendesk/api/model/enums/ActivityVerb;
.super Ljava/lang/Enum;
.source "ActivityVerb.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zendesk/api/model/enums/ActivityVerb;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zendesk/api/model/enums/ActivityVerb;

.field public static final enum ASSIGNMENT:Lcom/zendesk/api/model/enums/ActivityVerb;

.field public static final enum COMMENT:Lcom/zendesk/api/model/enums/ActivityVerb;

.field public static final enum PRIORITY:Lcom/zendesk/api/model/enums/ActivityVerb;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/zendesk/api/model/enums/ActivityVerb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private apiVal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 17
    new-instance v2, Lcom/zendesk/api/model/enums/ActivityVerb;

    const-string v3, "ASSIGNMENT"

    const-string v4, "tickets.assignment"

    invoke-direct {v2, v3, v5, v4}, Lcom/zendesk/api/model/enums/ActivityVerb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/enums/ActivityVerb;->ASSIGNMENT:Lcom/zendesk/api/model/enums/ActivityVerb;

    .line 21
    new-instance v2, Lcom/zendesk/api/model/enums/ActivityVerb;

    const-string v3, "COMMENT"

    const-string v4, "tickets.comment"

    invoke-direct {v2, v3, v6, v4}, Lcom/zendesk/api/model/enums/ActivityVerb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/enums/ActivityVerb;->COMMENT:Lcom/zendesk/api/model/enums/ActivityVerb;

    .line 25
    new-instance v2, Lcom/zendesk/api/model/enums/ActivityVerb;

    const-string v3, "PRIORITY"

    const-string v4, "tickets.priority_increase"

    invoke-direct {v2, v3, v7, v4}, Lcom/zendesk/api/model/enums/ActivityVerb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/enums/ActivityVerb;->PRIORITY:Lcom/zendesk/api/model/enums/ActivityVerb;

    .line 12
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/zendesk/api/model/enums/ActivityVerb;

    sget-object v3, Lcom/zendesk/api/model/enums/ActivityVerb;->ASSIGNMENT:Lcom/zendesk/api/model/enums/ActivityVerb;

    aput-object v3, v2, v5

    sget-object v3, Lcom/zendesk/api/model/enums/ActivityVerb;->COMMENT:Lcom/zendesk/api/model/enums/ActivityVerb;

    aput-object v3, v2, v6

    sget-object v3, Lcom/zendesk/api/model/enums/ActivityVerb;->PRIORITY:Lcom/zendesk/api/model/enums/ActivityVerb;

    aput-object v3, v2, v7

    sput-object v2, Lcom/zendesk/api/model/enums/ActivityVerb;->$VALUES:[Lcom/zendesk/api/model/enums/ActivityVerb;

    .line 27
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/zendesk/api/model/enums/ActivityVerb;->lookup:Ljava/util/Map;

    .line 30
    const-class v2, Lcom/zendesk/api/model/enums/ActivityVerb;

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

    check-cast v1, Lcom/zendesk/api/model/enums/ActivityVerb;

    .line 31
    .local v1, s:Lcom/zendesk/api/model/enums/ActivityVerb;
    sget-object v2, Lcom/zendesk/api/model/enums/ActivityVerb;->lookup:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/zendesk/api/model/enums/ActivityVerb;->getApiVal()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 33
    .end local v1           #s:Lcom/zendesk/api/model/enums/ActivityVerb;
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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/zendesk/api/model/enums/ActivityVerb;->apiVal:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/zendesk/api/model/enums/ActivityVerb;
    .locals 1
    .parameter "apiVal"

    .prologue
    .line 57
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/zendesk/api/model/enums/ActivityVerb;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/enums/ActivityVerb;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zendesk/api/model/enums/ActivityVerb;
    .locals 1
    .parameter "name"

    .prologue
    .line 12
    const-class v0, Lcom/zendesk/api/model/enums/ActivityVerb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/enums/ActivityVerb;

    return-object v0
.end method

.method public static values()[Lcom/zendesk/api/model/enums/ActivityVerb;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/zendesk/api/model/enums/ActivityVerb;->$VALUES:[Lcom/zendesk/api/model/enums/ActivityVerb;

    invoke-virtual {v0}, [Lcom/zendesk/api/model/enums/ActivityVerb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zendesk/api/model/enums/ActivityVerb;

    return-object v0
.end method


# virtual methods
.method public getApiVal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zendesk/api/model/enums/ActivityVerb;->apiVal:Ljava/lang/String;

    return-object v0
.end method
