.class Lcom/zendesk/android/ui/AvatarCache$1;
.super Ljava/lang/Thread;
.source "AvatarCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ui/AvatarCache;->getBitmap(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/widget/ImageView;Ljava/lang/Object;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ui/AvatarCache;

.field final synthetic val$contentResolver:Landroid/content/ContentResolver;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$requiredTag:Ljava/lang/Object;

.field final synthetic val$uiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ui/AvatarCache;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;Landroid/widget/ImageView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/zendesk/android/ui/AvatarCache$1;->this$0:Lcom/zendesk/android/ui/AvatarCache;

    iput-object p2, p0, Lcom/zendesk/android/ui/AvatarCache$1;->val$contentResolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/zendesk/android/ui/AvatarCache$1;->val$filePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/zendesk/android/ui/AvatarCache$1;->val$requiredTag:Ljava/lang/Object;

    iput-object p5, p0, Lcom/zendesk/android/ui/AvatarCache$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/zendesk/android/ui/AvatarCache$1;->val$uiHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 35
    :try_start_0
    iget-object v4, p0, Lcom/zendesk/android/ui/AvatarCache$1;->val$contentResolver:Landroid/content/ContentResolver;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zendesk/android/ui/AvatarCache$1;->val$filePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 36
    .local v3, stream:Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 37
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 38
    .local v1, bitmapRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 39
    iget-object v4, p0, Lcom/zendesk/android/ui/AvatarCache$1;->this$0:Lcom/zendesk/android/ui/AvatarCache;

    iget-object v4, v4, Lcom/zendesk/android/ui/AvatarCache;->map:Ljava/util/Map;

    iget-object v5, p0, Lcom/zendesk/android/ui/AvatarCache$1;->val$filePath:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v4, p0, Lcom/zendesk/android/ui/AvatarCache$1;->val$requiredTag:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/zendesk/android/ui/AvatarCache$1;->val$requiredTag:Ljava/lang/Object;

    iget-object v5, p0, Lcom/zendesk/android/ui/AvatarCache$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 42
    :cond_0
    iget-object v4, p0, Lcom/zendesk/android/ui/AvatarCache$1;->val$uiHandler:Landroid/os/Handler;

    new-instance v5, Lcom/zendesk/android/ui/AvatarCache$1$1;

    invoke-direct {v5, p0, v0}, Lcom/zendesk/android/ui/AvatarCache$1$1;-><init>(Lcom/zendesk/android/ui/AvatarCache$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bitmapRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v3           #stream:Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v2

    .line 49
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 51
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
