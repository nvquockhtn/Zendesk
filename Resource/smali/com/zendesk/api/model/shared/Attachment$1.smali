.class Lcom/zendesk/api/model/shared/Attachment$1;
.super Ljava/lang/Object;
.source "Attachment.java"

# interfaces
.implements Lcom/zendesk/api/model/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/api/model/shared/Attachment;->upload(Lcom/zendesk/api/model/ResponseHandler;Lcom/zendesk/api/http/ProgressMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zendesk/api/model/ResponseHandler",
        "<",
        "Lcom/zendesk/api/model/shared/Attachment$AttachmentUploader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/api/model/shared/Attachment;


# direct methods
.method constructor <init>(Lcom/zendesk/api/model/shared/Attachment;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/zendesk/api/model/shared/Attachment$1;->this$0:Lcom/zendesk/api/model/shared/Attachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment$1;->this$0:Lcom/zendesk/api/model/shared/Attachment;

    const-string v1, "upload-attachment"

    #calls: Lcom/zendesk/api/model/shared/Attachment;->respondWithError(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v0, v1, p1}, Lcom/zendesk/api/model/shared/Attachment;->access$600(Lcom/zendesk/api/model/shared/Attachment;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 447
    return-void
.end method

.method public responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ZDModelObject",
            "<",
            "Lcom/zendesk/api/model/shared/Attachment$AttachmentUploader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p1, forObject:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<Lcom/zendesk/api/model/shared/Attachment$AttachmentUploader;>;"
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment$1;->this$0:Lcom/zendesk/api/model/shared/Attachment;

    const-string v1, "upload-attachment"

    #calls: Lcom/zendesk/api/model/shared/Attachment;->respondSuccess(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/zendesk/api/model/shared/Attachment;->access$500(Lcom/zendesk/api/model/shared/Attachment;Ljava/lang/String;)V

    .line 441
    return-void
.end method
