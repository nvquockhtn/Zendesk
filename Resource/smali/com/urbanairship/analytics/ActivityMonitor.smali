.class Lcom/urbanairship/analytics/ActivityMonitor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/analytics/ActivityMonitor$Delegate;,
        Lcom/urbanairship/analytics/ActivityMonitor$Source;
    }
.end annotation


# static fields
.field private static final BACKGROUND_DELAY_MS:I = 0x7d0


# instance fields
.field private activityStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/urbanairship/analytics/ActivityState;",
            ">;"
        }
    .end annotation
.end field

.field private analyticsEnabled:Z

.field private currentSdkVersion:I

.field private delegate:Lcom/urbanairship/analytics/ActivityMonitor$Delegate;

.field private isForeground:Z

.field private minSdkVersion:I


# direct methods
.method public constructor <init>(Lcom/urbanairship/analytics/ActivityMonitor$Delegate;IIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activityStates:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->isForeground:Z

    iput-object p1, p0, Lcom/urbanairship/analytics/ActivityMonitor;->delegate:Lcom/urbanairship/analytics/ActivityMonitor$Delegate;

    iput p2, p0, Lcom/urbanairship/analytics/ActivityMonitor;->minSdkVersion:I

    iput p3, p0, Lcom/urbanairship/analytics/ActivityMonitor;->currentSdkVersion:I

    iput-boolean p4, p0, Lcom/urbanairship/analytics/ActivityMonitor;->analyticsEnabled:Z

    return-void
.end method

.method private getActivityState(Landroid/app/Activity;)Lcom/urbanairship/analytics/ActivityState;
    .locals 5

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activityStates:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/analytics/ActivityState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/urbanairship/analytics/ActivityState;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/urbanairship/analytics/ActivityMonitor;->minSdkVersion:I

    iget v3, p0, Lcom/urbanairship/analytics/ActivityMonitor;->currentSdkVersion:I

    iget-boolean v4, p0, Lcom/urbanairship/analytics/ActivityMonitor;->analyticsEnabled:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/urbanairship/analytics/ActivityState;-><init>(Ljava/lang/String;IIZ)V

    iget-object v1, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activityStates:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public activityStarted(Landroid/app/Activity;Lcom/urbanairship/analytics/ActivityMonitor$Source;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/urbanairship/analytics/ActivityMonitor;->getActivityState(Landroid/app/Activity;)Lcom/urbanairship/analytics/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/urbanairship/analytics/ActivityState;->setStarted(Lcom/urbanairship/analytics/ActivityMonitor$Source;)V

    invoke-virtual {p0}, Lcom/urbanairship/analytics/ActivityMonitor;->updateForegroundState()V

    return-void
.end method

.method public activityStopped(Landroid/app/Activity;Lcom/urbanairship/analytics/ActivityMonitor$Source;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/urbanairship/analytics/ActivityMonitor;->getActivityState(Landroid/app/Activity;)Lcom/urbanairship/analytics/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/urbanairship/analytics/ActivityState;->setStopped(Lcom/urbanairship/analytics/ActivityMonitor$Source;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/urbanairship/analytics/ActivityMonitor$1;

    invoke-direct {v1, p0}, Lcom/urbanairship/analytics/ActivityMonitor$1;-><init>(Lcom/urbanairship/analytics/ActivityMonitor;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method updateForegroundState()V
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activityStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activityStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/analytics/ActivityState;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/ActivityState;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->isForeground:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->delegate:Lcom/urbanairship/analytics/ActivityMonitor$Delegate;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/ActivityMonitor$Delegate;->onForeground()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->isForeground:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->isForeground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->delegate:Lcom/urbanairship/analytics/ActivityMonitor$Delegate;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/ActivityMonitor$Delegate;->onBackground()V

    iput-boolean v2, p0, Lcom/urbanairship/analytics/ActivityMonitor;->isForeground:Z

    goto :goto_1
.end method
