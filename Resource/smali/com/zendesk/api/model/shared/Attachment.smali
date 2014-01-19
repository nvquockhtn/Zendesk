.class public Lcom/zendesk/api/model/shared/Attachment;
.super Lcom/zendesk/api/model/ZDModelObject;
.source "Attachment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/api/model/shared/Attachment$AttachmentUploader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDModelObject",
        "<",
        "Lcom/zendesk/api/model/shared/Attachment;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTACHMENTS_DIR:Ljava/lang/String; = "/attachments"

.field static final KEY_CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field static final KEY_CREATED_AT:Ljava/lang/String; = "created_at"

.field static final KEY_FILENAME:Ljava/lang/String; = "file_name"

.field static final KEY_ID:Ljava/lang/String; = "id"

.field static final KEY_IS_PUBLIC:Ljava/lang/String; = "is_public"

.field static final KEY_SIZE:Ljava/lang/String; = "size"

.field static final KEY_TOKEN:Ljava/lang/String; = "token"

.field static final KEY_UPLOAD:Ljava/lang/String; = "upload"

.field static final KEY_URL:Ljava/lang/String; = "content_url"

.field private static final UPLOAD_ATTACHMENT:Ljava/lang/String; = "upload-attachment"

.field static attachmentsCacheDirInitialised:Z

.field static baseCacheDir:Ljava/lang/String;

.field private static volatile tempAttachmentId:J


# instance fields
.field private contentType:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "content_type"
    .end annotation
.end field

.field private filename:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "file_name"
    .end annotation
.end field

.field private id:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "id"
    .end annotation
.end field

.field private localFilePath:Ljava/lang/String;

.field private progressMonitor:Lcom/zendesk/api/http/ProgressMonitor;

.field private size:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "size"
    .end annotation
.end field

.field private thumbnails:Ljava/util/List;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "thumbnails"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/shared/Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field private token:Ljava/lang/String;

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "content_url"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/zendesk/api/model/shared/Attachment;->tempAttachmentId:J

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/zendesk/api/model/shared/Attachment;->thumbnails:Ljava/util/List;

    .line 109
    new-instance v2, Lcom/zendesk/api/model/shared/ZDDate;

    invoke-direct {v2}, Lcom/zendesk/api/model/shared/ZDDate;-><init>()V

    .line 110
    .local v2, now:Lcom/zendesk/api/model/shared/ZDDate;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AndroidImage"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "yyyyMMddHHmmss"

    invoke-virtual {v2, v4}, Lcom/zendesk/api/model/shared/ZDDate;->getFormattedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/api/model/shared/Attachment;->filename:Ljava/lang/String;

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zendesk/api/model/shared/Attachment;->getBaseCacheDir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/attachments"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zendesk/api/model/shared/Attachment;->filename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/api/model/shared/Attachment;->localFilePath:Ljava/lang/String;

    .line 112
    const-string v3, "image/jpeg"

    iput-object v3, p0, Lcom/zendesk/api/model/shared/Attachment;->contentType:Ljava/lang/String;

    .line 113
    sget-wide v3, Lcom/zendesk/api/model/shared/Attachment;->tempAttachmentId:J

    const-wide/16 v5, 0x1

    sub-long v5, v3, v5

    sput-wide v5, Lcom/zendesk/api/model/shared/Attachment;->tempAttachmentId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/api/model/shared/Attachment;->id:Ljava/lang/Long;

    .line 114
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/zendesk/api/model/shared/Attachment;->localFilePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "localFilePath"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zendesk/api/model/shared/Attachment;->thumbnails:Ljava/util/List;

    .line 96
    iput-object p1, p0, Lcom/zendesk/api/model/shared/Attachment;->localFilePath:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/shared/Attachment;->filename:Ljava/lang/String;

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/shared/Attachment;->size:Ljava/lang/Long;

    .line 100
    const-string v1, "image/jpg"

    iput-object v1, p0, Lcom/zendesk/api/model/shared/Attachment;->contentType:Ljava/lang/String;

    .line 101
    sget-wide v1, Lcom/zendesk/api/model/shared/Attachment;->tempAttachmentId:J

    const-wide/16 v3, 0x1

    sub-long v3, v1, v3

    sput-wide v3, Lcom/zendesk/api/model/shared/Attachment;->tempAttachmentId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/shared/Attachment;->id:Ljava/lang/Long;

    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "json"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    .line 56
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/zendesk/api/model/shared/Attachment;->thumbnails:Ljava/util/List;

    .line 130
    const-string v4, "size"

    invoke-static {p1, v4}, Lcom/zendesk/api/model/shared/Attachment;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/zendesk/api/model/shared/Attachment;->size:Ljava/lang/Long;

    .line 131
    const-string v4, "content_type"

    invoke-static {p1, v4}, Lcom/zendesk/api/model/shared/Attachment;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zendesk/api/model/shared/Attachment;->contentType:Ljava/lang/String;

    .line 132
    const-string v4, "token"

    invoke-static {p1, v4}, Lcom/zendesk/api/model/shared/Attachment;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zendesk/api/model/shared/Attachment;->token:Ljava/lang/String;

    .line 133
    const-string v4, "id"

    invoke-static {p1, v4}, Lcom/zendesk/api/model/shared/Attachment;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/zendesk/api/model/shared/Attachment;->id:Ljava/lang/Long;

    .line 134
    const-string v4, "content_url"

    invoke-static {p1, v4}, Lcom/zendesk/api/model/shared/Attachment;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zendesk/api/model/shared/Attachment;->url:Ljava/lang/String;

    .line 135
    const-string v4, "file_name"

    invoke-static {p1, v4}, Lcom/zendesk/api/model/shared/Attachment;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zendesk/api/model/shared/Attachment;->filename:Ljava/lang/String;

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zendesk/api/model/shared/Attachment;->getBaseCacheDir()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/attachments"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zendesk/api/model/shared/Attachment;->id:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zendesk/api/model/shared/Attachment;->filename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zendesk/api/model/shared/Attachment;->localFilePath:Ljava/lang/String;

    .line 138
    const-string v4, "thumbnails"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 139
    .local v3, tns:Lorg/json/JSONArray;
    if-eqz v3, :cond_2

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v1, tmp:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/shared/Thumbnail;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 143
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 144
    .local v2, tn:Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 145
    new-instance v4, Lcom/zendesk/api/model/shared/Thumbnail;

    invoke-direct {v4, v2}, Lcom/zendesk/api/model/shared/Thumbnail;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v2           #tn:Lorg/json/JSONObject;
    :cond_1
    iput-object v1, p0, Lcom/zendesk/api/model/shared/Attachment;->thumbnails:Ljava/util/List;

    .line 150
    .end local v0           #i:I
    .end local v1           #tmp:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/shared/Thumbnail;>;"
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/api/model/shared/Attachment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment;->localFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zendesk/api/model/shared/Attachment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment;->filename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zendesk/api/model/shared/Attachment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment;->token:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/zendesk/api/model/shared/Attachment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/zendesk/api/model/shared/Attachment;->token:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/zendesk/api/model/shared/Attachment;)Lcom/zendesk/api/http/ProgressMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment;->progressMonitor:Lcom/zendesk/api/http/ProgressMonitor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/zendesk/api/model/shared/Attachment;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/zendesk/api/model/shared/Attachment;->id:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$500(Lcom/zendesk/api/model/shared/Attachment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/zendesk/api/model/shared/Attachment;->respondSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/zendesk/api/model/shared/Attachment;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/zendesk/api/model/shared/Attachment;->respondWithError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static getBaseCacheDir()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    sget-object v1, Lcom/zendesk/api/model/shared/Attachment;->baseCacheDir:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 79
    sget-boolean v1, Lcom/zendesk/api/model/shared/Attachment;->attachmentsCacheDirInitialised:Z

    if-nez v1, :cond_0

    .line 80
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/zendesk/api/model/shared/Attachment;->baseCacheDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/attachments"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 85
    :cond_0
    sget-object v1, Lcom/zendesk/api/model/shared/Attachment;->baseCacheDir:Ljava/lang/String;

    return-object v1

    .line 87
    .end local v0           #f:Ljava/io/File;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The base cache directory has not been set on Attachment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setBaseCacheDir(Ljava/lang/String;)V
    .locals 0
    .parameter "baseCacheDir"

    .prologue
    .line 74
    sput-object p0, Lcom/zendesk/api/model/shared/Attachment;->baseCacheDir:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public fileComplete()Z
    .locals 5

    .prologue
    .line 379
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zendesk/api/model/shared/Attachment;->localFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-object v3, p0, Lcom/zendesk/api/model/shared/Attachment;->size:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 381
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 6

    .prologue
    .line 387
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/zendesk/api/model/shared/Attachment;->localFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 389
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 390
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 392
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 393
    new-instance v2, Lcom/zendesk/api/requester/AttachmentRequester;

    iget-object v3, p0, Lcom/zendesk/api/model/shared/Attachment;->url:Ljava/lang/String;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v5, p0, Lcom/zendesk/api/model/shared/Attachment;->progressMonitor:Lcom/zendesk/api/http/ProgressMonitor;

    invoke-direct {v2, v3, v4, v5}, Lcom/zendesk/api/requester/AttachmentRequester;-><init>(Ljava/lang/String;Ljava/io/OutputStream;Lcom/zendesk/api/http/ProgressMonitor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 394
    .end local v1           #f:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 395
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLocalFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment;->localFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressMonitor()Lcom/zendesk/api/http/ProgressMonitor;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment;->progressMonitor:Lcom/zendesk/api/http/ProgressMonitor;

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public getThumbnail()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/shared/Thumbnail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment;->thumbnails:Ljava/util/List;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isAudio()Z
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment;->contentType:Ljava/lang/String;

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDoc()Z
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment;->filename:Ljava/lang/String;

    const-string v1, ".doc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment;->filename:Ljava/lang/String;

    const-string v1, ".docx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment;->filename:Ljava/lang/String;

    const-string v1, ".xls"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment;->filename:Ljava/lang/String;

    const-string v1, ".xlsx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment;->filename:Ljava/lang/String;

    const-string v1, ".ppt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment;->filename:Ljava/lang/String;

    const-string v1, ".pptx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImage()Z
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment;->contentType:Ljava/lang/String;

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPDF()Z
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment;->contentType:Ljava/lang/String;

    const-string v1, "application/pdf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment;->filename:Ljava/lang/String;

    const-string v1, "pdf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideo()Z
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Attachment;->contentType:Ljava/lang/String;

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected parseResponse(Ljava/lang/String;)V
    .locals 0
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 403
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .parameter "contentType"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/zendesk/api/model/shared/Attachment;->contentType:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0
    .parameter "filename"

    .prologue
    .line 335
    iput-object p1, p0, Lcom/zendesk/api/model/shared/Attachment;->filename:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/zendesk/api/model/shared/Attachment;->id:Ljava/lang/Long;

    .line 300
    return-void
.end method

.method public setProgressMonitor(Lcom/zendesk/api/http/ProgressMonitor;)V
    .locals 0
    .parameter "progressMonitor"

    .prologue
    .line 370
    iput-object p1, p0, Lcom/zendesk/api/model/shared/Attachment;->progressMonitor:Lcom/zendesk/api/http/ProgressMonitor;

    .line 371
    return-void
.end method

.method public setSize(Ljava/lang/Long;)V
    .locals 0
    .parameter "size"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/zendesk/api/model/shared/Attachment;->size:Ljava/lang/Long;

    .line 246
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/zendesk/api/model/shared/Attachment;->token:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/zendesk/api/model/shared/Attachment;->url:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public upload(Lcom/zendesk/api/model/ResponseHandler;Lcom/zendesk/api/http/ProgressMonitor;)V
    .locals 2
    .parameter
    .parameter "progressMonitor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ResponseHandler",
            "<",
            "Lcom/zendesk/api/model/shared/Attachment;",
            ">;",
            "Lcom/zendesk/api/http/ProgressMonitor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, handler:Lcom/zendesk/api/model/ResponseHandler;,"Lcom/zendesk/api/model/ResponseHandler<Lcom/zendesk/api/model/shared/Attachment;>;"
    const-string v0, "upload-attachment"

    invoke-virtual {p0, v0, p1}, Lcom/zendesk/api/model/shared/Attachment;->addResponseHandler(Ljava/lang/String;Lcom/zendesk/api/model/ResponseHandler;)V

    .line 435
    new-instance v0, Lcom/zendesk/api/model/shared/Attachment$AttachmentUploader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zendesk/api/model/shared/Attachment$AttachmentUploader;-><init>(Lcom/zendesk/api/model/shared/Attachment;Lcom/zendesk/api/model/shared/Attachment$1;)V

    new-instance v1, Lcom/zendesk/api/model/shared/Attachment$1;

    invoke-direct {v1, p0}, Lcom/zendesk/api/model/shared/Attachment$1;-><init>(Lcom/zendesk/api/model/shared/Attachment;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/shared/Attachment$AttachmentUploader;->refresh(Lcom/zendesk/api/model/ResponseHandler;)V

    .line 449
    return-void
.end method

.method public uploadSync(Lcom/zendesk/api/http/ProgressMonitor;)V
    .locals 15
    .parameter "progressMonitor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    .line 458
    new-instance v10, Ljava/io/File;

    iget-object v1, p0, Lcom/zendesk/api/model/shared/Attachment;->localFilePath:Ljava/lang/String;

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    .local v10, f:Ljava/io/File;
    const/4 v0, 0x0

    .line 461
    .local v0, req:Lcom/zendesk/api/requester/AttachmentCreateRequester;
    :try_start_0
    new-instance v0, Lcom/zendesk/api/requester/AttachmentCreateRequester;

    .end local v0           #req:Lcom/zendesk/api/requester/AttachmentCreateRequester;
    iget-object v1, p0, Lcom/zendesk/api/model/shared/Attachment;->filename:Ljava/lang/String;

    iget-object v2, p0, Lcom/zendesk/api/model/shared/Attachment;->token:Ljava/lang/String;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v5

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/zendesk/api/requester/AttachmentCreateRequester;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/zendesk/api/http/ProgressMonitor;J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .restart local v0       #req:Lcom/zendesk/api/requester/AttachmentCreateRequester;
    invoke-virtual {v0}, Lcom/zendesk/api/requester/AttachmentCreateRequester;->execute()V

    .line 466
    const/4 v11, 0x0

    .line 469
    .local v11, json:Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {v0}, Lcom/zendesk/api/requester/AttachmentCreateRequester;->getResponseString()Ljava/lang/String;

    move-result-object v13

    .line 470
    .local v13, response:Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 471
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 473
    .end local v11           #json:Lorg/json/JSONObject;
    .local v12, json:Lorg/json/JSONObject;
    :try_start_2
    const-string v1, "upload"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 474
    .local v14, upload:Lorg/json/JSONObject;
    const-string v1, "token"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/shared/Attachment;->token:Ljava/lang/String;

    .line 475
    const-string v1, "attachments"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 477
    .local v8, attachments:Lorg/json/JSONArray;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 479
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 480
    .local v7, attach:Lorg/json/JSONObject;
    const-string v1, "id"

    invoke-static {v7, v1}, Lcom/zendesk/api/model/shared/Attachment;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/shared/Attachment;->id:Ljava/lang/Long;

    .line 481
    const-string v1, "content_type"

    invoke-static {v7, v1}, Lcom/zendesk/api/model/shared/Attachment;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/shared/Attachment;->contentType:Ljava/lang/String;

    .line 482
    const-string v1, "size"

    invoke-static {v7, v1}, Lcom/zendesk/api/model/shared/Attachment;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/shared/Attachment;->size:Ljava/lang/Long;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 491
    .end local v7           #attach:Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 462
    .end local v0           #req:Lcom/zendesk/api/requester/AttachmentCreateRequester;
    .end local v8           #attachments:Lorg/json/JSONArray;
    .end local v12           #json:Lorg/json/JSONObject;
    .end local v13           #response:Ljava/lang/String;
    .end local v14           #upload:Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    .line 463
    .local v9, e:Ljava/io/FileNotFoundException;
    new-instance v1, Lcom/zendesk/api/http/RequestException;

    const/16 v2, 0xc8

    const-string v3, "Error accessing file"

    invoke-direct {v1, v2, v3, v9}, Lcom/zendesk/api/http/RequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 485
    .end local v9           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #req:Lcom/zendesk/api/requester/AttachmentCreateRequester;
    .restart local v11       #json:Lorg/json/JSONObject;
    .restart local v13       #response:Ljava/lang/String;
    :cond_1
    :try_start_3
    new-instance v1, Lcom/zendesk/api/http/RequestException;

    const/16 v2, 0xc8

    const-string v3, "Error parsing response"

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Server Response NULL"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/zendesk/api/http/RequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 488
    .end local v13           #response:Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 489
    .local v9, e:Lorg/json/JSONException;
    :goto_0
    new-instance v1, Lcom/zendesk/api/http/RequestException;

    const/16 v2, 0xc8

    const-string v3, "Error parsing response"

    invoke-direct {v1, v2, v3, v9}, Lcom/zendesk/api/http/RequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 488
    .end local v9           #e:Lorg/json/JSONException;
    .end local v11           #json:Lorg/json/JSONObject;
    .restart local v12       #json:Lorg/json/JSONObject;
    .restart local v13       #response:Ljava/lang/String;
    :catch_2
    move-exception v9

    move-object v11, v12

    .end local v12           #json:Lorg/json/JSONObject;
    .restart local v11       #json:Lorg/json/JSONObject;
    goto :goto_0
.end method
