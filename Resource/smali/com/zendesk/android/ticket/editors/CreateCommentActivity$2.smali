.class Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;
.super Ljava/lang/Thread;
.source "CreateCommentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/editors/CreateCommentActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/editors/CreateCommentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;->this$0:Lcom/zendesk/android/ticket/editors/CreateCommentActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 492
    :try_start_0
    new-instance v0, Lcom/zendesk/api/model/shared/Attachment;

    invoke-direct {v0}, Lcom/zendesk/api/model/shared/Attachment;-><init>()V

    .line 494
    .local v0, a:Lcom/zendesk/api/model/shared/Attachment;
    iget-object v6, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;->this$0:Lcom/zendesk/android/ticket/editors/CreateCommentActivity;

    invoke-virtual {v6}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;->this$0:Lcom/zendesk/android/ticket/editors/CreateCommentActivity;

    #getter for: Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tempImageFileUri:Landroid/net/Uri;
    invoke-static {v7}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->access$100(Lcom/zendesk/android/ticket/editors/CreateCommentActivity;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 497
    .local v5, thumbnail:Landroid/graphics/Bitmap;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/zendesk/api/model/shared/Attachment;->getLocalFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 499
    .local v2, file:Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 501
    .local v1, fOut:Ljava/io/FileOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x5a

    invoke-virtual {v5, v6, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 503
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 504
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 506
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcom/zendesk/api/model/shared/Attachment;->getLocalFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    .local v3, newFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zendesk/api/model/shared/Attachment;->setSize(Ljava/lang/Long;)V

    .line 510
    iget-object v6, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;->this$0:Lcom/zendesk/android/ticket/editors/CreateCommentActivity;

    new-instance v7, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2$1;

    invoke-direct {v7, p0, v0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2$1;-><init>(Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;Lcom/zendesk/api/model/shared/Attachment;)V

    invoke-virtual {v6, v7}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    .end local v0           #a:Lcom/zendesk/api/model/shared/Attachment;
    .end local v1           #fOut:Ljava/io/FileOutputStream;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #newFile:Ljava/io/File;
    .end local v5           #thumbnail:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 521
    :catch_0
    move-exception v4

    .line 522
    .local v4, t:Ljava/lang/Throwable;
    const-string v6, "CreateCommentActivity"

    const-string v7, "Error adding attachment"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
