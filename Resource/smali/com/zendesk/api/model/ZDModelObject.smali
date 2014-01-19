.class public abstract Lcom/zendesk/api/model/ZDModelObject;
.super Ljava/lang/Object;
.source "ZDModelObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/api/model/ZDModelObject$ResponseParser;,
        Lcom/zendesk/api/model/ZDModelObject$DummyResponseHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_REFRESH_INTERVAL:J = 0x1d4c0L

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field protected static final KEY_NEXT_PAGE:Ljava/lang/String; = "next_page"

.field protected static final REFRFESH_REQUEST:Ljava/lang/String; = "refresh-req"

.field public static final ZERO_INT:Ljava/lang/Integer;

.field public static final ZERO_LONG:Ljava/lang/Long;


# instance fields
.field private refreshInterval:J

.field private refreshTime:J

.field private responseHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ResponseHandler",
            "<TT;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/zendesk/api/model/ZDModelObject;->ZERO_LONG:Ljava/lang/Long;

    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/zendesk/api/model/ZDModelObject;->ZERO_INT:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    .local p0, this:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/zendesk/api/model/ZDModelObject;->refreshInterval:J

    .line 544
    return-void
.end method

.method private getResponseHandlerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ResponseHandler",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, this:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<TT;>;"
    iget-object v0, p0, Lcom/zendesk/api/model/ZDModelObject;->responseHandlers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/ZDModelObject;->responseHandlers:Ljava/util/Map;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/zendesk/api/model/ZDModelObject;->responseHandlers:Ljava/util/Map;

    return-object v0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 536
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .parameter "json"
    .parameter "key"

    .prologue
    .line 373
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .parameter "json"
    .parameter "key"
    .parameter "defaultBool"

    .prologue
    .line 385
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    new-instance p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    .line 388
    :cond_0
    return-object p2
.end method

.method public static jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1
    .parameter "json"
    .parameter "key"

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;Lcom/zendesk/api/model/shared/ZDDate;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v0

    return-object v0
.end method

.method public static jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;Lcom/zendesk/api/model/shared/ZDDate;)Lcom/zendesk/api/model/shared/ZDDate;
    .locals 2
    .parameter "json"
    .parameter "key"
    .parameter "defaultDate"

    .prologue
    .line 358
    invoke-static {p0, p1}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 360
    new-instance p2, Lcom/zendesk/api/model/shared/ZDDate;

    .end local p2
    invoke-direct {p2, v0}, Lcom/zendesk/api/model/shared/ZDDate;-><init>(Ljava/lang/String;)V

    .line 362
    :cond_0
    return-object p2
.end method

.method public static jsonDoubleVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Double;
    .locals 1
    .parameter "json"
    .parameter "key"

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonDoubleVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static jsonDoubleVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 2
    .parameter "json"
    .parameter "key"
    .parameter "defaultDouble"

    .prologue
    .line 331
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    .line 334
    .end local p2
    :cond_0
    return-object p2
.end method

.method public static jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "json"
    .parameter "key"

    .prologue
    .line 399
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .parameter "json"
    .parameter "key"
    .parameter "defaultInt"

    .prologue
    .line 411
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    new-instance p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 414
    :cond_0
    return-object p2
.end method

.method public static jsonIsNull(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 279
    if-eqz p0, :cond_0

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .parameter "json"
    .parameter "key"

    .prologue
    .line 425
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 3
    .parameter "json"
    .parameter "key"
    .parameter "defaultLong"

    .prologue
    .line 437
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 440
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "json"
    .parameter "key"

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "json"
    .parameter "key"
    .parameter "defaultString"

    .prologue
    .line 302
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonIsNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    .end local v0           #s:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public static safeEquals(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 1
    .parameter "b1"
    .parameter "b2"

    .prologue
    .line 477
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 479
    :goto_0
    return v0

    .line 478
    :cond_0
    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 479
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static safeEquals(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 1
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 464
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 466
    :goto_0
    return v0

    .line 465
    :cond_0
    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 466
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static safeEquals(Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 1
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 451
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 453
    :goto_0
    return v0

    .line 452
    :cond_0
    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 453
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v0, 0x0

    .line 503
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/util/List;

    .end local p0
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-static {p0, p1}, Lcom/zendesk/api/model/ZDModelObject;->safeEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    .line 506
    .restart local p0
    .restart local p1
    :cond_0
    :goto_0
    return v0

    .line 504
    :cond_1
    if-nez p0, :cond_2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 505
    :cond_2
    if-eqz p1, :cond_0

    .line 506
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "b1"
    .parameter "b2"

    .prologue
    .line 490
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 492
    :goto_0
    return v0

    .line 491
    :cond_0
    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 492
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static safeEquals(Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, o1:Ljava/util/List;,"Ljava/util/List<*>;"
    .local p1, o2:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 518
    if-nez p0, :cond_2

    if-nez p1, :cond_1

    :goto_0
    move v3, v2

    .line 526
    :cond_0
    :goto_1
    return v3

    :cond_1
    move v2, v3

    .line 518
    goto :goto_0

    .line 519
    :cond_2
    if-eqz p1, :cond_0

    .line 520
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 522
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 523
    .local v1, o:Ljava/lang/Object;
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .end local v1           #o:Ljava/lang/Object;
    :cond_4
    move v3, v2

    .line 526
    goto :goto_1
.end method


# virtual methods
.method protected declared-synchronized addResponseHandler(Ljava/lang/String;Lcom/zendesk/api/model/ResponseHandler;)V
    .locals 2
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/zendesk/api/model/ResponseHandler",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, this:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<TT;>;"
    .local p2, responseHandler:Lcom/zendesk/api/model/ResponseHandler;,"Lcom/zendesk/api/model/ResponseHandler<TT;>;"
    monitor-enter p0

    if-nez p2, :cond_0

    .line 195
    :goto_0
    monitor-exit p0

    return-void

    .line 189
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;->getResponseHandlerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 190
    .local v0, handlerList:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ResponseHandler<TT;>;>;"
    if-nez v0, :cond_1

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #handlerList:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ResponseHandler<TT;>;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .restart local v0       #handlerList:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ResponseHandler<TT;>;>;"
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;->getResponseHandlerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 188
    .end local v0           #handlerList:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ResponseHandler<TT;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected beforeParsed()V
    .locals 0

    .prologue
    .line 170
    .local p0, this:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<TT;>;"
    return-void
.end method

.method protected clearHandlersForRequest(Ljava/lang/String;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 240
    .local p0, this:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<TT;>;"
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;->getResponseHandlerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 241
    .local v0, handlerList:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ResponseHandler<TT;>;>;"
    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 244
    :cond_0
    return-void
.end method

.method public final declared-synchronized execute(Lcom/zendesk/api/http/Request;Lcom/zendesk/api/model/ZDModelObject$ResponseParser;)V
    .locals 4
    .parameter "requester"
    .parameter "responseParser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    .line 156
    .local p0, this:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/zendesk/api/http/Request;->execute()V

    .line 157
    invoke-virtual {p1}, Lcom/zendesk/api/http/Request;->hasError()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/zendesk/api/http/Request;->getError()Lcom/zendesk/api/http/RequestException;

    move-result-object v1

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 159
    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/zendesk/api/http/Request;->getResponseString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/zendesk/api/model/ZDModelObject$ResponseParser;->parse(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    :cond_1
    monitor-exit p0

    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/Throwable;
    :try_start_2
    new-instance v1, Lcom/zendesk/api/http/RequestException;

    const/16 v2, 0xc8

    const-string v3, "Error parsing response"

    invoke-direct {v1, v2, v3, v0}, Lcom/zendesk/api/http/RequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public final declared-synchronized execute(Lcom/zendesk/api/http/Request;Ljava/lang/String;Lcom/zendesk/api/model/ResponseHandler;Lcom/zendesk/api/model/ZDModelObject$ResponseParser;)V
    .locals 2
    .parameter "requester"
    .parameter "request"
    .parameter
    .parameter "responseParser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/http/Request;",
            "Ljava/lang/String;",
            "Lcom/zendesk/api/model/ResponseHandler",
            "<TT;>;",
            "Lcom/zendesk/api/model/ZDModelObject$ResponseParser;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, this:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<TT;>;"
    .local p3, responseHandler:Lcom/zendesk/api/model/ResponseHandler;,"Lcom/zendesk/api/model/ResponseHandler<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/zendesk/api/model/ZDModelObject;->requestInProgress(Ljava/lang/String;)Z

    move-result v0

    .line 130
    .local v0, requestInProgress:Z
    invoke-virtual {p0, p2, p3}, Lcom/zendesk/api/model/ZDModelObject;->addResponseHandler(Ljava/lang/String;Lcom/zendesk/api/model/ResponseHandler;)V

    .line 132
    if-nez v0, :cond_0

    .line 133
    new-instance v1, Lcom/zendesk/api/model/ZDModelObject$2;

    invoke-direct {v1, p0, p1, p4, p2}, Lcom/zendesk/api/model/ZDModelObject$2;-><init>(Lcom/zendesk/api/model/ZDModelObject;Lcom/zendesk/api/http/Request;Lcom/zendesk/api/model/ZDModelObject$ResponseParser;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zendesk/api/model/ZDModelObject$2;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    monitor-exit p0

    return-void

    .line 128
    .end local v0           #requestInProgress:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected abstract getAPIRequester()Lcom/zendesk/api/http/Request;
.end method

.method protected onceParsed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    .line 178
    .local p0, this:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zendesk/api/model/ZDModelObject;->refreshTime:J

    .line 179
    return-void
.end method

.method protected abstract parseResponse(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public declared-synchronized refresh()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    .line 105
    .local p0, this:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/zendesk/api/model/ZDModelObject;->getAPIRequester()Lcom/zendesk/api/http/Request;

    move-result-object v1

    .line 106
    .local v1, req:Lcom/zendesk/api/http/Request;
    invoke-virtual {v1}, Lcom/zendesk/api/http/Request;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :try_start_1
    invoke-virtual {v1}, Lcom/zendesk/api/http/Request;->hasError()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/zendesk/api/http/Request;->getError()Lcom/zendesk/api/http/RequestException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Lorg/json/JSONException;
    :try_start_2
    new-instance v2, Lcom/zendesk/api/http/RequestException;

    const/16 v3, 0xc8

    const-string v4, "Error parsing response"

    invoke-direct {v2, v3, v4, v0}, Lcom/zendesk/api/http/RequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #req:Lcom/zendesk/api/http/Request;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 109
    .restart local v1       #req:Lcom/zendesk/api/http/Request;
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lcom/zendesk/api/model/ZDModelObject;->beforeParsed()V

    .line 110
    invoke-virtual {v1}, Lcom/zendesk/api/http/Request;->getResponseString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/zendesk/api/model/ZDModelObject;->parseResponse(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/zendesk/api/model/ZDModelObject;->onceParsed()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 115
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized refresh(Lcom/zendesk/api/model/ResponseHandler;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ResponseHandler",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, this:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<TT;>;"
    .local p1, responseHandler:Lcom/zendesk/api/model/ResponseHandler;,"Lcom/zendesk/api/model/ResponseHandler<TT;>;"
    monitor-enter p0

    :try_start_0
    const-string v0, "refresh-req"

    invoke-virtual {p0, v0}, Lcom/zendesk/api/model/ZDModelObject;->requestInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "refresh-req"

    invoke-virtual {p0, v0, p1}, Lcom/zendesk/api/model/ZDModelObject;->addResponseHandler(Ljava/lang/String;Lcom/zendesk/api/model/ResponseHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :cond_0
    :try_start_1
    const-string v0, "refresh-req"

    invoke-virtual {p0, v0, p1}, Lcom/zendesk/api/model/ZDModelObject;->addResponseHandler(Ljava/lang/String;Lcom/zendesk/api/model/ResponseHandler;)V

    .line 82
    new-instance v0, Lcom/zendesk/api/model/ZDModelObject$1;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/ZDModelObject$1;-><init>(Lcom/zendesk/api/model/ZDModelObject;)V

    invoke-virtual {v0}, Lcom/zendesk/api/model/ZDModelObject$1;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized requestInProgress(Ljava/lang/String;)Z
    .locals 2
    .parameter "request"

    .prologue
    .line 254
    .local p0, this:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;->getResponseHandlerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 255
    .local v0, handlers:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ResponseHandler<TT;>;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 254
    .end local v0           #handlers:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ResponseHandler<TT;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public requireModelRefresh()Z
    .locals 7

    .prologue
    .line 215
    .local p0, this:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 217
    .local v0, now:J
    iget-wide v3, p0, Lcom/zendesk/api/model/ZDModelObject;->refreshTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 218
    iput-wide v0, p0, Lcom/zendesk/api/model/ZDModelObject;->refreshTime:J

    .line 220
    :cond_0
    iget-wide v3, p0, Lcom/zendesk/api/model/ZDModelObject;->refreshTime:J

    sub-long v3, v0, v3

    iget-wide v5, p0, Lcom/zendesk/api/model/ZDModelObject;->refreshInterval:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    const/4 v2, 0x1

    .line 221
    .local v2, shouldRefresh:Z
    :goto_0
    return v2

    .line 220
    .end local v2           #shouldRefresh:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized respondSuccess(Ljava/lang/String;)V
    .locals 4
    .parameter "request"

    .prologue
    .line 202
    .local p0, this:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;->getResponseHandlerMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 203
    .local v1, handlerList:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ResponseHandler<TT;>;>;"
    if-eqz v1, :cond_1

    .line 204
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/ResponseHandler;

    .line 205
    .local v0, handler:Lcom/zendesk/api/model/ResponseHandler;,"Lcom/zendesk/api/model/ResponseHandler<TT;>;"
    invoke-interface {v0, p0}, Lcom/zendesk/api/model/ResponseHandler;->responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 202
    .end local v0           #handler:Lcom/zendesk/api/model/ResponseHandler;,"Lcom/zendesk/api/model/ResponseHandler<TT;>;"
    .end local v1           #handlerList:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ResponseHandler<TT;>;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 207
    .restart local v1       #handlerList:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ResponseHandler<TT;>;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized respondWithError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "request"
    .parameter "e"

    .prologue
    .line 230
    .local p0, this:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;->getResponseHandlerMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 231
    .local v1, handlerList:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ResponseHandler<TT;>;>;"
    if-eqz v1, :cond_1

    .line 232
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/ResponseHandler;

    .line 233
    .local v0, handler:Lcom/zendesk/api/model/ResponseHandler;,"Lcom/zendesk/api/model/ResponseHandler<TT;>;"
    invoke-interface {v0, p2}, Lcom/zendesk/api/model/ResponseHandler;->responseFailed(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 230
    .end local v0           #handler:Lcom/zendesk/api/model/ResponseHandler;,"Lcom/zendesk/api/model/ResponseHandler<TT;>;"
    .end local v1           #handlerList:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ResponseHandler<TT;>;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 235
    .restart local v1       #handlerList:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ResponseHandler<TT;>;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method protected setRefreshInterval(J)V
    .locals 0
    .parameter "refreshInterval"

    .prologue
    .line 557
    .local p0, this:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<TT;>;"
    iput-wide p1, p0, Lcom/zendesk/api/model/ZDModelObject;->refreshInterval:J

    .line 558
    return-void
.end method
