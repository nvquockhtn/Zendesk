.class public final enum Lcom/zendesk/api/model/users/Role;
.super Ljava/lang/Enum;
.source "Role.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zendesk/api/model/users/Role;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zendesk/api/model/users/Role;

.field public static final enum ADMINISTRATOR:Lcom/zendesk/api/model/users/Role;

.field public static final enum AGENT:Lcom/zendesk/api/model/users/Role;

.field public static final enum END_USER:Lcom/zendesk/api/model/users/Role;

.field public static final enum SYSTEM:Lcom/zendesk/api/model/users/Role;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/zendesk/api/model/users/Role;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private apiVal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 17
    new-instance v2, Lcom/zendesk/api/model/users/Role;

    const-string v3, "END_USER"

    const-string v4, "end-user"

    invoke-direct {v2, v3, v5, v4}, Lcom/zendesk/api/model/users/Role;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/users/Role;->END_USER:Lcom/zendesk/api/model/users/Role;

    .line 21
    new-instance v2, Lcom/zendesk/api/model/users/Role;

    const-string v3, "ADMINISTRATOR"

    const-string v4, "admin"

    invoke-direct {v2, v3, v6, v4}, Lcom/zendesk/api/model/users/Role;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/users/Role;->ADMINISTRATOR:Lcom/zendesk/api/model/users/Role;

    .line 25
    new-instance v2, Lcom/zendesk/api/model/users/Role;

    const-string v3, "AGENT"

    const-string v4, "agent"

    invoke-direct {v2, v3, v7, v4}, Lcom/zendesk/api/model/users/Role;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/users/Role;->AGENT:Lcom/zendesk/api/model/users/Role;

    .line 29
    new-instance v2, Lcom/zendesk/api/model/users/Role;

    const-string v3, "SYSTEM"

    const-string v4, "system"

    invoke-direct {v2, v3, v8, v4}, Lcom/zendesk/api/model/users/Role;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/users/Role;->SYSTEM:Lcom/zendesk/api/model/users/Role;

    .line 12
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/zendesk/api/model/users/Role;

    sget-object v3, Lcom/zendesk/api/model/users/Role;->END_USER:Lcom/zendesk/api/model/users/Role;

    aput-object v3, v2, v5

    sget-object v3, Lcom/zendesk/api/model/users/Role;->ADMINISTRATOR:Lcom/zendesk/api/model/users/Role;

    aput-object v3, v2, v6

    sget-object v3, Lcom/zendesk/api/model/users/Role;->AGENT:Lcom/zendesk/api/model/users/Role;

    aput-object v3, v2, v7

    sget-object v3, Lcom/zendesk/api/model/users/Role;->SYSTEM:Lcom/zendesk/api/model/users/Role;

    aput-object v3, v2, v8

    sput-object v2, Lcom/zendesk/api/model/users/Role;->$VALUES:[Lcom/zendesk/api/model/users/Role;

    .line 31
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/zendesk/api/model/users/Role;->lookup:Ljava/util/Map;

    .line 34
    const-class v2, Lcom/zendesk/api/model/users/Role;

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

    check-cast v1, Lcom/zendesk/api/model/users/Role;

    .line 35
    .local v1, s:Lcom/zendesk/api/model/users/Role;
    sget-object v2, Lcom/zendesk/api/model/users/Role;->lookup:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/zendesk/api/model/users/Role;->getApiVal()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 37
    .end local v1           #s:Lcom/zendesk/api/model/users/Role;
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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lcom/zendesk/api/model/users/Role;->apiVal:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/zendesk/api/model/users/Role;
    .locals 1
    .parameter "apiVal"

    .prologue
    .line 61
    sget-object v0, Lcom/zendesk/api/model/users/Role;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/users/Role;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zendesk/api/model/users/Role;
    .locals 1
    .parameter "name"

    .prologue
    .line 12
    const-class v0, Lcom/zendesk/api/model/users/Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/users/Role;

    return-object v0
.end method

.method public static values()[Lcom/zendesk/api/model/users/Role;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/zendesk/api/model/users/Role;->$VALUES:[Lcom/zendesk/api/model/users/Role;

    invoke-virtual {v0}, [Lcom/zendesk/api/model/users/Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zendesk/api/model/users/Role;

    return-object v0
.end method


# virtual methods
.method public getApiVal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zendesk/api/model/users/Role;->apiVal:Ljava/lang/String;

    return-object v0
.end method
