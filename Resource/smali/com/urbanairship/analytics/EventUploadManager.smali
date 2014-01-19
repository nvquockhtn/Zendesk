.class final Lcom/urbanairship/analytics/EventUploadManager;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_BATCH_SIZE:I = 0x19000

.field public static final LAST_SEND_KEY:Ljava/lang/String; = "LAST_SEND"

.field public static final MAX_BATCH_SIZE_KEY:Ljava/lang/String; = "MAX_BATCH_SIZE"

.field public static final MAX_TOTAL_DB_SIZE_KEY:Ljava/lang/String; = "MAX_TOTAL_DB_SIZE"

.field public static final MAX_UPLOAD_RETRY_INTERVAL_MS:I = 0x36ee80

.field public static final MAX_WAIT_KEY:Ljava/lang/String; = "MAX_WAIT"

.field public static final MAX_WAIT_MS:I = 0x240c8400

.field public static final MIN_BATCH_INTERVAL_KEY:Ljava/lang/String; = "MIN_BATCH_INTERVAL"

.field public static final MIN_BATCH_INTERVAL_MS:I = 0xea60


# instance fields
.field private backoffMs:J

.field private final batchSize:I

.field private final dataManager:Lcom/urbanairship/analytics/EventDataManager;

.field private lastSendTime:J

.field private maxBatchSize:I

.field private maxTotalDBSize:I

.field private maxWait:I

.field private minBatchInterval:I

.field private final prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;


# direct methods
.method public constructor <init>(Lcom/urbanairship/analytics/EventDataManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-direct {v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-direct {p0}, Lcom/urbanairship/analytics/EventUploadManager;->loadPrefs()V

    const v0, 0x19000

    iput v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->batchSize:I

    iput-object p1, p0, Lcom/urbanairship/analytics/EventUploadManager;->dataManager:Lcom/urbanairship/analytics/EventDataManager;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->backoffMs:J

    return-void
.end method

.method private loadPrefs()V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getMaxTotalDbSize()I

    move-result v0

    iput v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->maxTotalDBSize:I

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getMaxBatchSize()I

    move-result v0

    iput v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->maxBatchSize:I

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getMaxWait()I

    move-result v0

    iput v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->maxWait:I

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getMinBatchInterval()I

    move-result v0

    iput v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->minBatchInterval:I

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getLastSendTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->lastSendTime:J

    return-void
.end method

.method private saveHeaders(Lcom/urbanairship/restclient/Response;)V
    .locals 8

    const v3, 0x240c8400

    const v0, 0x4e2000

    const v2, 0x7d000

    const v4, 0xea60

    const-string v1, "X-UA-Max-Total"

    invoke-virtual {p1, v1}, Lcom/urbanairship/restclient/Response;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    const-string v5, "X-UA-Max-Batch"

    invoke-virtual {p1, v5}, Lcom/urbanairship/restclient/Response;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    const-string v6, "X-UA-Max-Wait"

    invoke-virtual {p1, v6}, Lcom/urbanairship/restclient/Response;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    const-string v7, "X-UA-Min-Batch-Interval"

    invoke-virtual {p1, v7}, Lcom/urbanairship/restclient/Response;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-gtz v1, :cond_7

    :goto_0
    iput v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->maxTotalDBSize:I

    :cond_0
    if-eqz v5, :cond_2

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gtz v0, :cond_1

    move v0, v2

    :cond_1
    iput v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->maxBatchSize:I

    :cond_2
    if-eqz v6, :cond_4

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gtz v0, :cond_3

    move v0, v3

    :cond_3
    iput v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->maxWait:I

    :cond_4
    if-eqz v7, :cond_6

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gtz v0, :cond_5

    move v0, v4

    :cond_5
    iput v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->minBatchInterval:I

    :cond_6
    invoke-direct {p0}, Lcom/urbanairship/analytics/EventUploadManager;->savePrefs()V

    return-void

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method private savePrefs()V
    .locals 3

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    iget v1, p0, Lcom/urbanairship/analytics/EventUploadManager;->maxTotalDBSize:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setMaxTotalDbSize(I)V

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    iget v1, p0, Lcom/urbanairship/analytics/EventUploadManager;->maxBatchSize:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setMaxBatchSize(I)V

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    iget v1, p0, Lcom/urbanairship/analytics/EventUploadManager;->maxWait:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setMaxWait(I)V

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    iget v1, p0, Lcom/urbanairship/analytics/EventUploadManager;->minBatchInterval:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setMinBatchInterval(I)V

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    iget-wide v1, p0, Lcom/urbanairship/analytics/EventUploadManager;->lastSendTime:J

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setLastSendTime(J)V

    return-void
.end method

.method private static scheduleEventUpload(J)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v0, p0, v3

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v0, "alarm"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/urbanairship/analytics/EventService;

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "com.urbanairship.analytics.SEND"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x800

    invoke-static {v3, v1, v4, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    move v0, v2

    goto :goto_0
.end method

.method private send(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string v1, "Send failed. No events."

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "No network connectivity available. Postponing analytics event updates."

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " events."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/urbanairship/analytics/EventRequestFactory;->createRequest(Ljava/util/Collection;)Lcom/urbanairship/restclient/Request;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending Analytics to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/urbanairship/restclient/Request;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/urbanairship/restclient/Request;->execute()Lcom/urbanairship/restclient/Response;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warp 9 response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/urbanairship/restclient/Response;->status()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/urbanairship/analytics/EventUploadManager;->saveHeaders(Lcom/urbanairship/restclient/Response;)V

    invoke-virtual {v1}, Lcom/urbanairship/restclient/Response;->status()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getLastSendTime()J
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getLastSendTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxTotalDBSize()I
    .locals 1

    iget v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->maxTotalDBSize:I

    return v0
.end method

.method protected upload()V
    .locals 7

    const-wide/16 v5, 0x0

    iget-wide v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->lastSendTime:J

    iget v2, p0, Lcom/urbanairship/analytics/EventUploadManager;->minBatchInterval:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/urbanairship/analytics/EventUploadManager;->backoffMs:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/urbanairship/analytics/EventUploadManager;->scheduleEventUpload(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->lastSendTime:J

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    iget-wide v1, p0, Lcom/urbanairship/analytics/EventUploadManager;->lastSendTime:J

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setLastSendTime(J)V

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->dataManager:Lcom/urbanairship/analytics/EventDataManager;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/EventDataManager;->getEventCount()I

    move-result v0

    if-gtz v0, :cond_2

    const-string v0, "No events to send. Ending analytics upload."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/urbanairship/analytics/EventUploadManager;->dataManager:Lcom/urbanairship/analytics/EventDataManager;

    invoke-virtual {v1}, Lcom/urbanairship/analytics/EventDataManager;->getDatabaseSize()I

    move-result v1

    div-int/2addr v1, v0

    iget-object v2, p0, Lcom/urbanairship/analytics/EventUploadManager;->dataManager:Lcom/urbanairship/analytics/EventDataManager;

    iget v3, p0, Lcom/urbanairship/analytics/EventUploadManager;->batchSize:I

    div-int v1, v3, v1

    invoke-virtual {v2, v1}, Lcom/urbanairship/analytics/EventDataManager;->getEvents(I)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/urbanairship/analytics/EventUploadManager;->send(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/urbanairship/analytics/EventUploadManager;->dataManager:Lcom/urbanairship/analytics/EventDataManager;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/analytics/EventDataManager;->deleteEvents(Ljava/util/Set;)Z

    iput-wide v5, p0, Lcom/urbanairship/analytics/EventUploadManager;->backoffMs:J

    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    :cond_3
    const-string v0, "Scheduling next event batch upload."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->lastSendTime:J

    iget v2, p0, Lcom/urbanairship/analytics/EventUploadManager;->minBatchInterval:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/urbanairship/analytics/EventUploadManager;->backoffMs:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/urbanairship/analytics/EventUploadManager;->scheduleEventUpload(J)Z

    goto :goto_0

    :cond_4
    iget-wide v3, p0, Lcom/urbanairship/analytics/EventUploadManager;->backoffMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    iget v3, p0, Lcom/urbanairship/analytics/EventUploadManager;->minBatchInterval:I

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/urbanairship/analytics/EventUploadManager;->backoffMs:J

    goto :goto_1

    :cond_5
    iget-wide v3, p0, Lcom/urbanairship/analytics/EventUploadManager;->backoffMs:J

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    const-wide/32 v5, 0x36ee80

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/urbanairship/analytics/EventUploadManager;->backoffMs:J

    goto :goto_1
.end method
