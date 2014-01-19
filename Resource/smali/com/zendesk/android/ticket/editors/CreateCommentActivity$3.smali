.class Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3;
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

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/editors/CreateCommentActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3;->this$0:Lcom/zendesk/android/ticket/editors/CreateCommentActivity;

    iput-object p2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 535
    :try_start_0
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3;->val$data:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 536
    .local v12, selectedImageUri:Landroid/net/Uri;
    new-instance v6, Lcom/zendesk/api/model/shared/Attachment;

    invoke-direct {v6}, Lcom/zendesk/api/model/shared/Attachment;-><init>()V

    .line 537
    .local v6, a:Lcom/zendesk/api/model/shared/Attachment;
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3;->this$0:Lcom/zendesk/android/ticket/editors/CreateCommentActivity;

    invoke-virtual {v1, v12}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 538
    .local v10, filepath:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 539
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {v6}, Lcom/zendesk/api/model/shared/Attachment;->getLocalFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 573
    :goto_0
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3;->this$0:Lcom/zendesk/android/ticket/editors/CreateCommentActivity;

    new-instance v2, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3$1;

    invoke-direct {v2, p0, v6}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3$1;-><init>(Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3;Lcom/zendesk/api/model/shared/Attachment;)V

    invoke-virtual {v1, v2}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 584
    .end local v6           #a:Lcom/zendesk/api/model/shared/Attachment;
    .end local v10           #filepath:Ljava/lang/String;
    .end local v12           #selectedImageUri:Landroid/net/Uri;
    :goto_1
    return-void

    .line 542
    .restart local v6       #a:Lcom/zendesk/api/model/shared/Attachment;
    .restart local v10       #filepath:Ljava/lang/String;
    .restart local v12       #selectedImageUri:Landroid/net/Uri;
    :cond_0
    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Lcom/zendesk/api/model/shared/Attachment;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 544
    .local v7, dst:Ljava/io/File;
    :try_start_1
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3;->this$0:Lcom/zendesk/android/ticket/editors/CreateCommentActivity;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    check-cast v11, Ljava/io/FileInputStream;

    .line 546
    .local v11, in:Ljava/io/FileInputStream;
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 547
    .local v0, inChannel:Ljava/nio/channels/FileChannel;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 548
    .local v9, fileOutputStream:Ljava/io/FileOutputStream;
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 550
    .local v5, outChannel:Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 552
    if-eqz v0, :cond_1

    .line 553
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 555
    :cond_1
    if-eqz v5, :cond_2

    .line 556
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 558
    :cond_2
    if-eqz v9, :cond_3

    .line 559
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 562
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->deleteOnExit()V

    .line 563
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/zendesk/api/model/shared/Attachment;->setSize(Ljava/lang/Long;)V

    .line 564
    invoke-virtual {v6}, Lcom/zendesk/api/model/shared/Attachment;->getLocalFilePath()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 552
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 553
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 555
    :cond_4
    if-eqz v5, :cond_5

    .line 556
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 558
    :cond_5
    if-eqz v9, :cond_6

    .line 559
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    throw v1
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 566
    .end local v0           #inChannel:Ljava/nio/channels/FileChannel;
    .end local v5           #outChannel:Ljava/nio/channels/FileChannel;
    .end local v9           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v11           #in:Ljava/io/FileInputStream;
    :catch_0
    move-exception v8

    .line 567
    .local v8, e:Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v1, "CreateCommentActivity"

    const-string v2, "Error creating file"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 568
    const/4 v10, 0x0

    goto :goto_0

    .line 581
    .end local v6           #a:Lcom/zendesk/api/model/shared/Attachment;
    .end local v7           #dst:Ljava/io/File;
    .end local v8           #e:Ljava/io/FileNotFoundException;
    .end local v10           #filepath:Ljava/lang/String;
    .end local v12           #selectedImageUri:Landroid/net/Uri;
    :catch_1
    move-exception v13

    .line 582
    .local v13, t:Ljava/lang/Throwable;
    const-string v1, "CreateCommentActivity"

    const-string v2, "Error adding attachment"

    invoke-static {v1, v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
