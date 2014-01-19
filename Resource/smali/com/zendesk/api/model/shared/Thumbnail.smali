.class public Lcom/zendesk/api/model/shared/Thumbnail;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# static fields
.field private static final KEY_CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field private static final KEY_CONTENT_URL:Ljava/lang/String; = "content_url"

.field private static final KEY_FILE_NAME:Ljava/lang/String; = "file_name"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_SIZE:Ljava/lang/String; = "size"


# instance fields
.field private contentType:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "content_type"
    .end annotation
.end field

.field private contentURL:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "content_url"
    .end annotation
.end field

.field private fileName:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "file_name"
    .end annotation
.end field

.field private id:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "id"
    .end annotation
.end field

.field private size:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "size"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "json"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/shared/Thumbnail;->id:Ljava/lang/Long;

    .line 41
    const-string v0, "file_name"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/shared/Thumbnail;->fileName:Ljava/lang/String;

    .line 42
    const-string v0, "content_url"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/shared/Thumbnail;->contentURL:Ljava/lang/String;

    .line 43
    const-string v0, "content_type"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/shared/Thumbnail;->contentType:Ljava/lang/String;

    .line 44
    const-string v0, "size"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/shared/Thumbnail;->size:Ljava/lang/Long;

    .line 45
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Thumbnail;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getContentURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Thumbnail;->contentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Thumbnail;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Thumbnail;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Thumbnail;->size:Ljava/lang/Long;

    return-object v0
.end method
