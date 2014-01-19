.class public Lcom/urbanairship/richpush/RichPushInbox;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;,
        Lcom/urbanairship/richpush/RichPushInbox$Listener;
    }
.end annotation


# static fields
.field private static instance:Lcom/urbanairship/richpush/RichPushInbox;

.field private static final richPushMessageComparator:Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;


# instance fields
.field private executor:Ljava/util/concurrent/ExecutorService;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/richpush/RichPushInbox$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;

    invoke-direct {v0}, Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;-><init>()V

    sput-object v0, Lcom/urbanairship/richpush/RichPushInbox;->richPushMessageComparator:Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->listeners:Ljava/util/List;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushInbox;->buildCache()V

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushInbox;->registerDatabaseChangeReceiver()V

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/richpush/RichPushInbox;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushInbox;->notifyListeners()V

    return-void
.end method

.method static synthetic access$100(Lcom/urbanairship/richpush/RichPushInbox;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushInbox;->buildCache()V

    return-void
.end method

.method static synthetic access$200(Lcom/urbanairship/richpush/RichPushInbox;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private buildCache()V
    .locals 4

    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushResolver;->getAllUndeletedMessages()Landroid/database/Cursor;

    move-result-object v1

    new-instance v2, Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-direct {v2}, Lcom/urbanairship/richpush/RichPushMessageCache;-><init>()V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {v1}, Lcom/urbanairship/richpush/RichPushMessage;->messageFromCursor(Landroid/database/Cursor;)Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessage;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Lcom/urbanairship/richpush/RichPushMessageCache;->addMessage(Lcom/urbanairship/richpush/RichPushMessage;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    iput-object v2, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    return-void
.end method

.method private notifyListeners()V
    .locals 3

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->listeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/richpush/RichPushInbox$Listener;

    invoke-interface {v0}, Lcom/urbanairship/richpush/RichPushInbox$Listener;->onUpdateInbox()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private registerDatabaseChangeReceiver()V
    .locals 4

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/urbanairship/richpush/RichPushInbox$1;

    invoke-direct {v2, p0}, Lcom/urbanairship/richpush/RichPushInbox$1;-><init>(Lcom/urbanairship/richpush/RichPushInbox;)V

    new-instance v3, Lcom/urbanairship/richpush/RichPushInbox$2;

    invoke-direct {v3, p0, v1, v2}, Lcom/urbanairship/richpush/RichPushInbox$2;-><init>(Lcom/urbanairship/richpush/RichPushInbox;Landroid/os/Handler;Ljava/lang/Runnable;)V

    new-instance v1, Lcom/urbanairship/richpush/RichPushInbox$3;

    invoke-direct {v1, p0, v3}, Lcom/urbanairship/richpush/RichPushInbox$3;-><init>(Lcom/urbanairship/richpush/RichPushInbox;Ljava/lang/Runnable;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.urbanairship.richpush.DB_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static declared-synchronized shared()Lcom/urbanairship/richpush/RichPushInbox;
    .locals 2

    const-class v1, Lcom/urbanairship/richpush/RichPushInbox;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/urbanairship/richpush/RichPushInbox;->instance:Lcom/urbanairship/richpush/RichPushInbox;

    if-nez v0, :cond_0

    new-instance v0, Lcom/urbanairship/richpush/RichPushInbox;

    invoke-direct {v0}, Lcom/urbanairship/richpush/RichPushInbox;-><init>()V

    sput-object v0, Lcom/urbanairship/richpush/RichPushInbox;->instance:Lcom/urbanairship/richpush/RichPushInbox;

    :cond_0
    sget-object v0, Lcom/urbanairship/richpush/RichPushInbox;->instance:Lcom/urbanairship/richpush/RichPushInbox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addListener(Lcom/urbanairship/richpush/RichPushInbox$Listener;)V
    .locals 2

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->listeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteMessages(Ljava/util/Set;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v0, p1}, Lcom/urbanairship/richpush/RichPushResolver;->markMessagesDeleted(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessageCache;->getMessageCount()I

    move-result v0

    return v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/urbanairship/richpush/RichPushMessage;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v0, p1}, Lcom/urbanairship/richpush/RichPushMessageCache;->getMessage(Ljava/lang/String;)Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v0

    goto :goto_0
.end method

.method public getMessages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/richpush/RichPushMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessageCache;->getMessages()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/urbanairship/richpush/RichPushInbox;->richPushMessageComparator:Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public getReadCount()I
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessageCache;->getReadMessageCount()I

    move-result v0

    return v0
.end method

.method public getReadMessages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/richpush/RichPushMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessageCache;->getReadMessages()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/urbanairship/richpush/RichPushInbox;->richPushMessageComparator:Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public getUnreadCount()I
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessageCache;->getUnreadMessageCount()I

    move-result v0

    return v0
.end method

.method public getUnreadMessages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/richpush/RichPushMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessageCache;->getUnreadMessages()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/urbanairship/richpush/RichPushInbox;->richPushMessageComparator:Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public markMessagesRead(Ljava/util/Set;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v0, p1}, Lcom/urbanairship/richpush/RichPushResolver;->markMessagesRead(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public markMessagesUnread(Ljava/util/Set;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v0, p1}, Lcom/urbanairship/richpush/RichPushResolver;->markMessagesUnread(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public removeListener(Lcom/urbanairship/richpush/RichPushInbox$Listener;)V
    .locals 2

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->listeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
