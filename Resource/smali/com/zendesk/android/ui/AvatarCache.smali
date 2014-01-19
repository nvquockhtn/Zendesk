.class public Lcom/zendesk/android/ui/AvatarCache;
.super Ljava/lang/Object;
.source "AvatarCache.java"


# instance fields
.field public final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zendesk/android/ui/AvatarCache;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public finished()V
    .locals 5

    .prologue
    .line 69
    iget-object v4, p0, Lcom/zendesk/android/ui/AvatarCache;->map:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 70
    .local v3, vals:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 71
    .local v2, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 72
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 76
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_1
    iget-object v4, p0, Lcom/zendesk/android/ui/AvatarCache;->map:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 77
    return-void
.end method

.method public declared-synchronized getBitmap(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/widget/ImageView;Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 9
    .parameter "filePath"
    .parameter "contentResolver"
    .parameter "imageView"
    .parameter "requiredTag"
    .parameter "uiHandler"

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zendesk/android/ui/AvatarCache;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/SoftReference;

    .line 26
    .local v8, bitmapRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    const/4 v7, 0x0

    .line 27
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_0

    .line 28
    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v7

    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    check-cast v7, Landroid/graphics/Bitmap;

    .line 30
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    if-nez v7, :cond_1

    .line 31
    new-instance v0, Lcom/zendesk/android/ui/AvatarCache$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/zendesk/android/ui/AvatarCache$1;-><init>(Lcom/zendesk/android/ui/AvatarCache;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;Landroid/widget/ImageView;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/zendesk/android/ui/AvatarCache$1;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :goto_0
    monitor-exit p0

    return-void

    .line 56
    :cond_1
    :try_start_1
    invoke-virtual {p3, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 25
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #bitmapRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 3
    .parameter "filePath"

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v2, p0, Lcom/zendesk/android/ui/AvatarCache;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 62
    .local v0, bitmapRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 65
    :cond_0
    return v1
.end method
