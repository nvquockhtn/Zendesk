.class final enum Lcom/urbanairship/analytics/ActivityMonitor$Source;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/analytics/ActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/urbanairship/analytics/ActivityMonitor$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/urbanairship/analytics/ActivityMonitor$Source;

.field public static final enum AUTO_INSTRUMENTATION:Lcom/urbanairship/analytics/ActivityMonitor$Source;

.field public static final enum MANUAL_INSTRUMENTATION:Lcom/urbanairship/analytics/ActivityMonitor$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/urbanairship/analytics/ActivityMonitor$Source;

    const-string v1, "MANUAL_INSTRUMENTATION"

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/analytics/ActivityMonitor$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/analytics/ActivityMonitor$Source;->MANUAL_INSTRUMENTATION:Lcom/urbanairship/analytics/ActivityMonitor$Source;

    new-instance v0, Lcom/urbanairship/analytics/ActivityMonitor$Source;

    const-string v1, "AUTO_INSTRUMENTATION"

    invoke-direct {v0, v1, v3}, Lcom/urbanairship/analytics/ActivityMonitor$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/analytics/ActivityMonitor$Source;->AUTO_INSTRUMENTATION:Lcom/urbanairship/analytics/ActivityMonitor$Source;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/urbanairship/analytics/ActivityMonitor$Source;

    sget-object v1, Lcom/urbanairship/analytics/ActivityMonitor$Source;->MANUAL_INSTRUMENTATION:Lcom/urbanairship/analytics/ActivityMonitor$Source;

    aput-object v1, v0, v2

    sget-object v1, Lcom/urbanairship/analytics/ActivityMonitor$Source;->AUTO_INSTRUMENTATION:Lcom/urbanairship/analytics/ActivityMonitor$Source;

    aput-object v1, v0, v3

    sput-object v0, Lcom/urbanairship/analytics/ActivityMonitor$Source;->$VALUES:[Lcom/urbanairship/analytics/ActivityMonitor$Source;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/urbanairship/analytics/ActivityMonitor$Source;
    .locals 1

    const-class v0, Lcom/urbanairship/analytics/ActivityMonitor$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/analytics/ActivityMonitor$Source;

    return-object v0
.end method

.method public static values()[Lcom/urbanairship/analytics/ActivityMonitor$Source;
    .locals 1

    sget-object v0, Lcom/urbanairship/analytics/ActivityMonitor$Source;->$VALUES:[Lcom/urbanairship/analytics/ActivityMonitor$Source;

    invoke-virtual {v0}, [Lcom/urbanairship/analytics/ActivityMonitor$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/urbanairship/analytics/ActivityMonitor$Source;

    return-object v0
.end method
