.class public final enum Lcom/zendesk/api/model/users/UserType;
.super Ljava/lang/Enum;
.source "UserType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zendesk/api/model/users/UserType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zendesk/api/model/users/UserType;

.field public static final enum LOCAL:Lcom/zendesk/api/model/users/UserType;

.field public static final enum STANDARD:Lcom/zendesk/api/model/users/UserType;

.field public static final enum SYSTEM:Lcom/zendesk/api/model/users/UserType;

.field public static final enum UNKNOWN:Lcom/zendesk/api/model/users/UserType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/zendesk/api/model/users/UserType;

    const-string v1, "STANDARD"

    invoke-direct {v0, v1, v2}, Lcom/zendesk/api/model/users/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zendesk/api/model/users/UserType;->STANDARD:Lcom/zendesk/api/model/users/UserType;

    .line 17
    new-instance v0, Lcom/zendesk/api/model/users/UserType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/zendesk/api/model/users/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zendesk/api/model/users/UserType;->UNKNOWN:Lcom/zendesk/api/model/users/UserType;

    .line 21
    new-instance v0, Lcom/zendesk/api/model/users/UserType;

    const-string v1, "SYSTEM"

    invoke-direct {v0, v1, v4}, Lcom/zendesk/api/model/users/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zendesk/api/model/users/UserType;->SYSTEM:Lcom/zendesk/api/model/users/UserType;

    .line 25
    new-instance v0, Lcom/zendesk/api/model/users/UserType;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v5}, Lcom/zendesk/api/model/users/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zendesk/api/model/users/UserType;->LOCAL:Lcom/zendesk/api/model/users/UserType;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/zendesk/api/model/users/UserType;

    sget-object v1, Lcom/zendesk/api/model/users/UserType;->STANDARD:Lcom/zendesk/api/model/users/UserType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zendesk/api/model/users/UserType;->UNKNOWN:Lcom/zendesk/api/model/users/UserType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zendesk/api/model/users/UserType;->SYSTEM:Lcom/zendesk/api/model/users/UserType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zendesk/api/model/users/UserType;->LOCAL:Lcom/zendesk/api/model/users/UserType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/zendesk/api/model/users/UserType;->$VALUES:[Lcom/zendesk/api/model/users/UserType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zendesk/api/model/users/UserType;
    .locals 1
    .parameter "name"

    .prologue
    .line 8
    const-class v0, Lcom/zendesk/api/model/users/UserType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/users/UserType;

    return-object v0
.end method

.method public static values()[Lcom/zendesk/api/model/users/UserType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/zendesk/api/model/users/UserType;->$VALUES:[Lcom/zendesk/api/model/users/UserType;

    invoke-virtual {v0}, [Lcom/zendesk/api/model/users/UserType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zendesk/api/model/users/UserType;

    return-object v0
.end method
