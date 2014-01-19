.class public Lcom/zendesk/api/model/views/Bookmarks;
.super Lcom/zendesk/api/model/ZDModelObject;
.source "Bookmarks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDModelObject",
        "<",
        "Lcom/zendesk/api/model/views/Bookmarks;",
        ">;"
    }
.end annotation


# static fields
.field private static final CREATE_BOOKMARK:Ljava/lang/String; = "createBookmark"

.field private static final DELETE_BOOKMARK:Ljava/lang/String; = "deleteBookmark"

.field static final KEY_BOOKMARKS:Ljava/lang/String; = "bookmarks"

.field static final KEY_COUNT:Ljava/lang/String; = "count"


# instance fields
.field private baseModel:Lcom/zendesk/api/model/BaseModel;

.field private bookmarks:Ljava/util/List;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "bookmarks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/views/Bookmark;",
            ">;"
        }
    .end annotation
.end field

.field private count:Ljava/lang/Integer;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "count"
    .end annotation
.end field

.field private final quietRefreshHandler:Lcom/zendesk/api/model/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/api/model/ResponseHandler",
            "<",
            "Lcom/zendesk/api/model/views/Bookmarks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;)V
    .locals 1
    .parameter "baseModel"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/views/Bookmarks;->bookmarks:Ljava/util/List;

    .line 157
    new-instance v0, Lcom/zendesk/api/model/views/Bookmarks$3;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/views/Bookmarks$3;-><init>(Lcom/zendesk/api/model/views/Bookmarks;)V

    iput-object v0, p0, Lcom/zendesk/api/model/views/Bookmarks;->quietRefreshHandler:Lcom/zendesk/api/model/ResponseHandler;

    .line 49
    iput-object p1, p0, Lcom/zendesk/api/model/views/Bookmarks;->baseModel:Lcom/zendesk/api/model/BaseModel;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/api/model/views/Bookmarks;)Lcom/zendesk/api/model/ResponseHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zendesk/api/model/views/Bookmarks;->quietRefreshHandler:Lcom/zendesk/api/model/ResponseHandler;

    return-object v0
.end method


# virtual methods
.method public createBookmark(Lcom/zendesk/api/model/ticket/Ticket;)V
    .locals 3
    .parameter "ticket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lcom/zendesk/api/requester/BookmarkCreateRequester;

    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/zendesk/api/requester/BookmarkCreateRequester;-><init>(J)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zendesk/api/model/views/Bookmarks;->execute(Lcom/zendesk/api/http/Request;Lcom/zendesk/api/model/ZDModelObject$ResponseParser;)V

    .line 119
    iget-object v0, p0, Lcom/zendesk/api/model/views/Bookmarks;->bookmarks:Ljava/util/List;

    new-instance v1, Lcom/zendesk/api/model/views/Bookmark;

    invoke-direct {v1, p1}, Lcom/zendesk/api/model/views/Bookmark;-><init>(Lcom/zendesk/api/model/ticket/Ticket;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {p0}, Lcom/zendesk/api/model/views/Bookmarks;->refresh()V

    .line 121
    return-void
.end method

.method public createBookmark(Lcom/zendesk/api/model/ticket/Ticket;Lcom/zendesk/api/model/ResponseHandler;)V
    .locals 4
    .parameter "ticket"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ticket/Ticket;",
            "Lcom/zendesk/api/model/ResponseHandler",
            "<",
            "Lcom/zendesk/api/model/views/Bookmarks;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, handler:Lcom/zendesk/api/model/ResponseHandler;,"Lcom/zendesk/api/model/ResponseHandler<Lcom/zendesk/api/model/views/Bookmarks;>;"
    new-instance v0, Lcom/zendesk/api/requester/BookmarkCreateRequester;

    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/zendesk/api/requester/BookmarkCreateRequester;-><init>(J)V

    const-string v1, "createBookmark"

    new-instance v2, Lcom/zendesk/api/model/views/Bookmarks$1;

    invoke-direct {v2, p0, p2}, Lcom/zendesk/api/model/views/Bookmarks$1;-><init>(Lcom/zendesk/api/model/views/Bookmarks;Lcom/zendesk/api/model/ResponseHandler;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/zendesk/api/model/views/Bookmarks;->execute(Lcom/zendesk/api/http/Request;Ljava/lang/String;Lcom/zendesk/api/model/ResponseHandler;Lcom/zendesk/api/model/ZDModelObject$ResponseParser;)V

    .line 108
    iget-object v0, p0, Lcom/zendesk/api/model/views/Bookmarks;->bookmarks:Ljava/util/List;

    new-instance v1, Lcom/zendesk/api/model/views/Bookmark;

    invoke-direct {v1, p1}, Lcom/zendesk/api/model/views/Bookmark;-><init>(Lcom/zendesk/api/model/ticket/Ticket;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public deleteBookmark(J)V
    .locals 4
    .parameter "ticketId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zendesk/api/model/views/Bookmarks;->getBookmark(Ljava/lang/Long;)Lcom/zendesk/api/model/views/Bookmark;

    move-result-object v0

    .line 175
    .local v0, b:Lcom/zendesk/api/model/views/Bookmark;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/Bookmark;->getId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/zendesk/api/model/views/Bookmarks;->bookmarks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {v0}, Lcom/zendesk/api/model/views/Bookmark;->getId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 178
    new-instance v1, Lcom/zendesk/api/requester/BookmarkDeleteRequester;

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/Bookmark;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/zendesk/api/requester/BookmarkDeleteRequester;-><init>(J)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/zendesk/api/model/views/Bookmarks;->execute(Lcom/zendesk/api/http/Request;Lcom/zendesk/api/model/ZDModelObject$ResponseParser;)V

    .line 179
    invoke-virtual {p0}, Lcom/zendesk/api/model/views/Bookmarks;->refresh()V

    .line 182
    :cond_0
    return-void
.end method

.method public deleteBookmark(JLcom/zendesk/api/model/ResponseHandler;)V
    .locals 5
    .parameter "ticketId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/zendesk/api/model/ResponseHandler",
            "<",
            "Lcom/zendesk/api/model/views/Bookmarks;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p3, handler:Lcom/zendesk/api/model/ResponseHandler;,"Lcom/zendesk/api/model/ResponseHandler<Lcom/zendesk/api/model/views/Bookmarks;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zendesk/api/model/views/Bookmarks;->getBookmark(Ljava/lang/Long;)Lcom/zendesk/api/model/views/Bookmark;

    move-result-object v0

    .line 132
    .local v0, b:Lcom/zendesk/api/model/views/Bookmark;
    if-eqz v0, :cond_0

    .line 133
    iget-object v1, p0, Lcom/zendesk/api/model/views/Bookmarks;->bookmarks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {v0}, Lcom/zendesk/api/model/views/Bookmark;->getId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    new-instance v1, Lcom/zendesk/api/requester/BookmarkDeleteRequester;

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/Bookmark;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/zendesk/api/requester/BookmarkDeleteRequester;-><init>(J)V

    const-string v2, "deleteBookmark"

    new-instance v3, Lcom/zendesk/api/model/views/Bookmarks$2;

    invoke-direct {v3, p0, p3}, Lcom/zendesk/api/model/views/Bookmarks$2;-><init>(Lcom/zendesk/api/model/views/Bookmarks;Lcom/zendesk/api/model/ResponseHandler;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/zendesk/api/model/views/Bookmarks;->execute(Lcom/zendesk/api/http/Request;Ljava/lang/String;Lcom/zendesk/api/model/ResponseHandler;Lcom/zendesk/api/model/ZDModelObject$ResponseParser;)V

    .line 155
    :cond_0
    return-void
.end method

.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/zendesk/api/requester/BookmarksRequester;

    invoke-direct {v0}, Lcom/zendesk/api/requester/BookmarksRequester;-><init>()V

    return-object v0
.end method

.method public getBookmark(Ljava/lang/Long;)Lcom/zendesk/api/model/views/Bookmark;
    .locals 4
    .parameter "ticketId"

    .prologue
    .line 209
    iget-object v3, p0, Lcom/zendesk/api/model/views/Bookmarks;->bookmarks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/views/Bookmark;

    .line 210
    .local v0, b:Lcom/zendesk/api/model/views/Bookmark;
    invoke-virtual {v0}, Lcom/zendesk/api/model/views/Bookmark;->getTicket()Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 211
    invoke-virtual {v0}, Lcom/zendesk/api/model/views/Bookmark;->getTicket()Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v2

    .line 212
    .local v2, id:Ljava/lang/Long;
    invoke-virtual {v2, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    .end local v0           #b:Lcom/zendesk/api/model/views/Bookmark;
    .end local v2           #id:Ljava/lang/Long;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBookmarks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/views/Bookmark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zendesk/api/model/views/Bookmarks;->bookmarks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/zendesk/api/model/views/Bookmarks;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method protected parseResponse(Ljava/lang/String;)V
    .locals 10
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v5, tmp:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/views/Bookmark;>;"
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    .local v4, json:Lorg/json/JSONObject;
    const-string v7, "count"

    invoke-static {v4, v7}, Lcom/zendesk/api/model/ZDModelObject;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/zendesk/api/model/views/Bookmarks;->count:Ljava/lang/Integer;

    .line 66
    iget-object v7, p0, Lcom/zendesk/api/model/views/Bookmarks;->count:Ljava/lang/Integer;

    if-nez v7, :cond_0

    sget-object v7, Lcom/zendesk/api/model/views/Bookmarks;->ZERO_INT:Ljava/lang/Integer;

    iput-object v7, p0, Lcom/zendesk/api/model/views/Bookmarks;->count:Ljava/lang/Integer;

    .line 68
    :cond_0
    const-string v7, "bookmarks"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 69
    .local v1, bookmarksArray:Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    .line 70
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 71
    new-instance v7, Lcom/zendesk/api/model/views/Bookmark;

    iget-object v8, p0, Lcom/zendesk/api/model/views/Bookmarks;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/zendesk/api/model/views/Bookmark;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v2           #i:I
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v6, toBeDeleted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zendesk/api/model/views/Bookmark;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/views/Bookmark;

    .line 77
    .local v0, b:Lcom/zendesk/api/model/views/Bookmark;
    invoke-virtual {v0}, Lcom/zendesk/api/model/views/Bookmark;->getTicket()Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    .end local v0           #b:Lcom/zendesk/api/model/views/Bookmark;
    :cond_3
    invoke-interface {v5, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 80
    iput-object v5, p0, Lcom/zendesk/api/model/views/Bookmarks;->bookmarks:Ljava/util/List;

    .line 81
    return-void
.end method
