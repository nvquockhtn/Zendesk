.class Lcom/urbanairship/analytics/ActivityState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/analytics/ActivityState$State;
    }
.end annotation


# instance fields
.field private final activityName:Ljava/lang/String;

.field private analyticsEnabled:Z

.field private autoInstrumentedState:Lcom/urbanairship/analytics/ActivityState$State;

.field private currentSdkVersion:I

.field private manualInstrumentedState:Lcom/urbanairship/analytics/ActivityState$State;

.field private minSdkVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/urbanairship/analytics/ActivityState$State;->NONE:Lcom/urbanairship/analytics/ActivityState$State;

    iput-object v0, p0, Lcom/urbanairship/analytics/ActivityState;->autoInstrumentedState:Lcom/urbanairship/analytics/ActivityState$State;

    sget-object v0, Lcom/urbanairship/analytics/ActivityState$State;->NONE:Lcom/urbanairship/analytics/ActivityState$State;

    iput-object v0, p0, Lcom/urbanairship/analytics/ActivityState;->manualInstrumentedState:Lcom/urbanairship/analytics/ActivityState$State;

    iput-object p1, p0, Lcom/urbanairship/analytics/ActivityState;->activityName:Ljava/lang/String;

    iput p2, p0, Lcom/urbanairship/analytics/ActivityState;->minSdkVersion:I

    iput p3, p0, Lcom/urbanairship/analytics/ActivityState;->currentSdkVersion:I

    iput-boolean p4, p0, Lcom/urbanairship/analytics/ActivityState;->analyticsEnabled:Z

    return-void
.end method


# virtual methods
.method isForeground()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/urbanairship/analytics/ActivityState;->currentSdkVersion:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/urbanairship/analytics/ActivityState;->autoInstrumentedState:Lcom/urbanairship/analytics/ActivityState$State;

    sget-object v3, Lcom/urbanairship/analytics/ActivityState$State;->STARTED:Lcom/urbanairship/analytics/ActivityState$State;

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/urbanairship/analytics/ActivityState;->manualInstrumentedState:Lcom/urbanairship/analytics/ActivityState$State;

    sget-object v3, Lcom/urbanairship/analytics/ActivityState$State;->STARTED:Lcom/urbanairship/analytics/ActivityState$State;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method setStarted(Lcom/urbanairship/analytics/ActivityMonitor$Source;)V
    .locals 2

    sget-object v0, Lcom/urbanairship/analytics/ActivityMonitor$Source;->MANUAL_INSTRUMENTATION:Lcom/urbanairship/analytics/ActivityMonitor$Source;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityState;->manualInstrumentedState:Lcom/urbanairship/analytics/ActivityState$State;

    sget-object v1, Lcom/urbanairship/analytics/ActivityState$State;->STARTED:Lcom/urbanairship/analytics/ActivityState$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/urbanairship/analytics/ActivityState;->analyticsEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/analytics/ActivityState;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " already added without being removed first. Call UAirship.shared().getAnalytics().activityStopped in every activity\'s onStop() method."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/urbanairship/analytics/ActivityState$State;->STARTED:Lcom/urbanairship/analytics/ActivityState$State;

    iput-object v0, p0, Lcom/urbanairship/analytics/ActivityState;->manualInstrumentedState:Lcom/urbanairship/analytics/ActivityState$State;

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/urbanairship/analytics/ActivityState$State;->STARTED:Lcom/urbanairship/analytics/ActivityState$State;

    iput-object v0, p0, Lcom/urbanairship/analytics/ActivityState;->autoInstrumentedState:Lcom/urbanairship/analytics/ActivityState$State;

    goto :goto_0
.end method

.method setStopped(Lcom/urbanairship/analytics/ActivityMonitor$Source;)V
    .locals 3

    const/16 v2, 0xe

    sget-object v0, Lcom/urbanairship/analytics/ActivityMonitor$Source;->MANUAL_INSTRUMENTATION:Lcom/urbanairship/analytics/ActivityMonitor$Source;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/urbanairship/analytics/ActivityState;->analyticsEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityState;->manualInstrumentedState:Lcom/urbanairship/analytics/ActivityState$State;

    sget-object v1, Lcom/urbanairship/analytics/ActivityState$State;->STARTED:Lcom/urbanairship/analytics/ActivityState$State;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/analytics/ActivityState;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " removed without being manually added first. Call UAirship.shared().getAnalytics().activityStarted in every activity\'s onStart() method."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/urbanairship/analytics/ActivityState$State;->STOPPED:Lcom/urbanairship/analytics/ActivityState$State;

    iput-object v0, p0, Lcom/urbanairship/analytics/ActivityState;->manualInstrumentedState:Lcom/urbanairship/analytics/ActivityState$State;

    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lcom/urbanairship/analytics/ActivityState;->currentSdkVersion:I

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityState;->autoInstrumentedState:Lcom/urbanairship/analytics/ActivityState$State;

    sget-object v1, Lcom/urbanairship/analytics/ActivityState$State;->NONE:Lcom/urbanairship/analytics/ActivityState$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/urbanairship/analytics/ActivityState;->analyticsEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/analytics/ActivityState;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " removed in Analytics not during the activity\'s onStop() method."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/urbanairship/analytics/ActivityState;->minSdkVersion:I

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityState;->manualInstrumentedState:Lcom/urbanairship/analytics/ActivityState$State;

    sget-object v1, Lcom/urbanairship/analytics/ActivityState$State;->NONE:Lcom/urbanairship/analytics/ActivityState$State;

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/urbanairship/analytics/ActivityState;->analyticsEnabled:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/analytics/ActivityState;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was not manually added during onStart(). Call UAirship.shared().getAnalytics().activityStarted in every activity\'s onStart() method."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lcom/urbanairship/analytics/ActivityState$State;->STOPPED:Lcom/urbanairship/analytics/ActivityState$State;

    iput-object v0, p0, Lcom/urbanairship/analytics/ActivityState;->autoInstrumentedState:Lcom/urbanairship/analytics/ActivityState$State;

    goto :goto_1
.end method
