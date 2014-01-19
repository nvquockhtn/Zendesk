.class public final enum Lcom/zendesk/api/model/account/ViaChannel;
.super Ljava/lang/Enum;
.source "ViaChannel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zendesk/api/model/account/ViaChannel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zendesk/api/model/account/ViaChannel;

.field public static final enum API:Lcom/zendesk/api/model/account/ViaChannel;

.field public static final enum CHAT:Lcom/zendesk/api/model/account/ViaChannel;

.field public static final enum EMAIL:Lcom/zendesk/api/model/account/ViaChannel;

.field public static final enum FACEBOOK:Lcom/zendesk/api/model/account/ViaChannel;

.field public static final enum FORUM:Lcom/zendesk/api/model/account/ViaChannel;

.field public static final enum RULE:Lcom/zendesk/api/model/account/ViaChannel;

.field public static final enum SMS:Lcom/zendesk/api/model/account/ViaChannel;

.field public static final enum SYSTEM:Lcom/zendesk/api/model/account/ViaChannel;

.field public static final enum TWITTER:Lcom/zendesk/api/model/account/ViaChannel;

.field public static final enum VOICE:Lcom/zendesk/api/model/account/ViaChannel;

.field public static final enum WEB:Lcom/zendesk/api/model/account/ViaChannel;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/zendesk/api/model/account/ViaChannel;",
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
    new-instance v2, Lcom/zendesk/api/model/account/ViaChannel;

    const-string v3, "WEB"

    const-string v4, "web"

    invoke-direct {v2, v3, v6, v4}, Lcom/zendesk/api/model/account/ViaChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/ViaChannel;->WEB:Lcom/zendesk/api/model/account/ViaChannel;

    .line 23
    new-instance v2, Lcom/zendesk/api/model/account/ViaChannel;

    const-string v3, "EMAIL"

    const-string v4, "email"

    invoke-direct {v2, v3, v7, v4}, Lcom/zendesk/api/model/account/ViaChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/ViaChannel;->EMAIL:Lcom/zendesk/api/model/account/ViaChannel;

    .line 27
    new-instance v2, Lcom/zendesk/api/model/account/ViaChannel;

    const-string v3, "API"

    const-string v4, "api"

    invoke-direct {v2, v3, v8, v4}, Lcom/zendesk/api/model/account/ViaChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/ViaChannel;->API:Lcom/zendesk/api/model/account/ViaChannel;

    .line 31
    new-instance v2, Lcom/zendesk/api/model/account/ViaChannel;

    const-string v3, "RULE"

    const-string v4, "rule"

    invoke-direct {v2, v3, v9, v4}, Lcom/zendesk/api/model/account/ViaChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/ViaChannel;->RULE:Lcom/zendesk/api/model/account/ViaChannel;

    .line 35
    new-instance v2, Lcom/zendesk/api/model/account/ViaChannel;

    const-string v3, "FORUM"

    const-string v4, "forum"

    invoke-direct {v2, v3, v10, v4}, Lcom/zendesk/api/model/account/ViaChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/ViaChannel;->FORUM:Lcom/zendesk/api/model/account/ViaChannel;

    .line 39
    new-instance v2, Lcom/zendesk/api/model/account/ViaChannel;

    const-string v3, "TWITTER"

    const/4 v4, 0x5

    const-string v5, "twitter"

    invoke-direct {v2, v3, v4, v5}, Lcom/zendesk/api/model/account/ViaChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/ViaChannel;->TWITTER:Lcom/zendesk/api/model/account/ViaChannel;

    .line 43
    new-instance v2, Lcom/zendesk/api/model/account/ViaChannel;

    const-string v3, "CHAT"

    const/4 v4, 0x6

    const-string v5, "chat"

    invoke-direct {v2, v3, v4, v5}, Lcom/zendesk/api/model/account/ViaChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/ViaChannel;->CHAT:Lcom/zendesk/api/model/account/ViaChannel;

    .line 47
    new-instance v2, Lcom/zendesk/api/model/account/ViaChannel;

    const-string v3, "VOICE"

    const/4 v4, 0x7

    const-string v5, "voice"

    invoke-direct {v2, v3, v4, v5}, Lcom/zendesk/api/model/account/ViaChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/ViaChannel;->VOICE:Lcom/zendesk/api/model/account/ViaChannel;

    .line 51
    new-instance v2, Lcom/zendesk/api/model/account/ViaChannel;

    const-string v3, "SMS"

    const/16 v4, 0x8

    const-string v5, "sms"

    invoke-direct {v2, v3, v4, v5}, Lcom/zendesk/api/model/account/ViaChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/ViaChannel;->SMS:Lcom/zendesk/api/model/account/ViaChannel;

    .line 55
    new-instance v2, Lcom/zendesk/api/model/account/ViaChannel;

    const-string v3, "FACEBOOK"

    const/16 v4, 0x9

    const-string v5, "facebook"

    invoke-direct {v2, v3, v4, v5}, Lcom/zendesk/api/model/account/ViaChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/ViaChannel;->FACEBOOK:Lcom/zendesk/api/model/account/ViaChannel;

    .line 59
    new-instance v2, Lcom/zendesk/api/model/account/ViaChannel;

    const-string v3, "SYSTEM"

    const/16 v4, 0xa

    const-string v5, "system"

    invoke-direct {v2, v3, v4, v5}, Lcom/zendesk/api/model/account/ViaChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/ViaChannel;->SYSTEM:Lcom/zendesk/api/model/account/ViaChannel;

    .line 12
    const/16 v2, 0xb

    new-array v2, v2, [Lcom/zendesk/api/model/account/ViaChannel;

    sget-object v3, Lcom/zendesk/api/model/account/ViaChannel;->WEB:Lcom/zendesk/api/model/account/ViaChannel;

    aput-object v3, v2, v6

    sget-object v3, Lcom/zendesk/api/model/account/ViaChannel;->EMAIL:Lcom/zendesk/api/model/account/ViaChannel;

    aput-object v3, v2, v7

    sget-object v3, Lcom/zendesk/api/model/account/ViaChannel;->API:Lcom/zendesk/api/model/account/ViaChannel;

    aput-object v3, v2, v8

    sget-object v3, Lcom/zendesk/api/model/account/ViaChannel;->RULE:Lcom/zendesk/api/model/account/ViaChannel;

    aput-object v3, v2, v9

    sget-object v3, Lcom/zendesk/api/model/account/ViaChannel;->FORUM:Lcom/zendesk/api/model/account/ViaChannel;

    aput-object v3, v2, v10

    const/4 v3, 0x5

    sget-object v4, Lcom/zendesk/api/model/account/ViaChannel;->TWITTER:Lcom/zendesk/api/model/account/ViaChannel;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/zendesk/api/model/account/ViaChannel;->CHAT:Lcom/zendesk/api/model/account/ViaChannel;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/zendesk/api/model/account/ViaChannel;->VOICE:Lcom/zendesk/api/model/account/ViaChannel;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/zendesk/api/model/account/ViaChannel;->SMS:Lcom/zendesk/api/model/account/ViaChannel;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/zendesk/api/model/account/ViaChannel;->FACEBOOK:Lcom/zendesk/api/model/account/ViaChannel;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/zendesk/api/model/account/ViaChannel;->SYSTEM:Lcom/zendesk/api/model/account/ViaChannel;

    aput-object v4, v2, v3

    sput-object v2, Lcom/zendesk/api/model/account/ViaChannel;->$VALUES:[Lcom/zendesk/api/model/account/ViaChannel;

    .line 61
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/zendesk/api/model/account/ViaChannel;->lookup:Ljava/util/Map;

    .line 64
    const-class v2, Lcom/zendesk/api/model/account/ViaChannel;

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

    check-cast v1, Lcom/zendesk/api/model/account/ViaChannel;

    .line 65
    .local v1, s:Lcom/zendesk/api/model/account/ViaChannel;
    sget-object v2, Lcom/zendesk/api/model/account/ViaChannel;->lookup:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/ViaChannel;->getApiVal()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 67
    .end local v1           #s:Lcom/zendesk/api/model/account/ViaChannel;
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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput-object p3, p0, Lcom/zendesk/api/model/account/ViaChannel;->apiVal:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/zendesk/api/model/account/ViaChannel;
    .locals 1
    .parameter "apiVal"

    .prologue
    .line 91
    sget-object v0, Lcom/zendesk/api/model/account/ViaChannel;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/account/ViaChannel;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zendesk/api/model/account/ViaChannel;
    .locals 1
    .parameter "name"

    .prologue
    .line 12
    const-class v0, Lcom/zendesk/api/model/account/ViaChannel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/account/ViaChannel;

    return-object v0
.end method

.method public static values()[Lcom/zendesk/api/model/account/ViaChannel;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/zendesk/api/model/account/ViaChannel;->$VALUES:[Lcom/zendesk/api/model/account/ViaChannel;

    invoke-virtual {v0}, [Lcom/zendesk/api/model/account/ViaChannel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zendesk/api/model/account/ViaChannel;

    return-object v0
.end method


# virtual methods
.method public getApiVal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zendesk/api/model/account/ViaChannel;->apiVal:Ljava/lang/String;

    return-object v0
.end method
