.class Lcom/zendesk/api/model/shared/Attachment$AttachmentUploader;
.super Lcom/zendesk/api/model/ZDModelObject;
.source "Attachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/shared/Attachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachmentUploader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDModelObject",
        "<",
        "Lcom/zendesk/api/model/shared/Attachment$AttachmentUploader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/api/model/shared/Attachment;


# direct methods
.method private constructor <init>(Lcom/zendesk/api/model/shared/Attachment;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/zendesk/api/model/shared/Attachment$AttachmentUploader;->this$0:Lcom/zendesk/api/model/shared/Attachment;

    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zendesk/api/model/shared/Attachment;Lcom/zendesk/api/model/shared/Attachment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/zendesk/api/model/shared/Attachment$AttachmentUploader;-><init>(Lcom/zendesk/api/model/shared/Attachment;)V

    return-void
.end method


# virtual methods
.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 9

    .prologue
    .line 409
    new-instance v8, Ljava/io/File;

    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment$AttachmentUploader;->this$0:Lcom/zendesk/api/model/shared/Attachment;

    #getter for: Lcom/zendesk/api/model/shared/Attachment;->localFilePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/zendesk/api/model/shared/Attachment;->access$000(Lcom/zendesk/api/model/shared/Attachment;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    .local v8, f:Ljava/io/File;
    :try_start_0
    new-instance v0, Lcom/zendesk/api/requester/AttachmentCreateRequester;

    iget-object v1, p0, Lcom/zendesk/api/model/shared/Attachment$AttachmentUploader;->this$0:Lcom/zendesk/api/model/shared/Attachment;

    #getter for: Lcom/zendesk/api/model/shared/Attachment;->filename:Ljava/lang/String;
    invoke-static {v1}, Lcom/zendesk/api/model/shared/Attachment;->access$100(Lcom/zendesk/api/model/shared/Attachment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zendesk/api/model/shared/Attachment$AttachmentUploader;->this$0:Lcom/zendesk/api/model/shared/Attachment;

    #getter for: Lcom/zendesk/api/model/shared/Attachment;->token:Ljava/lang/String;
    invoke-static {v2}, Lcom/zendesk/api/model/shared/Attachment;->access$200(Lcom/zendesk/api/model/shared/Attachment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v4, p0, Lcom/zendesk/api/model/shared/Attachment$AttachmentUploader;->this$0:Lcom/zendesk/api/model/shared/Attachment;

    #getter for: Lcom/zendesk/api/model/shared/Attachment;->progressMonitor:Lcom/zendesk/api/http/ProgressMonitor;
    invoke-static {v4}, Lcom/zendesk/api/model/shared/Attachment;->access$300(Lcom/zendesk/api/model/shared/Attachment;)Lcom/zendesk/api/http/ProgressMonitor;

    move-result-object v4

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/zendesk/api/requester/AttachmentCreateRequester;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/zendesk/api/http/ProgressMonitor;J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 412
    :catch_0
    move-exception v7

    .line 413
    .local v7, e:Ljava/io/FileNotFoundException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not create attachment file."

    invoke-direct {v0, v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected parseResponse(Ljava/lang/String;)V
    .locals 4
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 420
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 421
    .local v0, json:Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/zendesk/api/model/shared/Attachment$AttachmentUploader;->this$0:Lcom/zendesk/api/model/shared/Attachment;

    const-string v2, "token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/zendesk/api/model/shared/Attachment;->token:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/zendesk/api/model/shared/Attachment;->access$202(Lcom/zendesk/api/model/shared/Attachment;Ljava/lang/String;)Ljava/lang/String;

    .line 422
    iget-object v1, p0, Lcom/zendesk/api/model/shared/Attachment$AttachmentUploader;->this$0:Lcom/zendesk/api/model/shared/Attachment;

    const-string v2, "upload"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/zendesk/api/model/shared/Attachment$AttachmentUploader;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    #setter for: Lcom/zendesk/api/model/shared/Attachment;->id:Ljava/lang/Long;
    invoke-static {v1, v2}, Lcom/zendesk/api/model/shared/Attachment;->access$402(Lcom/zendesk/api/model/shared/Attachment;Ljava/lang/Long;)Ljava/lang/Long;

    .line 423
    return-void
.end method
