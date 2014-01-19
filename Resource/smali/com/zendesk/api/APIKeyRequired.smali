.class public final enum Lcom/zendesk/api/APIKeyRequired;
.super Ljava/lang/Enum;
.source "APIKeyRequired.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zendesk/api/APIKeyRequired;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zendesk/api/APIKeyRequired;

.field public static final enum ALWAYS:Lcom/zendesk/api/APIKeyRequired;

.field public static final enum IF_PARENT:Lcom/zendesk/api/APIKeyRequired;

.field public static final enum NEVER:Lcom/zendesk/api/APIKeyRequired;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/zendesk/api/APIKeyRequired;

    const-string v1, "ALWAYS"

    invoke-direct {v0, v1, v2}, Lcom/zendesk/api/APIKeyRequired;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zendesk/api/APIKeyRequired;->ALWAYS:Lcom/zendesk/api/APIKeyRequired;

    .line 17
    new-instance v0, Lcom/zendesk/api/APIKeyRequired;

    const-string v1, "IF_PARENT"

    invoke-direct {v0, v1, v3}, Lcom/zendesk/api/APIKeyRequired;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zendesk/api/APIKeyRequired;->IF_PARENT:Lcom/zendesk/api/APIKeyRequired;

    .line 21
    new-instance v0, Lcom/zendesk/api/APIKeyRequired;

    const-string v1, "NEVER"

    invoke-direct {v0, v1, v4}, Lcom/zendesk/api/APIKeyRequired;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/zendesk/api/APIKeyRequired;

    sget-object v1, Lcom/zendesk/api/APIKeyRequired;->ALWAYS:Lcom/zendesk/api/APIKeyRequired;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zendesk/api/APIKeyRequired;->IF_PARENT:Lcom/zendesk/api/APIKeyRequired;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;

    aput-object v1, v0, v4

    sput-object v0, Lcom/zendesk/api/APIKeyRequired;->$VALUES:[Lcom/zendesk/api/APIKeyRequired;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zendesk/api/APIKeyRequired;
    .locals 1
    .parameter "name"

    .prologue
    .line 8
    const-class v0, Lcom/zendesk/api/APIKeyRequired;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/APIKeyRequired;

    return-object v0
.end method

.method public static values()[Lcom/zendesk/api/APIKeyRequired;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/zendesk/api/APIKeyRequired;->$VALUES:[Lcom/zendesk/api/APIKeyRequired;

    invoke-virtual {v0}, [Lcom/zendesk/api/APIKeyRequired;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zendesk/api/APIKeyRequired;

    return-object v0
.end method
