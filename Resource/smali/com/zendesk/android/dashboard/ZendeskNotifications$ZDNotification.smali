.class public Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;
.super Ljava/lang/Object;
.source "ZendeskNotifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/dashboard/ZendeskNotifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ZDNotification"
.end annotation


# static fields
.field private static final KEY_DESC:Ljava/lang/String; = "descriptions"

.field private static final KEY_MESSAGES:Ljava/lang/String; = "messages"

.field private static final KEY_TICKET_ID:Ljava/lang/String; = "ticket_id"


# instance fields
.field private final descriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zendesk/android/dashboard/ZendeskNotifications;

.field private ticketId:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/zendesk/android/dashboard/ZendeskNotifications;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "ticketId"
    .parameter "message"
    .parameter "description"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->this$0:Lcom/zendesk/android/dashboard/ZendeskNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->messages:Ljava/util/ArrayList;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->descriptions:Ljava/util/ArrayList;

    .line 234
    iput-object p2, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->ticketId:Ljava/lang/Long;

    .line 235
    iget-object v0, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->descriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method public constructor <init>(Lcom/zendesk/android/dashboard/ZendeskNotifications;Lorg/json/JSONObject;)V
    .locals 5
    .parameter
    .parameter "o"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->this$0:Lcom/zendesk/android/dashboard/ZendeskNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->messages:Ljava/util/ArrayList;

    .line 231
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->descriptions:Ljava/util/ArrayList;

    .line 240
    const-string v3, "ticket_id"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->ticketId:Ljava/lang/Long;

    .line 241
    const-string v3, "messages"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 242
    .local v2, msgs:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 243
    iget-object v3, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    :cond_0
    const-string v3, "descriptions"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 246
    .local v0, dscs:Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    .line 247
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 248
    iget-object v3, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->descriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 251
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;)Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->ticketId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->messages:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "message"
    .parameter "dsc"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v0, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->descriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    return-void
.end method

.method public getCombinedMessage(Landroid/content/Context;)Lcom/zendesk/android/dashboard/ZendeskNotifications$DisplayNotification;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 273
    iget-object v2, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 275
    sget v2, Lcom/zendesk/android/R$string;->notifications_ticket_no:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->ticketId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, title:Ljava/lang/String;
    sget v2, Lcom/zendesk/android/R$string;->notifications_updates:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, message:Ljava/lang/String;
    new-instance v2, Lcom/zendesk/android/dashboard/ZendeskNotifications$DisplayNotification;

    iget-object v3, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->this$0:Lcom/zendesk/android/dashboard/ZendeskNotifications;

    invoke-direct {v2, v3, v1, v0}, Lcom/zendesk/android/dashboard/ZendeskNotifications$DisplayNotification;-><init>(Lcom/zendesk/android/dashboard/ZendeskNotifications;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #title:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    new-instance v4, Lcom/zendesk/android/dashboard/ZendeskNotifications$DisplayNotification;

    iget-object v5, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->this$0:Lcom/zendesk/android/dashboard/ZendeskNotifications;

    iget-object v2, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->descriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v5, v2, v3}, Lcom/zendesk/android/dashboard/ZendeskNotifications$DisplayNotification;-><init>(Lcom/zendesk/android/dashboard/ZendeskNotifications;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_0
.end method

.method public getTicketId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->ticketId:Ljava/lang/Long;

    return-object v0
.end method

.method public notificationCount()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public setTicketId(Ljava/lang/Long;)V
    .locals 0
    .parameter "ticketId"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->ticketId:Ljava/lang/Long;

    .line 260
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 285
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 286
    .local v3, o:Lorg/json/JSONObject;
    const-string v5, "ticket_id"

    iget-object v6, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->ticketId:Ljava/lang/Long;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 289
    .local v2, msgs:Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 290
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 292
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    const-string v5, "messages"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 295
    .local v0, dscs:Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->descriptions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 296
    .restart local v4       #s:Ljava/lang/String;
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 298
    .end local v4           #s:Ljava/lang/String;
    :cond_1
    const-string v5, "descriptions"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    return-object v3
.end method
