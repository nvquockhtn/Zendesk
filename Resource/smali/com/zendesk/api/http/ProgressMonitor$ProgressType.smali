.class public final enum Lcom/zendesk/api/http/ProgressMonitor$ProgressType;
.super Ljava/lang/Enum;
.source "ProgressMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/http/ProgressMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgressType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zendesk/api/http/ProgressMonitor$ProgressType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zendesk/api/http/ProgressMonitor$ProgressType;

.field public static final enum INDETERMINATE:Lcom/zendesk/api/http/ProgressMonitor$ProgressType;

.field public static final enum MEASURABLE:Lcom/zendesk/api/http/ProgressMonitor$ProgressType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/zendesk/api/http/ProgressMonitor$ProgressType;

    const-string v1, "INDETERMINATE"

    invoke-direct {v0, v1, v2}, Lcom/zendesk/api/http/ProgressMonitor$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zendesk/api/http/ProgressMonitor$ProgressType;->INDETERMINATE:Lcom/zendesk/api/http/ProgressMonitor$ProgressType;

    .line 39
    new-instance v0, Lcom/zendesk/api/http/ProgressMonitor$ProgressType;

    const-string v1, "MEASURABLE"

    invoke-direct {v0, v1, v3}, Lcom/zendesk/api/http/ProgressMonitor$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zendesk/api/http/ProgressMonitor$ProgressType;->MEASURABLE:Lcom/zendesk/api/http/ProgressMonitor$ProgressType;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zendesk/api/http/ProgressMonitor$ProgressType;

    sget-object v1, Lcom/zendesk/api/http/ProgressMonitor$ProgressType;->INDETERMINATE:Lcom/zendesk/api/http/ProgressMonitor$ProgressType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zendesk/api/http/ProgressMonitor$ProgressType;->MEASURABLE:Lcom/zendesk/api/http/ProgressMonitor$ProgressType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zendesk/api/http/ProgressMonitor$ProgressType;->$VALUES:[Lcom/zendesk/api/http/ProgressMonitor$ProgressType;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zendesk/api/http/ProgressMonitor$ProgressType;
    .locals 1
    .parameter "name"

    .prologue
    .line 30
    const-class v0, Lcom/zendesk/api/http/ProgressMonitor$ProgressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/http/ProgressMonitor$ProgressType;

    return-object v0
.end method

.method public static values()[Lcom/zendesk/api/http/ProgressMonitor$ProgressType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/zendesk/api/http/ProgressMonitor$ProgressType;->$VALUES:[Lcom/zendesk/api/http/ProgressMonitor$ProgressType;

    invoke-virtual {v0}, [Lcom/zendesk/api/http/ProgressMonitor$ProgressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zendesk/api/http/ProgressMonitor$ProgressType;

    return-object v0
.end method
