.class public Lcom/urbanairship/push/PushManager;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_NOTIFICATION_OPENED:Ljava/lang/String; = "com.urbanairship.push.NOTIFICATION_OPENED"

.field public static final ACTION_NOTIFICATION_OPENED_PROXY:Ljava/lang/String; = "com.urbanairship.push.NOTIFICATION_OPENED_PROXY"

.field public static final ACTION_PUSH_RECEIVED:Ljava/lang/String; = "com.urbanairship.push.PUSH_RECEIVED"

.field public static final ACTION_REGISTRATION_FINISHED:Ljava/lang/String; = "com.urbanairship.push.REGISTRATION_FINISHED"

.field static final APID_REREGISTRATION_INTERVAL_MS:J = 0x5265c00L

.field public static final EXTRA_ALERT:Ljava/lang/String; = "com.urbanairship.push.ALERT"

.field public static final EXTRA_APID:Ljava/lang/String; = "com.urbanairship.push.APID"

.field public static final EXTRA_CANONICAL_PUSH_ID:Ljava/lang/String; = "com.urbanairship.push.CANONICAL_PUSH_ID"

.field public static final EXTRA_EXPIRATION:Ljava/lang/String; = "com.urbanairship.push.EXPIRATION"

.field public static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "com.urbanairship.push.NOTIFICATION_ID"

.field static final EXTRA_PING:Ljava/lang/String; = "com.urbanairship.push.PING"

.field public static final EXTRA_PUSH_ID:Ljava/lang/String; = "com.urbanairship.push.PUSH_ID"

.field public static final EXTRA_REGISTRATION_ERROR:Ljava/lang/String; = "com.urbanairship.push.REGISTRATION_ERROR"

.field public static final EXTRA_REGISTRATION_VALID:Ljava/lang/String; = "com.urbanairship.push.REGISTRATION_VALID"

.field public static final EXTRA_STRING_EXTRA:Ljava/lang/String; = "com.urbanairship.push.STRING_EXTRA"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final instance:Lcom/urbanairship/push/PushManager;


# instance fields
.field private final canonicalIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deviceTagsEnabled:Z

.field private intentReceiver:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private notificationBuilder:Lcom/urbanairship/push/PushNotificationBuilder;

.field private preferences:Lcom/urbanairship/push/PushPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/urbanairship/push/PushManager;

    invoke-direct {v0}, Lcom/urbanairship/push/PushManager;-><init>()V

    sput-object v0, Lcom/urbanairship/push/PushManager;->instance:Lcom/urbanairship/push/PushManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/push/PushManager;->deviceTagsEnabled:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/PushManager;->canonicalIds:Ljava/util/HashSet;

    return-void
.end method

.method private alertHostApplication(Lcom/urbanairship/push/PushMessage;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getIntentReceiver()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.urbanairship.push.PUSH_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->createMessageBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private static createPushArrivedEvent(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    new-instance v1, Lcom/urbanairship/analytics/PushArrivedEvent;

    invoke-direct {v1, p0}, Lcom/urbanairship/analytics/PushArrivedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    return-void
.end method

.method public static disablePush()V
    .locals 3

    sget-object v0, Lcom/urbanairship/push/PushManager;->instance:Lcom/urbanairship/push/PushManager;

    iget-object v0, v0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->isPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/urbanairship/push/PushManager;->instance:Lcom/urbanairship/push/PushManager;

    iget-object v0, v0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->setPushEnabled(Z)V

    sget-object v0, Lcom/urbanairship/push/PushManager;->instance:Lcom/urbanairship/push/PushManager;

    iget-object v0, v0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getGcmId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/urbanairship/push/PushManager;->instance:Lcom/urbanairship/push/PushManager;

    iget-object v0, v0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->setGcmId(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/push/GCMRegistrar;->unregister()V

    :cond_0
    sget-object v0, Lcom/urbanairship/push/PushManager;->instance:Lcom/urbanairship/push/PushManager;

    sget-object v1, Lcom/urbanairship/push/PushManager;->instance:Lcom/urbanairship/push/PushManager;

    iget-object v1, v1, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->getPushId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushManager;->deleteApid(Ljava/lang/String;)V

    sget-object v0, Lcom/urbanairship/push/PushManager;->instance:Lcom/urbanairship/push/PushManager;

    iget-object v0, v0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/push/PushPreferences;->setLastApidRegistrationTime(J)V

    :cond_1
    return-void
.end method

.method public static enablePush()V
    .locals 2

    sget-object v0, Lcom/urbanairship/push/PushManager;->instance:Lcom/urbanairship/push/PushManager;

    iget-object v0, v0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->isPushEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/urbanairship/push/PushManager;->instance:Lcom/urbanairship/push/PushManager;

    iget-object v0, v0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->setPushEnabled(Z)V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->startService()V

    :cond_0
    return-void
.end method

.method public static init()V
    .locals 2

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->isFlying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PushManager init"

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    sget-object v0, Lcom/urbanairship/push/PushManager;->instance:Lcom/urbanairship/push/PushManager;

    new-instance v1, Lcom/urbanairship/push/PushPreferences;

    invoke-direct {v1}, Lcom/urbanairship/push/PushPreferences;-><init>()V

    iput-object v1, v0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    sget-object v0, Lcom/urbanairship/push/PushManager;->instance:Lcom/urbanairship/push/PushManager;

    new-instance v1, Lcom/urbanairship/push/BasicPushNotificationBuilder;

    invoke-direct {v1}, Lcom/urbanairship/push/BasicPushNotificationBuilder;-><init>()V

    iput-object v1, v0, Lcom/urbanairship/push/PushManager;->notificationBuilder:Lcom/urbanairship/push/PushNotificationBuilder;

    invoke-static {}, Lcom/urbanairship/push/PushManager;->startService()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UAirship.takeOff must be called before PushManager.init!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isCorrectApid(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/urbanairship/push/PushManager;->instance:Lcom/urbanairship/push/PushManager;

    iget-object v0, v0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getPushId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method private static isPushEnabled()Z
    .locals 1

    sget-object v0, Lcom/urbanairship/push/PushManager;->instance:Lcom/urbanairship/push/PushManager;

    iget-object v0, v0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->isPushEnabled()Z

    move-result v0

    return v0
.end method

.method private isUniqueCanonicalId(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->canonicalIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static shared()Lcom/urbanairship/push/PushManager;
    .locals 1

    sget-object v0, Lcom/urbanairship/push/PushManager;->instance:Lcom/urbanairship/push/PushManager;

    return-object v0
.end method

.method public static startService()V
    .locals 3

    const-string v0, "PushManager startService"

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.urbanairship.push.START_SERVICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static validateManifest()V
    .locals 4

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/urbanairship/push/PushService;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x80

    :try_start_0
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/urbanairship/push/GCMRegistrar;->validateManifest()V

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidManifest.xml missing required service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/urbanairship/push/PushService;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method deleteApid(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting APID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "No APID. Cannot delete."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "com.urbanairship.push.DELETE_APID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.urbanairship.push.APID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method deliverPush(Lcom/urbanairship/push/PushMessage;)V
    .locals 2

    invoke-static {}, Lcom/urbanairship/push/PushManager;->isPushEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Received a push when push is disabled! Ignoring."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getPushApid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/push/PushManager;->isCorrectApid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received a push addressed to a different APID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getPushApid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    sget-object v0, Lcom/urbanairship/push/PushManager;->instance:Lcom/urbanairship/push/PushManager;

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getPushApid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushManager;->deleteApid(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getCanonicalPushId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/urbanairship/push/PushManager;->isUniqueCanonicalId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received a duplicate push with canonical ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getCanonicalPushId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getPushApid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/push/PushManager;->createPushArrivedEvent(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->isPing()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Received UA Ping"

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Notification expired, ignoring."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/urbanairship/AirshipConfigOptions;->richPushEnabled:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getMessageExtras()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/richpush/RichPushManager;->isRichPushMessage(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Received a Rich Push."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getMessageExtras()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/richpush/RichPushManager;->retrieveRichPushMessage(Ljava/util/Map;)V

    :cond_5
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->buildAndDisplayNotification()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/urbanairship/push/PushManager;->alertHostApplication(Lcom/urbanairship/push/PushMessage;I)V

    goto/16 :goto_0
.end method

.method public getAPID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->isAPIDReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getPushId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceTagsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/push/PushManager;->deviceTagsEnabled:Z

    return v0
.end method

.method public getGcmId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getGcmId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntentReceiver()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->intentReceiver:Ljava/lang/Class;

    return-object v0
.end method

.method public getNotificationBuilder()Lcom/urbanairship/push/PushNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->notificationBuilder:Lcom/urbanairship/push/PushNotificationBuilder;

    return-object v0
.end method

.method public getPreferences()Lcom/urbanairship/push/PushPreferences;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    return-object v0
.end method

.method public getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getTags()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method sendRegistrationFinishedBroadcast(Z)V
    .locals 4

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->isAPIDReady()Z

    move-result v0

    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1, p1}, Lcom/urbanairship/push/PushPreferences;->setAPIDReady(Z)V

    if-nez v0, :cond_0

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/urbanairship/AirshipConfigOptions;->richPushEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/urbanairship/richpush/RichPushManager;->shared()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->updateUser()V

    :cond_0
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->getIntentReceiver()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.urbanairship.push.REGISTRATION_FINISHED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.urbanairship.push.APID"

    iget-object v3, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v3}, Lcom/urbanairship/push/PushPreferences;->getPushId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.urbanairship.push.REGISTRATION_VALID"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->getGcmId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.urbanairship.push.GCM_REGISTRATION_ID"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/urbanairship/util/UAStringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setAlias(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->updateApid()V

    :cond_0
    return-void
.end method

.method public setAliasAndTags(Ljava/lang/String;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tags must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/urbanairship/util/UAStringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setAlias(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    iget-object v2, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->getTags()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p2}, Lcom/urbanairship/push/PushPreferences;->setTags(Ljava/util/Set;)V

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->updateApid()V

    :cond_2
    return-void

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public setDeviceTagsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/push/PushManager;->deviceTagsEnabled:Z

    return-void
.end method

.method public setGcmId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->setAppVersionCode(I)V

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-static {}, Lcom/urbanairship/analytics/Analytics;->getHashedDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->setDeviceId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getGcmId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/urbanairship/util/UAStringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setGcmId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->updateApid()V

    :cond_0
    return-void
.end method

.method public setIntentReceiver(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/content/BroadcastReceiver;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lcom/urbanairship/push/PushManager;->intentReceiver:Ljava/lang/Class;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "The receiver class passed to PushManager.setIntentReceiver() is not declared in the manifest."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidManifest.xml missing required receiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNotificationBuilder(Lcom/urbanairship/push/PushNotificationBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/PushManager;->notificationBuilder:Lcom/urbanairship/push/PushNotificationBuilder;

    return-void
.end method

.method public setTags(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tags must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getTags()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setTags(Ljava/util/Set;)V

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->updateApid()V

    :cond_1
    return-void
.end method

.method updateApid()V
    .locals 3

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->setApidUpdateNeeded(Z)V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "com.urbanairship.push.UPDATE_APID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public updateApidIfNecessary()V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->isApidUpdateNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->updateApid()V

    :cond_0
    return-void
.end method
