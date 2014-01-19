.class public Lcom/zendesk/android/ticket/editors/CreateCommentActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "CreateCommentActivity.java"

# interfaces
.implements Lcom/zendesk/android/ui/ZDAlertUser;
.implements Lcom/zendesk/android/ticket/editors/EditTextImeBackListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CreateCommentActivity"


# instance fields
.field private adapter:Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;

.field private attachmentDialog:Z

.field private attachmentsArea:Landroid/widget/LinearLayout;

.field private attachmentsList:Landroid/widget/ListView;

.field private comment:Lcom/zendesk/api/model/ticket/audits/Comment;

.field private editText:Lcom/zendesk/android/ticket/editors/ZDEditText;

.field private isDescription:Z

.field private isRequestingToLeave:Z

.field private isRevertingChanges:Z

.field private loadingFrame:Landroid/widget/RelativeLayout;

.field private publicButton:Landroid/widget/Button;

.field private tempImageFile:Ljava/io/File;

.field private tempImageFileUri:Landroid/net/Uri;

.field private ticket:Lcom/zendesk/api/model/ticket/Ticket;

.field private tweetButton:Landroid/widget/LinearLayout;

.field private tweetButtonIcon:Landroid/widget/ImageView;

.field private tweetButtonText:Landroid/widget/TextView;

.field private tweetVerifyDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/ticket/editors/CreateCommentActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->checkEditState()V

    return-void
.end method

.method static synthetic access$100(Lcom/zendesk/android/ticket/editors/CreateCommentActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tempImageFileUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zendesk/android/ticket/editors/CreateCommentActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zendesk/android/ticket/editors/CreateCommentActivity;)Lcom/zendesk/api/model/ticket/audits/Comment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zendesk/android/ticket/editors/CreateCommentActivity;)Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->adapter:Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;

    return-object v0
.end method

.method private canLeave()Z
    .locals 5

    .prologue
    .line 262
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->editText:Lcom/zendesk/android/ticket/editors/ZDEditText;

    if-nez v2, :cond_0

    .line 263
    sget v2, Lcom/zendesk/android/R$id;->create_comment_text_entry:I

    invoke-virtual {p0, v2}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zendesk/android/ticket/editors/ZDEditText;

    iput-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->editText:Lcom/zendesk/android/ticket/editors/ZDEditText;

    .line 266
    :cond_0
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->editText:Lcom/zendesk/android/ticket/editors/ZDEditText;

    invoke-virtual {v2}, Lcom/zendesk/android/ticket/editors/ZDEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, txt:Ljava/lang/String;
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/audits/Comment;->getAttachments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {v1}, Lcom/zendesk/api/model/ZDModelObject;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    sget v2, Lcom/zendesk/android/R$string;->create_comment_comment_required_title:I

    sget v3, Lcom/zendesk/android/R$string;->create_comment_comment_required_msg:I

    invoke-virtual {p0, v3}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v2, v3, v4}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 272
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 273
    const/4 v2, 0x0

    .line 276
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkEditState()V
    .locals 0

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->supportInvalidateOptionsMenu()V

    .line 473
    return-void
.end method

.method private confirmRevertChanges()V
    .locals 5

    .prologue
    .line 388
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->isRevertingChanges:Z

    .line 389
    sget v1, Lcom/zendesk/android/R$string;->confirm_undo_comment_changes_title:I

    sget v2, Lcom/zendesk/android/R$string;->confirm_undo_comment_changes_msg:I

    invoke-virtual {p0, v2}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zendesk/android/R$string;->ok_action:I

    sget v4, Lcom/zendesk/android/R$string;->cancel_action:I

    invoke-static {v1, v2, v3, v4}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;II)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 391
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 392
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .parameter "src"
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 594
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 595
    .local v6, fileInputStream:Ljava/io/FileInputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 597
    .local v7, fileOutputStream:Ljava/io/FileOutputStream;
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 598
    .local v0, inChannel:Ljava/nio/channels/FileChannel;
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 601
    .local v5, outChannel:Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 606
    :cond_0
    if-eqz v5, :cond_1

    .line 607
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 609
    :cond_1
    if-eqz v6, :cond_2

    .line 610
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 612
    :cond_2
    if-eqz v7, :cond_3

    .line 613
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 617
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V

    .line 618
    return-void

    .line 603
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 604
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 606
    :cond_4
    if-eqz v5, :cond_5

    .line 607
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 609
    :cond_5
    if-eqz v6, :cond_6

    .line 610
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 612
    :cond_6
    if-eqz v7, :cond_7

    .line 613
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    throw v1
.end method

.method private hasCameraSupport()Z
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 715
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v12, 0x5

    if-ge v9, v12, :cond_1

    .line 717
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v12, "android.permission.CAMERA"

    invoke-virtual {v9, v12}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v8

    .line 718
    .local v8, response:I
    if-nez v8, :cond_0

    move v9, v10

    .line 746
    .end local v8           #response:I
    :goto_0
    return v9

    .restart local v8       #response:I
    :cond_0
    move v9, v11

    .line 718
    goto :goto_0

    .line 721
    .end local v8           #response:I
    :cond_1
    const/4 v5, 0x0

    .line 722
    .local v5, m:Ljava/lang/reflect/Method;
    const-class v9, Landroid/content/pm/PackageManager;

    invoke-virtual {v9}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 723
    .local v6, methods:[Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v9, v6

    if-ge v4, v9, :cond_3

    .line 724
    aget-object v9, v6, v4

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v12, "hasSystemFeature"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 725
    aget-object v5, v6, v4

    .line 723
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 728
    :cond_3
    if-eqz v5, :cond_6

    .line 729
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 730
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 732
    .local v1, featureAvailable:Z
    const/4 v9, 0x1

    :try_start_0
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "android.hardware.camera"

    aput-object v13, v9, v12

    invoke-virtual {v5, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 733
    .local v2, hasCamera:Z
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "android.hardware.camera.front"

    aput-object v13, v9, v12

    invoke-virtual {v5, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 734
    .local v3, hasFrontCamera:Z
    if-nez v2, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    move v1, v10

    .end local v2           #hasCamera:Z
    .end local v3           #hasFrontCamera:Z
    :goto_2
    move v9, v1

    .line 743
    goto :goto_0

    .restart local v2       #hasCamera:Z
    .restart local v3       #hasFrontCamera:Z
    :cond_5
    move v1, v11

    .line 734
    goto :goto_2

    .line 736
    .end local v2           #hasCamera:Z
    .end local v3           #hasFrontCamera:Z
    :catch_0
    move-exception v0

    .line 737
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v9, "CreateCommentActivity"

    const-string v10, "Error invoking method using reflection"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 738
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 739
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v9, "CreateCommentActivity"

    const-string v10, "Error invoking method using reflection"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 740
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 741
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v9, "CreateCommentActivity"

    const-string v10, "Error invoking method using reflection"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    .end local v1           #featureAvailable:Z
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    :cond_6
    move v9, v11

    .line 746
    goto :goto_0
.end method

.method private hasChangesBeenMade()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 395
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->adapter:Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->adapter:Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;->getCount()I

    move-result v1

    if-gt v1, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->editText:Lcom/zendesk/android/ticket/editors/ZDEditText;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/editors/ZDEditText;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->editText:Lcom/zendesk/android/ticket/editors/ZDEditText;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/editors/ZDEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/audits/Comment;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private revertChanges()V
    .locals 5

    .prologue
    .line 399
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->adapter:Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->adapter:Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;

    invoke-virtual {v2}, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 401
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->adapter:Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;

    invoke-virtual {v2}, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 402
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->adapter:Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;

    invoke-virtual {v2, v1}, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;->getAttachment(I)Lcom/zendesk/api/model/shared/Attachment;

    move-result-object v0

    .line 403
    .local v0, a:Lcom/zendesk/api/model/shared/Attachment;
    if-eqz v0, :cond_0

    .line 404
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/audits/Comment;->getAttachments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 401
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    .end local v0           #a:Lcom/zendesk/api/model/shared/Attachment;
    :cond_1
    new-instance v2, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;

    sget v3, Lcom/zendesk/android/R$layout;->attachment_row:I

    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/audits/Comment;->getAttachments()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->adapter:Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;

    .line 408
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->attachmentsList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->adapter:Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 409
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->adapter:Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;

    invoke-virtual {v2}, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;->notifyDataSetChanged()V

    .line 411
    .end local v1           #i:I
    :cond_2
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->editText:Lcom/zendesk/android/ticket/editors/ZDEditText;

    invoke-virtual {v2}, Lcom/zendesk/android/ticket/editors/ZDEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 412
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getTemporaryComment()Lcom/zendesk/api/model/ticket/audits/Comment;

    move-result-object v2

    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    if-ne v2, v3, :cond_6

    .line 413
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->editText:Lcom/zendesk/android/ticket/editors/ZDEditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/zendesk/android/ticket/editors/ZDEditText;->setText(Ljava/lang/CharSequence;)V

    .line 415
    const/4 v1, 0x1

    .restart local v1       #i:I
    :goto_1
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->adapter:Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;

    invoke-virtual {v2}, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 416
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->adapter:Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;

    invoke-virtual {v2, v1}, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;->getAttachment(I)Lcom/zendesk/api/model/shared/Attachment;

    move-result-object v0

    .line 417
    .restart local v0       #a:Lcom/zendesk/api/model/shared/Attachment;
    if-eqz v0, :cond_3

    .line 418
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/audits/Comment;->getAttachments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 415
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 421
    .end local v0           #a:Lcom/zendesk/api/model/shared/Attachment;
    :cond_4
    new-instance v2, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;

    sget v3, Lcom/zendesk/android/R$layout;->attachment_row:I

    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/audits/Comment;->getAttachments()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->adapter:Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;

    .line 422
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->attachmentsList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->adapter:Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 423
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->adapter:Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;

    invoke-virtual {v2}, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;->notifyDataSetChanged()V

    .line 424
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/zendesk/api/model/ticket/audits/Comment;->setBody(Ljava/lang/String;)V

    .line 432
    .end local v1           #i:I
    :cond_5
    :goto_2
    return-void

    .line 426
    :cond_6
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/audits/Comment;->getBody()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/audits/Comment;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 427
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->editText:Lcom/zendesk/android/ticket/editors/ZDEditText;

    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/audits/Comment;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zendesk/android/ticket/editors/ZDEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 429
    :cond_7
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->editText:Lcom/zendesk/android/ticket/editors/ZDEditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/zendesk/android/ticket/editors/ZDEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private selectImage()V
    .locals 2

    .prologue
    .line 435
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 436
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const/16 v1, 0x7e2

    invoke-virtual {p0, v0, v1}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 438
    return-void
.end method

.method private setPublicButtonState()V
    .locals 2

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->isDescription:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->publicButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 201
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getPermissions()Lcom/zendesk/api/model/ticket/TicketPermissions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketPermissions;->canMakePublicComments()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/audits/Comment;->getIsPublic()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->publicButton:Landroid/widget/Button;

    sget v1, Lcom/zendesk/android/R$string;->create_comment_public:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 197
    :goto_1
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->publicButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/audits/Comment;->getIsPublic()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->publicButton:Landroid/widget/Button;

    sget v1, Lcom/zendesk/android/R$string;->create_comment_private:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->publicButton:Landroid/widget/Button;

    sget v1, Lcom/zendesk/android/R$string;->create_comment_private:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private setTwitterButtonState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 205
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButton:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 206
    sget v0, Lcom/zendesk/android/R$id;->create_comment_tweet_button:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButton:Landroid/widget/LinearLayout;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButtonIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 209
    sget v0, Lcom/zendesk/android/R$id;->create_comment_tweet_button_icon:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButtonIcon:Landroid/widget/ImageView;

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButtonText:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 212
    sget v0, Lcom/zendesk/android/R$id;->create_comment_tweet_button_text:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButtonText:Landroid/widget/TextView;

    .line 214
    :cond_2
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->isDescription:Z

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    :goto_0
    return-void

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getPermissions()Lcom/zendesk/api/model/ticket/TicketPermissions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketPermissions;->canMakePublicComments()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 217
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/audits/Comment;->getIsPublic()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 218
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getVia()Lcom/zendesk/api/model/shared/Via;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/shared/Via;->getChannel()Lcom/zendesk/api/model/account/ViaChannel;

    move-result-object v0

    sget-object v1, Lcom/zendesk/api/model/account/ViaChannel;->TWITTER:Lcom/zendesk/api/model/account/ViaChannel;

    if-ne v0, v1, :cond_5

    .line 219
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/audits/Comment;->getChannelBack()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButtonText:Landroid/widget/TextView;

    sget v1, Lcom/zendesk/android/R$string;->create_comment_dm_back:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 222
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto :goto_0

    .line 225
    :cond_4
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButtonText:Landroid/widget/TextView;

    sget v1, Lcom/zendesk/android/R$string;->create_comment_not_tweet_back:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 226
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto :goto_0

    .line 229
    :cond_5
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getVia()Lcom/zendesk/api/model/shared/Via;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/shared/Via;->getChannel()Lcom/zendesk/api/model/account/ViaChannel;

    move-result-object v0

    sget-object v1, Lcom/zendesk/api/model/account/ViaChannel;->TWITTER:Lcom/zendesk/api/model/account/ViaChannel;

    if-ne v0, v1, :cond_7

    .line 230
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/audits/Comment;->getChannelBack()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 232
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButtonText:Landroid/widget/TextView;

    sget v1, Lcom/zendesk/android/R$string;->create_comment_tweet_back:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 233
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto/16 :goto_0

    .line 236
    :cond_6
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButtonText:Landroid/widget/TextView;

    sget v1, Lcom/zendesk/android/R$string;->create_comment_not_tweet_back:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 237
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto/16 :goto_0

    .line 241
    :cond_7
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 244
    :cond_8
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 247
    :cond_9
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private takePhoto()V
    .locals 5

    .prologue
    .line 443
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 448
    .local v2, tempDir:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 450
    new-instance v2, Ljava/io/File;

    .end local v2           #tempDir:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Zendesk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    .restart local v2       #tempDir:Ljava/io/File;
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 455
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 458
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "temp.jpg"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tempImageFile:Ljava/io/File;

    .line 459
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tempImageFile:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tempImageFileUri:Landroid/net/Uri;

    .line 460
    const-string v3, "output"

    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tempImageFile:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 463
    const/16 v3, 0x7e3

    invoke-virtual {p0, v0, v3}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 467
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #tempDir:Ljava/io/File;
    :goto_1
    return-void

    .line 452
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v2       #tempDir:Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/io/File;

    .end local v2           #tempDir:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Zendesk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2       #tempDir:Ljava/io/File;
    goto :goto_0

    .line 464
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #tempDir:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 465
    .local v1, t:Ljava/lang/Throwable;
    const-string v3, "CreateCommentActivity"

    const-string v4, "Error starting camera"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateTicket()V
    .locals 2

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->isDescription:Z

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getDescriptionField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->editText:Lcom/zendesk/android/ticket/editors/ZDEditText;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/editors/ZDEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    .line 286
    :goto_0
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->setResult(I)V

    .line 287
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->editText:Lcom/zendesk/android/ticket/editors/ZDEditText;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/editors/ZDEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/ticket/audits/Comment;->setBody(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addAttachment(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 318
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->attachmentDialog:Z

    .line 319
    const/4 v0, -0x1

    .line 321
    .local v0, cameraStringId:I
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->hasCameraSupport()Z

    move-result v2

    .line 323
    .local v2, hasCameraSupport:Z
    if-eqz v2, :cond_0

    .line 324
    sget v0, Lcom/zendesk/android/R$string;->create_comment_camera:I

    .line 327
    :cond_0
    const/4 v3, -0x1

    sget v4, Lcom/zendesk/android/R$string;->create_comment_attachment_source:I

    invoke-virtual {p0, v4}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/zendesk/android/R$string;->create_comment_gallery:I

    invoke-static {v3, v4, v5, v0}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;II)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v1

    .line 329
    .local v1, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 331
    return-void
.end method

.method public createIU(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 87
    sget v1, Lcom/zendesk/android/R$layout;->activity_create_comment:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->setContentView(I)V

    .line 88
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->displayBackUp(Z)V

    .line 89
    sget v1, Lcom/zendesk/android/R$id;->create_comment_text_entry:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zendesk/android/ticket/editors/ZDEditText;

    iput-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->editText:Lcom/zendesk/android/ticket/editors/ZDEditText;

    .line 90
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->editText:Lcom/zendesk/android/ticket/editors/ZDEditText;

    invoke-virtual {v1, p0}, Lcom/zendesk/android/ticket/editors/ZDEditText;->setOnEditTextImeBackListener(Lcom/zendesk/android/ticket/editors/EditTextImeBackListener;)V

    .line 91
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->editText:Lcom/zendesk/android/ticket/editors/ZDEditText;

    invoke-virtual {v1, p0}, Lcom/zendesk/android/ticket/editors/ZDEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 92
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->editText:Lcom/zendesk/android/ticket/editors/ZDEditText;

    invoke-virtual {v1, p0}, Lcom/zendesk/android/ticket/editors/ZDEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->editText:Lcom/zendesk/android/ticket/editors/ZDEditText;

    new-instance v2, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$1;

    invoke-direct {v2, p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$1;-><init>(Lcom/zendesk/android/ticket/editors/CreateCommentActivity;)V

    invoke-virtual {v1, v2}, Lcom/zendesk/android/ticket/editors/ZDEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    sget v1, Lcom/zendesk/android/R$id;->create_comment_attachments_area:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->attachmentsArea:Landroid/widget/LinearLayout;

    .line 110
    sget v1, Lcom/zendesk/android/R$id;->create_comment_attachments_list:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->attachmentsList:Landroid/widget/ListView;

    .line 112
    sget v1, Lcom/zendesk/android/R$id;->loading_frame:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    .line 113
    sget v1, Lcom/zendesk/android/R$id;->loading_message_txt:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 114
    .local v0, loadingText:Landroid/widget/TextView;
    sget v1, Lcom/zendesk/android/R$string;->create_comment_image_compressing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 117
    sget v1, Lcom/zendesk/android/R$id;->create_comment_public_button:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->publicButton:Landroid/widget/Button;

    .line 118
    sget v1, Lcom/zendesk/android/R$id;->create_comment_tweet_button:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButton:Landroid/widget/LinearLayout;

    .line 119
    sget v1, Lcom/zendesk/android/R$id;->create_comment_tweet_button_icon:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButtonIcon:Landroid/widget/ImageView;

    .line 120
    sget v1, Lcom/zendesk/android/R$id;->create_comment_tweet_button_text:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetButtonText:Landroid/widget/TextView;

    .line 122
    return-void
.end method

.method public doNegativeClick()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 663
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetVerifyDialog:Z

    if-eqz v0, :cond_1

    .line 664
    iput-boolean v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetVerifyDialog:Z

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->attachmentDialog:Z

    if-eqz v0, :cond_2

    .line 666
    iput-boolean v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->attachmentDialog:Z

    .line 667
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->takePhoto()V

    goto :goto_0

    .line 668
    :cond_2
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->isRevertingChanges:Z

    if-eqz v0, :cond_0

    .line 669
    iput-boolean v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->isRevertingChanges:Z

    .line 670
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->isRequestingToLeave:Z

    if-eqz v0, :cond_0

    .line 671
    iput-boolean v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->isRequestingToLeave:Z

    goto :goto_0
.end method

.method public doPositiveClick()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 642
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetVerifyDialog:Z

    if-eqz v0, :cond_1

    .line 643
    iput-boolean v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetVerifyDialog:Z

    .line 644
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->updateTicket()V

    .line 645
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->finish()V

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->attachmentDialog:Z

    if-eqz v0, :cond_2

    .line 647
    iput-boolean v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->attachmentDialog:Z

    .line 648
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->selectImage()V

    goto :goto_0

    .line 649
    :cond_2
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->isRevertingChanges:Z

    if-eqz v0, :cond_0

    .line 650
    iput-boolean v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->isRevertingChanges:Z

    .line 651
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->revertChanges()V

    .line 652
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->isRequestingToLeave:Z

    if-eqz v0, :cond_0

    .line 653
    iput-boolean v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->isRequestingToLeave:Z

    .line 654
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->setResult(I)V

    .line 655
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->finish()V

    goto :goto_0
.end method

.method public getPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .parameter "uri"

    .prologue
    const/4 v9, -0x1

    const/4 v3, 0x0

    .line 622
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "picasa_id"

    aput-object v1, v2, v0

    .local v2, projection:[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 623
    invoke-virtual/range {v0 .. v5}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 624
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 625
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 626
    .local v6, column_index:I
    const-string v0, "picasa_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 628
    .local v7, column_index_pid:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 629
    if-eq v7, v9, :cond_1

    .line 636
    .end local v6           #column_index:I
    .end local v7           #column_index_pid:I
    :cond_0
    :goto_0
    return-object v3

    .line 631
    .restart local v6       #column_index:I
    .restart local v7       #column_index_pid:I
    :cond_1
    if-eq v6, v9, :cond_0

    .line 632
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public isLoggingIn()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public loginSuccess()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ticketFieldId"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 131
    .local v0, ticketFieldId:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->isDescription:Z

    .line 133
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ticketId"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 134
    .local v1, ticketId:Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "otitle"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, title:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {p0, v2}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    :goto_1
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/zendesk/api/model/cache/TicketCache;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->setTicket(Lcom/zendesk/api/model/ticket/Ticket;)V

    .line 141
    return-void

    .line 131
    .end local v1           #ticketId:Ljava/lang/Long;
    .end local v2           #title:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 138
    .restart local v1       #ticketId:Ljava/lang/Long;
    .restart local v2       #title:Ljava/lang/String;
    :cond_1
    sget v3, Lcom/zendesk/android/R$string;->create_comment_comment:I

    invoke-virtual {p0, v3}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->setTitle(I)V

    goto :goto_1
.end method

.method public ok(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->canLeave()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->editText:Lcom/zendesk/android/ticket/editors/ZDEditText;

    invoke-virtual {v2}, Lcom/zendesk/android/ticket/editors/ZDEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, txt:Ljava/lang/String;
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getVia()Lcom/zendesk/api/model/shared/Via;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getVia()Lcom/zendesk/api/model/shared/Via;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/shared/Via;->getChannel()Lcom/zendesk/api/model/account/ViaChannel;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/account/ViaChannel;->TWITTER:Lcom/zendesk/api/model/account/ViaChannel;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/audits/Comment;->getChannelBack()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 296
    if-eqz v1, :cond_1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->tweetVerifyDialog:Z

    .line 299
    const/4 v2, -0x1

    sget v3, Lcom/zendesk/android/R$string;->comment_tweet_verify:I

    invoke-virtual {p0, v3}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/zendesk/android/R$string;->yes_action:I

    sget v5, Lcom/zendesk/android/R$string;->no_action:I

    invoke-static {v2, v3, v4, v5}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;II)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 300
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 314
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    .end local v1           #txt:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 304
    .restart local v1       #txt:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8c

    if-le v2, v3, :cond_2

    .line 306
    sget v2, Lcom/zendesk/android/R$string;->comment_tweet_length:I

    invoke-virtual {p0, v2}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v2, v3}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(Ljava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 307
    .restart local v0       #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    goto :goto_0

    .line 311
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    :cond_2
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->updateTicket()V

    .line 312
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->finish()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 478
    invoke-super {p0, p1, p2, p3}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 480
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 481
    packed-switch p1, :pswitch_data_0

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 484
    :pswitch_0
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 488
    :cond_1
    new-instance v0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;

    invoke-direct {v0, p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;-><init>(Lcom/zendesk/android/ticket/editors/CreateCommentActivity;)V

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;->start()V

    goto :goto_0

    .line 531
    :pswitch_1
    new-instance v0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3;

    invoke-direct {v0, p0, p3}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3;-><init>(Lcom/zendesk/android/ticket/editors/CreateCommentActivity;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3;->start()V

    goto :goto_0

    .line 481
    :pswitch_data_0
    .packed-switch 0x7e2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 342
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    .line 343
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 344
    .local v0, inflator:Lcom/actionbarsherlock/view/MenuInflater;
    sget v1, Lcom/zendesk/android/R$menu;->comment_menu:I

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 345
    const/4 v1, 0x1

    return v1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 684
    if-eqz p2, :cond_0

    .line 685
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->attachmentsArea:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 688
    :cond_0
    return-void
.end method

.method public onImeBack(Lcom/zendesk/android/ticket/editors/ZDEditText;Ljava/lang/String;)V
    .locals 2
    .parameter "ctrl"
    .parameter "text"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->attachmentsArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 680
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 253
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->ok(Landroid/view/View;)V

    .line 255
    const/4 v0, 0x1

    .line 257
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 366
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 367
    .local v0, itemId:I
    sget v1, Lcom/zendesk/android/R$id;->comment_menu_undo:I

    if-ne v0, v1, :cond_1

    .line 369
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->confirmRevertChanges()V

    .line 384
    :cond_0
    :goto_0
    return v2

    .line 372
    :cond_1
    sget v1, Lcom/zendesk/android/R$id;->comment_menu_done:I

    if-ne v0, v1, :cond_2

    .line 373
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->ok(Landroid/view/View;)V

    goto :goto_0

    .line 374
    :cond_2
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->hasChangesBeenMade()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 376
    iput-boolean v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->isRequestingToLeave:Z

    .line 377
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->confirmRevertChanges()V

    goto :goto_0

    .line 379
    :cond_3
    const/16 v1, 0x3ea

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->setResult(I)V

    .line 380
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->finish()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 350
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    .line 351
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 353
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 354
    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    .line 355
    .local v1, item:Lcom/actionbarsherlock/view/MenuItem;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    .end local v0           #i:I
    .end local v1           #item:Lcom/actionbarsherlock/view/MenuItem;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->attachmentsArea:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 693
    const/4 v0, 0x0

    return v0
.end method

.method public setTicket(Lcom/zendesk/api/model/ticket/Ticket;)V
    .locals 3
    .parameter "ticket"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 149
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getTemporaryComment()Lcom/zendesk/api/model/ticket/audits/Comment;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    .line 150
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->isDescription:Z

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getDescriptionField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->editText:Lcom/zendesk/android/ticket/editors/ZDEditText;

    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getDescriptionField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/ticket/editors/ZDEditText;->append(Ljava/lang/CharSequence;)V

    .line 158
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->setPublicButtonState()V

    .line 159
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->setTwitterButtonState()V

    .line 161
    new-instance v0, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;

    sget v1, Lcom/zendesk/android/R$layout;->attachment_row:I

    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/audits/Comment;->getAttachments()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->adapter:Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;

    .line 162
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->attachmentsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->adapter:Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->attachmentsArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->attachmentsArea:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    :cond_1
    return-void

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/audits/Comment;->getBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->editText:Lcom/zendesk/android/ticket/editors/ZDEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->editText:Lcom/zendesk/android/ticket/editors/ZDEditText;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/editors/ZDEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/audits/Comment;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->editText:Lcom/zendesk/android/ticket/editors/ZDEditText;

    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/audits/Comment;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/android/ticket/editors/ZDEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public toggleAttachments(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 698
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->attachmentsArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 701
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 702
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 705
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->attachmentsArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 710
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 707
    :cond_0
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->editText:Lcom/zendesk/android/ticket/editors/ZDEditText;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/editors/ZDEditText;->requestFocus()Z

    .line 708
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->attachmentsArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public togglePublic(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 172
    const-string v0, "CreateCommentActivity"

    const-string v1, "togglePublic is being called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getPermissions()Lcom/zendesk/api/model/ticket/TicketPermissions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketPermissions;->canMakePublicComments()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/audits/Comment;->getIsPublic()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zendesk/api/model/ticket/audits/Comment;->setIsPublic(Ljava/lang/Boolean;)V

    .line 175
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->setPublicButtonState()V

    .line 176
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->setTwitterButtonState()V

    .line 178
    :cond_0
    return-void

    .line 174
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toggleTweet(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getPermissions()Lcom/zendesk/api/model/ticket/TicketPermissions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketPermissions;->canMakePublicComments()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/audits/Comment;->getChannelBack()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zendesk/api/model/ticket/audits/Comment;->setChannelBack(Ljava/lang/Boolean;)V

    .line 183
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->setTwitterButtonState()V

    .line 185
    :cond_0
    return-void

    .line 182
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
