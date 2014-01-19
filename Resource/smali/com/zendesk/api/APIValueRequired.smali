.class public final enum Lcom/zendesk/api/APIValueRequired;
.super Ljava/lang/Enum;
.source "APIValueRequired.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zendesk/api/APIValueRequired;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zendesk/api/APIValueRequired;

.field public static final enum IF_KEY:Lcom/zendesk/api/APIValueRequired;

.field public static final enum NEVER:Lcom/zendesk/api/APIValueRequired;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/zendesk/api/APIValueRequired;

    const-string v1, "IF_KEY"

    invoke-direct {v0, v1, v2}, Lcom/zendesk/api/APIValueRequired;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zendesk/api/APIValueRequired;->IF_KEY:Lcom/zendesk/api/APIValueRequired;

    .line 17
    new-instance v0, Lcom/zendesk/api/APIValueRequired;

    const-string v1, "NEVER"

    invoke-direct {v0, v1, v3}, Lcom/zendesk/api/APIValueRequired;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zendesk/api/APIValueRequired;

    sget-object v1, Lcom/zendesk/api/APIValueRequired;->IF_KEY:Lcom/zendesk/api/APIValueRequired;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zendesk/api/APIValueRequired;->$VALUES:[Lcom/zendesk/api/APIValueRequired;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zendesk/api/APIValueRequired;
    .locals 1
    .parameter "name"

    .prologue
    .line 8
    const-class v0, Lcom/zendesk/api/APIValueRequired;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/APIValueRequired;

    return-object v0
.end method

.method public static values()[Lcom/zendesk/api/APIValueRequired;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/zendesk/api/APIValueRequired;->$VALUES:[Lcom/zendesk/api/APIValueRequired;

    invoke-virtual {v0}, [Lcom/zendesk/api/APIValueRequired;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zendesk/api/APIValueRequired;

    return-object v0
.end method
