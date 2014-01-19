.class public final enum Lcom/zendesk/api/model/users/IdentityType;
.super Ljava/lang/Enum;
.source "IdentityType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zendesk/api/model/users/IdentityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zendesk/api/model/users/IdentityType;

.field public static final enum EMAIL:Lcom/zendesk/api/model/users/IdentityType;

.field public static final enum FACEBOOK:Lcom/zendesk/api/model/users/IdentityType;

.field public static final enum GOOGLE:Lcom/zendesk/api/model/users/IdentityType;

.field public static final enum PHONE_NUMBER:Lcom/zendesk/api/model/users/IdentityType;

.field public static final enum TWITTER:Lcom/zendesk/api/model/users/IdentityType;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/zendesk/api/model/users/IdentityType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private apiVal:Ljava/lang/String;

.field private displayVal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 17
    new-instance v2, Lcom/zendesk/api/model/users/IdentityType;

    const-string v3, "EMAIL"

    const-string v4, "email"

    const-string v5, "Email"

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/zendesk/api/model/users/IdentityType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/users/IdentityType;->EMAIL:Lcom/zendesk/api/model/users/IdentityType;

    .line 21
    new-instance v2, Lcom/zendesk/api/model/users/IdentityType;

    const-string v3, "GOOGLE"

    const-string v4, "google"

    const-string v5, "Google"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/zendesk/api/model/users/IdentityType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/users/IdentityType;->GOOGLE:Lcom/zendesk/api/model/users/IdentityType;

    .line 25
    new-instance v2, Lcom/zendesk/api/model/users/IdentityType;

    const-string v3, "TWITTER"

    const-string v4, "twitter"

    const-string v5, "Twitter"

    invoke-direct {v2, v3, v8, v4, v5}, Lcom/zendesk/api/model/users/IdentityType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/users/IdentityType;->TWITTER:Lcom/zendesk/api/model/users/IdentityType;

    .line 29
    new-instance v2, Lcom/zendesk/api/model/users/IdentityType;

    const-string v3, "PHONE_NUMBER"

    const-string v4, "phone_number"

    const-string v5, "Phone Number"

    invoke-direct {v2, v3, v9, v4, v5}, Lcom/zendesk/api/model/users/IdentityType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/users/IdentityType;->PHONE_NUMBER:Lcom/zendesk/api/model/users/IdentityType;

    .line 33
    new-instance v2, Lcom/zendesk/api/model/users/IdentityType;

    const-string v3, "FACEBOOK"

    const-string v4, "facebook"

    const-string v5, "Facebook"

    invoke-direct {v2, v3, v10, v4, v5}, Lcom/zendesk/api/model/users/IdentityType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/users/IdentityType;->FACEBOOK:Lcom/zendesk/api/model/users/IdentityType;

    .line 12
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/zendesk/api/model/users/IdentityType;

    sget-object v3, Lcom/zendesk/api/model/users/IdentityType;->EMAIL:Lcom/zendesk/api/model/users/IdentityType;

    aput-object v3, v2, v6

    sget-object v3, Lcom/zendesk/api/model/users/IdentityType;->GOOGLE:Lcom/zendesk/api/model/users/IdentityType;

    aput-object v3, v2, v7

    sget-object v3, Lcom/zendesk/api/model/users/IdentityType;->TWITTER:Lcom/zendesk/api/model/users/IdentityType;

    aput-object v3, v2, v8

    sget-object v3, Lcom/zendesk/api/model/users/IdentityType;->PHONE_NUMBER:Lcom/zendesk/api/model/users/IdentityType;

    aput-object v3, v2, v9

    sget-object v3, Lcom/zendesk/api/model/users/IdentityType;->FACEBOOK:Lcom/zendesk/api/model/users/IdentityType;

    aput-object v3, v2, v10

    sput-object v2, Lcom/zendesk/api/model/users/IdentityType;->$VALUES:[Lcom/zendesk/api/model/users/IdentityType;

    .line 35
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/zendesk/api/model/users/IdentityType;->lookup:Ljava/util/Map;

    .line 38
    const-class v2, Lcom/zendesk/api/model/users/IdentityType;

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

    check-cast v1, Lcom/zendesk/api/model/users/IdentityType;

    .line 39
    .local v1, s:Lcom/zendesk/api/model/users/IdentityType;
    sget-object v2, Lcom/zendesk/api/model/users/IdentityType;->lookup:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/zendesk/api/model/users/IdentityType;->getApiVal()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    .end local v1           #s:Lcom/zendesk/api/model/users/IdentityType;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "apiVal"
    .parameter "displayVal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/zendesk/api/model/users/IdentityType;->apiVal:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/zendesk/api/model/users/IdentityType;->displayVal:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/zendesk/api/model/users/IdentityType;
    .locals 1
    .parameter "apiVal"

    .prologue
    .line 76
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/zendesk/api/model/users/IdentityType;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/users/IdentityType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zendesk/api/model/users/IdentityType;
    .locals 1
    .parameter "name"

    .prologue
    .line 12
    const-class v0, Lcom/zendesk/api/model/users/IdentityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/users/IdentityType;

    return-object v0
.end method

.method public static values()[Lcom/zendesk/api/model/users/IdentityType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/zendesk/api/model/users/IdentityType;->$VALUES:[Lcom/zendesk/api/model/users/IdentityType;

    invoke-virtual {v0}, [Lcom/zendesk/api/model/users/IdentityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zendesk/api/model/users/IdentityType;

    return-object v0
.end method


# virtual methods
.method public getApiVal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zendesk/api/model/users/IdentityType;->apiVal:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayVal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zendesk/api/model/users/IdentityType;->displayVal:Ljava/lang/String;

    return-object v0
.end method
