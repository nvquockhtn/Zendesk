.class public Lcom/zendesk/api/model/views/Bookmark;
.super Ljava/lang/Object;
.source "Bookmark.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/api/model/views/Bookmark$BookmarkTicket;
    }
.end annotation


# static fields
.field static final KEY_CREATED_AT:Ljava/lang/String; = "created_at"

.field static final KEY_ID:Ljava/lang/String; = "id"

.field static final KEY_TICKET:Ljava/lang/String; = "ticket"


# instance fields
.field private baseModel:Lcom/zendesk/api/model/BaseModel;

.field private createdAt:Lcom/zendesk/api/model/shared/ZDDate;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "created_at"
    .end annotation
.end field

.field private id:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "id"
    .end annotation
.end field

.field private ticket:Lcom/zendesk/api/model/ticket/Ticket;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "ticket"
        type = Lcom/zendesk/api/model/views/Bookmark$BookmarkTicket;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)V
    .locals 3
    .parameter "baseModel"
    .parameter "json"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/zendesk/api/model/views/Bookmark;->baseModel:Lcom/zendesk/api/model/BaseModel;

    .line 54
    const-string v2, "created_at"

    invoke-static {p2, v2}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/api/model/views/Bookmark;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 55
    const-string v2, "id"

    invoke-static {p2, v2}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/api/model/views/Bookmark;->id:Ljava/lang/Long;

    .line 57
    const-string v2, "ticket"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 58
    .local v1, ticketJSON:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 59
    new-instance v0, Lcom/zendesk/api/model/views/Bookmark$BookmarkTicket;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/views/Bookmark$BookmarkTicket;-><init>(Lcom/zendesk/api/model/views/Bookmark;)V

    .line 60
    .local v0, bt:Lcom/zendesk/api/model/views/Bookmark$BookmarkTicket;
    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/views/Bookmark$BookmarkTicket;->getTicket(Lorg/json/JSONObject;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/api/model/views/Bookmark;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 62
    .end local v0           #bt:Lcom/zendesk/api/model/views/Bookmark$BookmarkTicket;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/zendesk/api/model/ticket/Ticket;)V
    .locals 1
    .parameter "ticket"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/zendesk/api/model/views/Bookmark;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 71
    new-instance v0, Lcom/zendesk/api/model/shared/ZDDate;

    invoke-direct {v0}, Lcom/zendesk/api/model/shared/ZDDate;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/views/Bookmark;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/api/model/views/Bookmark;)Lcom/zendesk/api/model/BaseModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zendesk/api/model/views/Bookmark;->baseModel:Lcom/zendesk/api/model/BaseModel;

    return-object v0
.end method


# virtual methods
.method public getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/zendesk/api/model/views/Bookmark;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zendesk/api/model/views/Bookmark;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTicket()Lcom/zendesk/api/model/ticket/Ticket;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/zendesk/api/model/views/Bookmark;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    return-object v0
.end method
