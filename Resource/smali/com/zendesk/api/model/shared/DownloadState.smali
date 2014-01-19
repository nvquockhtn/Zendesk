.class public final enum Lcom/zendesk/api/model/shared/DownloadState;
.super Ljava/lang/Enum;
.source "DownloadState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zendesk/api/model/shared/DownloadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zendesk/api/model/shared/DownloadState;

.field public static final enum AVAILABLE:Lcom/zendesk/api/model/shared/DownloadState;

.field public static final enum DOWNLOADED:Lcom/zendesk/api/model/shared/DownloadState;

.field public static final enum LOCAL:Lcom/zendesk/api/model/shared/DownloadState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/zendesk/api/model/shared/DownloadState;

    const-string v1, "AVAILABLE"

    invoke-direct {v0, v1, v2}, Lcom/zendesk/api/model/shared/DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zendesk/api/model/shared/DownloadState;->AVAILABLE:Lcom/zendesk/api/model/shared/DownloadState;

    .line 17
    new-instance v0, Lcom/zendesk/api/model/shared/DownloadState;

    const-string v1, "DOWNLOADED"

    invoke-direct {v0, v1, v3}, Lcom/zendesk/api/model/shared/DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zendesk/api/model/shared/DownloadState;->DOWNLOADED:Lcom/zendesk/api/model/shared/DownloadState;

    .line 21
    new-instance v0, Lcom/zendesk/api/model/shared/DownloadState;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v4}, Lcom/zendesk/api/model/shared/DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zendesk/api/model/shared/DownloadState;->LOCAL:Lcom/zendesk/api/model/shared/DownloadState;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/zendesk/api/model/shared/DownloadState;

    sget-object v1, Lcom/zendesk/api/model/shared/DownloadState;->AVAILABLE:Lcom/zendesk/api/model/shared/DownloadState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zendesk/api/model/shared/DownloadState;->DOWNLOADED:Lcom/zendesk/api/model/shared/DownloadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zendesk/api/model/shared/DownloadState;->LOCAL:Lcom/zendesk/api/model/shared/DownloadState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/zendesk/api/model/shared/DownloadState;->$VALUES:[Lcom/zendesk/api/model/shared/DownloadState;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zendesk/api/model/shared/DownloadState;
    .locals 1
    .parameter "name"

    .prologue
    .line 8
    const-class v0, Lcom/zendesk/api/model/shared/DownloadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/shared/DownloadState;

    return-object v0
.end method

.method public static values()[Lcom/zendesk/api/model/shared/DownloadState;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/zendesk/api/model/shared/DownloadState;->$VALUES:[Lcom/zendesk/api/model/shared/DownloadState;

    invoke-virtual {v0}, [Lcom/zendesk/api/model/shared/DownloadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zendesk/api/model/shared/DownloadState;

    return-object v0
.end method
