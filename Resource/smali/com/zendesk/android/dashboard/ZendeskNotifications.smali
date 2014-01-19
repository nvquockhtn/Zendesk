.class public Lcom/zendesk/android/dashboard/ZendeskNotifications;
.super Ljava/lang/Object;
.source "ZendeskNotifications.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/android/dashboard/ZendeskNotifications$DisplayNotification;,
        Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_JSON:Ljava/lang/String; = "NOTIFICATION_JSON"

.field private static instance:Lcom/zendesk/android/dashboard/ZendeskNotifications;


# instance fields
.field private final notifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications;->notifications:Ljava/util/ArrayList;

    .line 33
    sget-object v0, Lcom/zendesk/android/prefs/Preferences;->androidSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "NOTIFICATION_JSON"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->fromJSON(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private buildIt(Ljava/lang/String;Ljava/lang/String;IJLandroid/content/Context;)Landroid/app/Notification;
    .locals 6
    .parameter "title"
    .parameter "msg"
    .parameter "notificationCount"
    .parameter "ticketId"
    .parameter "context"

    .prologue
    .line 142
    new-instance v2, Landroid/app/Notification;

    sget v3, Lcom/zendesk/android/R$drawable;->notification_icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, p2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 143
    .local v2, notification:Landroid/app/Notification;
    const/4 v3, 0x1

    if-le p3, v3, :cond_0

    .line 144
    iput p3, v2, Landroid/app/Notification;->number:I

    .line 147
    :cond_0
    new-instance v1, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.zendesk.android.OPEN_NOTIFICATION_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v1, launch:Landroid/content/Intent;
    const-class v3, Lcom/zendesk/android/dashboard/DashboardActivity;

    invoke-virtual {v1, p6, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 149
    const/high16 v3, 0x1400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 150
    const-string v3, "ticketId"

    invoke-virtual {v1, v3, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 153
    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {p6, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, p6, p1, p2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 157
    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->getConfig()Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    move-result-object v0

    .line 159
    .local v0, config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;
    invoke-virtual {v0}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->isSoundEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    iget v3, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 163
    :cond_1
    invoke-virtual {v0}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->isVibrateEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 164
    iget v3, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 167
    :cond_2
    return-object v2
.end method

.method private fromJSON(Ljava/lang/String;)V
    .locals 6
    .parameter "jsonString"

    .prologue
    .line 199
    iget-object v3, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 200
    if-eqz p1, :cond_0

    .line 202
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 203
    .local v2, o:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 204
    iget-object v3, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications;->notifications:Ljava/util/ArrayList;

    new-instance v4, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;-><init>(Lcom/zendesk/android/dashboard/ZendeskNotifications;Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v1           #i:I
    .end local v2           #o:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 210
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zendesk/android/dashboard/ZendeskNotifications;
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    sget-object v0, Lcom/zendesk/android/dashboard/ZendeskNotifications;->instance:Lcom/zendesk/android/dashboard/ZendeskNotifications;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/zendesk/android/dashboard/ZendeskNotifications;

    invoke-direct {v0, p0}, Lcom/zendesk/android/dashboard/ZendeskNotifications;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zendesk/android/dashboard/ZendeskNotifications;->instance:Lcom/zendesk/android/dashboard/ZendeskNotifications;

    .line 41
    :cond_0
    sget-object v0, Lcom/zendesk/android/dashboard/ZendeskNotifications;->instance:Lcom/zendesk/android/dashboard/ZendeskNotifications;

    return-object v0
.end method

.method private toJSONString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 213
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 215
    .local v2, o:Lorg/json/JSONArray;
    :try_start_0
    iget-object v4, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;

    .line 216
    .local v3, zdn:Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;
    invoke-virtual {v3}, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->toJSON()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #zdn:Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 221
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public addNotification(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .parameter "ticketId"
    .parameter "msg"
    .parameter "dsc"
    .parameter "context"

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, n:Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;
    iget-object v3, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;

    .line 53
    .local v2, zdn:Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;
    #getter for: Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->ticketId:Ljava/lang/Long;
    invoke-static {v2}, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->access$000(Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    move-object v1, v2

    goto :goto_0

    .line 57
    .end local v2           #zdn:Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;
    :cond_1
    if-nez v1, :cond_2

    .line 58
    iget-object v3, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications;->notifications:Ljava/util/ArrayList;

    new-instance v4, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;-><init>(Lcom/zendesk/android/dashboard/ZendeskNotifications;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :goto_1
    invoke-virtual {p0, p4}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->commit(Landroid/content/Context;)V

    .line 63
    return-void

    .line 60
    :cond_2
    invoke-virtual {v1, p2, p3}, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->addNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public commit(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 45
    sget-object v1, Lcom/zendesk/android/prefs/Preferences;->androidSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 46
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "NOTIFICATION_JSON"

    invoke-direct {p0}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->getConfig()Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->commitAndroidPrefs(Landroid/content/SharedPreferences$Editor;)V

    .line 48
    return-void
.end method

.method public getNotifications()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications;->notifications:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTicketCount()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTotalNotificationCount()I
    .locals 5

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 177
    .local v0, c:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 178
    iget-object v4, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;

    .line 179
    .local v3, zdn:Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;
    if-eqz v3, :cond_0

    #getter for: Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->messages:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->access$100(Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    #getter for: Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->messages:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->access$100(Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 180
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    #getter for: Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->messages:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->access$100(Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 181
    add-int/lit8 v0, v0, 0x1

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 177
    .end local v2           #j:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v3           #zdn:Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;
    :cond_1
    return v0
.end method

.method public markRead(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 67
    invoke-virtual {p0, p1}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->commit(Landroid/content/Context;)V

    .line 68
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 69
    .local v0, mn:Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 70
    return-void
.end method

.method public markTicketRead(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "ticketId"

    .prologue
    .line 83
    iget-object v3, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;

    .line 84
    .local v2, zdn:Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;
    invoke-virtual {v2}, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->getTicketId()Ljava/lang/Long;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    iget-object v3, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 89
    .end local v2           #zdn:Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->commit(Landroid/content/Context;)V

    .line 90
    iget-object v3, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 91
    invoke-virtual {p0, p1}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->repostNotifications(Landroid/content/Context;)V

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_2
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 94
    .local v1, mn:Landroid/app/NotificationManager;
    invoke-virtual {v1}, Landroid/app/NotificationManager;->cancelAll()V

    goto :goto_0
.end method

.method public postNotifications(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)Landroid/app/Notification;
    .locals 19
    .parameter "context"
    .parameter
    .parameter "alert"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/Notification;"
        }
    .end annotation

    .prologue
    .line 106
    .local p2, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationManager;

    .line 108
    .local v13, mManager:Landroid/app/NotificationManager;
    invoke-virtual {v13}, Landroid/app/NotificationManager;->cancelAll()V

    .line 110
    invoke-static/range {p1 .. p1}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->getInstance(Landroid/content/Context;)Lcom/zendesk/android/dashboard/ZendeskNotifications;

    move-result-object v15

    .line 112
    .local v15, status:Lcom/zendesk/android/dashboard/ZendeskNotifications;
    if-eqz p3, :cond_0

    .line 113
    new-instance v17, Ljava/lang/Long;

    const-string v3, "tid"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 114
    .local v17, ticketId:Ljava/lang/Long;
    const-string v3, "dsc"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 115
    .local v11, dsc:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-virtual {v15, v0, v1, v11, v2}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->addNotification(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 118
    .end local v11           #dsc:Ljava/lang/String;
    .end local v17           #ticketId:Ljava/lang/Long;
    :cond_0
    invoke-virtual {v15}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->getTotalNotificationCount()I

    move-result v6

    .line 119
    .local v6, count:I
    invoke-virtual {v15}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->getTicketCount()I

    move-result v16

    .line 120
    .local v16, ticketCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 121
    .local v14, res:Landroid/content/res/Resources;
    const/4 v3, 0x3

    move/from16 v0, v16

    if-gt v0, v3, :cond_2

    .line 122
    const/4 v12, 0x0

    .end local v6           #count:I
    .local v12, i:I
    :goto_0
    add-int/lit8 v3, v16, -0x1

    if-ge v12, v3, :cond_1

    .line 123
    invoke-virtual {v15}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->getNotifications()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;

    .line 124
    .local v18, zdn:Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->getCombinedMessage(Landroid/content/Context;)Lcom/zendesk/android/dashboard/ZendeskNotifications$DisplayNotification;

    move-result-object v10

    .line 125
    .local v10, dn:Lcom/zendesk/android/dashboard/ZendeskNotifications$DisplayNotification;
    iget-object v4, v10, Lcom/zendesk/android/dashboard/ZendeskNotifications$DisplayNotification;->title:Ljava/lang/String;

    iget-object v5, v10, Lcom/zendesk/android/dashboard/ZendeskNotifications$DisplayNotification;->body:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->notificationCount()I

    move-result v6

    invoke-virtual/range {v18 .. v18}, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->getTicketId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v3, p0

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->buildIt(Ljava/lang/String;Ljava/lang/String;IJLandroid/content/Context;)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v13, v12, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 122
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 127
    .end local v10           #dn:Lcom/zendesk/android/dashboard/ZendeskNotifications$DisplayNotification;
    .end local v18           #zdn:Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;
    :cond_1
    invoke-virtual {v15}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->getNotifications()Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v16, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;

    .line 128
    .restart local v18       #zdn:Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->getCombinedMessage(Landroid/content/Context;)Lcom/zendesk/android/dashboard/ZendeskNotifications$DisplayNotification;

    move-result-object v10

    .line 129
    .restart local v10       #dn:Lcom/zendesk/android/dashboard/ZendeskNotifications$DisplayNotification;
    iget-object v4, v10, Lcom/zendesk/android/dashboard/ZendeskNotifications$DisplayNotification;->title:Ljava/lang/String;

    iget-object v5, v10, Lcom/zendesk/android/dashboard/ZendeskNotifications$DisplayNotification;->body:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->notificationCount()I

    move-result v6

    invoke-virtual/range {v18 .. v18}, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->getTicketId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v3, p0

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->buildIt(Ljava/lang/String;Ljava/lang/String;IJLandroid/content/Context;)Landroid/app/Notification;

    move-result-object v3

    .line 135
    .end local v10           #dn:Lcom/zendesk/android/dashboard/ZendeskNotifications$DisplayNotification;
    .end local v12           #i:I
    .end local v18           #zdn:Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;
    :goto_1
    return-object v3

    .line 133
    .restart local v6       #count:I
    :cond_2
    sget v3, Lcom/zendesk/android/R$string;->notifications_updates:I

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, message:Ljava/lang/String;
    sget v3, Lcom/zendesk/android/R$string;->zendesk:I

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->buildIt(Ljava/lang/String;Ljava/lang/String;IJLandroid/content/Context;)Landroid/app/Notification;

    move-result-object v3

    goto :goto_1
.end method

.method public repostNotifications(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-virtual {p0, p1, v2, v2}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->postNotifications(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    .line 100
    .local v1, n:Landroid/app/Notification;
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 101
    .local v0, mManager:Landroid/app/NotificationManager;
    iget-object v2, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 102
    return-void
.end method

.method public ticketHasNotification(J)Z
    .locals 4
    .parameter "ticketId"

    .prologue
    .line 74
    iget-object v2, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;

    .line 75
    .local v1, zdn:Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;
    invoke-virtual {v1}, Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;->getTicketId()Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    const/4 v2, 0x1

    .line 79
    .end local v1           #zdn:Lcom/zendesk/android/dashboard/ZendeskNotifications$ZDNotification;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
