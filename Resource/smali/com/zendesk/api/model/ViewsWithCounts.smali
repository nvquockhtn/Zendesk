.class public Lcom/zendesk/api/model/ViewsWithCounts;
.super Lcom/zendesk/api/model/views/Views;
.source "ViewsWithCounts.java"


# static fields
.field private static COUNT_REFRESH_INTERVAL:J = 0x0L

.field private static final KEY_VALUE:Ljava/lang/String; = "value"

.field private static final KEY_VIEW_ID:Ljava/lang/String; = "view_id"

.field private static MAX_COUNT_RETRIES:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ViewsWithCounts"

.field private static final VIEW_COUNTS:Ljava/lang/String; = "view-counts"

.field private static final VIEW_COUNTS_KEY:Ljava/lang/String; = "view_counts"


# instance fields
.field private countsRetryCount:I

.field private lastCountsUpdate:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const/16 v0, 0xa

    sput v0, Lcom/zendesk/api/model/ViewsWithCounts;->MAX_COUNT_RETRIES:I

    .line 27
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/zendesk/api/model/ViewsWithCounts;->COUNT_REFRESH_INTERVAL:J

    return-void
.end method

.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;)V
    .locals 0
    .parameter "baseModel"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/zendesk/api/model/views/Views;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/api/model/ViewsWithCounts;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/zendesk/api/model/ViewsWithCounts;->viewsMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zendesk/api/model/ViewsWithCounts;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/zendesk/api/model/ViewsWithCounts;->countsRetryCount:I

    return p1
.end method

.method static synthetic access$108(Lcom/zendesk/api/model/ViewsWithCounts;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/zendesk/api/model/ViewsWithCounts;->countsRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zendesk/api/model/ViewsWithCounts;->countsRetryCount:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/zendesk/api/model/ViewsWithCounts;->MAX_COUNT_RETRIES:I

    return v0
.end method


# virtual methods
.method public declared-synchronized loadCounts(Lcom/zendesk/api/model/ResponseHandler;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ResponseHandler",
            "<",
            "Lcom/zendesk/api/model/views/Views;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, countsHandler:Lcom/zendesk/api/model/ResponseHandler;,"Lcom/zendesk/api/model/ResponseHandler<Lcom/zendesk/api/model/views/Views;>;"
    monitor-enter p0

    :try_start_0
    const-string v2, "view-counts"

    invoke-virtual {p0, v2, p1}, Lcom/zendesk/api/model/ViewsWithCounts;->addResponseHandler(Ljava/lang/String;Lcom/zendesk/api/model/ResponseHandler;)V

    .line 74
    invoke-virtual {p0}, Lcom/zendesk/api/model/ViewsWithCounts;->getSourceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [J

    .line 75
    .local v1, ids:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/zendesk/api/model/ViewsWithCounts;->getSourceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/zendesk/api/model/ViewsWithCounts;->getSourceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/views/View;

    invoke-virtual {v2}, Lcom/zendesk/api/model/views/View;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zendesk/api/model/ViewsWithCounts;->lastCountsUpdate:J

    .line 80
    invoke-virtual {p0}, Lcom/zendesk/api/model/ViewsWithCounts;->getSourceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 81
    const-string v2, "ViewsWithCounts"

    const-string v3, "Views countes requested for when no views loaded"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v2, "view-counts"

    invoke-virtual {p0, v2}, Lcom/zendesk/api/model/ViewsWithCounts;->respondSuccess(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :goto_1
    monitor-exit p0

    return-void

    .line 86
    :cond_1
    :try_start_1
    new-instance v2, Lcom/zendesk/api/model/ViewsWithCounts$1;

    invoke-direct {v2, p0, v1}, Lcom/zendesk/api/model/ViewsWithCounts$1;-><init>(Lcom/zendesk/api/model/ViewsWithCounts;[J)V

    invoke-virtual {v2}, Lcom/zendesk/api/model/ViewsWithCounts$1;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 73
    .end local v0           #i:I
    .end local v1           #ids:[J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setShouldLoadCounts()V
    .locals 2

    .prologue
    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zendesk/api/model/ViewsWithCounts;->lastCountsUpdate:J

    .line 65
    return-void
.end method

.method public shouldLoadCounts()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/zendesk/api/model/ViewsWithCounts;->lastCountsUpdate:J

    sget-wide v7, Lcom/zendesk/api/model/ViewsWithCounts;->COUNT_REFRESH_INTERVAL:J

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 56
    :goto_0
    return v2

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/zendesk/api/model/ViewsWithCounts;->getSourceList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/views/View;

    .line 54
    .local v1, v:Lcom/zendesk/api/model/views/View;
    invoke-virtual {v1}, Lcom/zendesk/api/model/views/View;->getCount()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 56
    .end local v1           #v:Lcom/zendesk/api/model/views/View;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
