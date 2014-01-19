.class public Lcom/zendesk/android/Zendesk;
.super Landroid/app/Application;
.source "Zendesk.java"


# static fields
.field public static final DEPLOY_FOR_KINDLE:Z = false

.field private static final TAG:Ljava/lang/String; = "Zendesk"

.field private static final TEMP_DIR:Ljava/lang/String; = "zdtemp"

.field public static final TICKET_LIST_VIEW_REQUEST_CODE:I = 0x3dd

.field private static baseCacheDir:Ljava/lang/String;

.field private static userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static generateUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Zendesk for Android: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/zendesk/android/Zendesk;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 129
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-object v1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 132
    const-string v1, ""

    goto :goto_0
.end method

.method public static getBaseCacheDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/zendesk/android/Zendesk;->baseCacheDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/zendesk/android/Zendesk;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static initCrittercismUser()V
    .locals 2

    .prologue
    .line 165
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getCurrentUser()Lcom/zendesk/api/model/users/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->getConfig()Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getSubdomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/ZendeskModel;->getCurrentUser()Lcom/zendesk/api/model/users/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->setUsername(Ljava/lang/String;)V

    .line 168
    :cond_0
    return-void
.end method

.method public static initModel()V
    .locals 7

    .prologue
    .line 156
    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->getConfig()Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    move-result-object v6

    .line 158
    .local v6, config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    sget-object v1, Lcom/zendesk/android/Zendesk;->baseCacheDir:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getSubdomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getLogin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getPassword()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/zendesk/android/Zendesk;->userAgent:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/zendesk/api/ZendeskModel;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public static setupCacheDir(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, tempDir:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    new-instance v0, Ljava/io/File;

    .end local v0           #tempDir:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "zdtemp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .restart local v0       #tempDir:Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zendesk/android/Zendesk;->baseCacheDir:Ljava/lang/String;

    .line 93
    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #tempDir:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "zdtemp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #tempDir:Ljava/io/File;
    goto :goto_0
.end method

.method public static updatePushStatus(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 100
    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->getConfig()Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->isNotificationsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    invoke-static {}, Lcom/urbanairship/push/PushManager;->enablePush()V

    .line 102
    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->getPushId()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, pushId:Ljava/lang/String;
    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->getGcmId()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, gcmId:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v2

    const-string v3, "Android"

    invoke-virtual {v2, v1, v0, v3}, Lcom/zendesk/api/ZendeskModel;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v0           #gcmId:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 109
    .end local v1           #pushId:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/urbanairship/push/PushManager;->disablePush()V

    .line 110
    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->getPushId()Ljava/lang/String;

    move-result-object v1

    .line 111
    .restart local v1       #pushId:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 112
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zendesk/api/ZendeskModel;->unregisterForNotifications(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 41
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 42
    sput-boolean v4, Lcom/zendesk/api/http/Request;->debugLoggingEnabled:Z

    .line 44
    invoke-virtual {p0}, Lcom/zendesk/android/Zendesk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zendesk/android/Zendesk;->setupCacheDir(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0}, Lcom/zendesk/android/Zendesk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zendesk/android/Zendesk;->generateUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zendesk/android/Zendesk;->userAgent:Ljava/lang/String;

    .line 47
    const/4 v2, 0x5

    sput v2, Lcom/urbanairship/Logger;->logLevel:I

    .line 49
    invoke-virtual {p0}, Lcom/zendesk/android/Zendesk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zendesk/android/prefs/Preferences;->init(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0}, Lcom/zendesk/android/Zendesk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "4f22844cb093155e77000244"

    new-array v4, v4, [Z

    invoke-static {v2, v3, v4}, Lcom/crittercism/app/Crittercism;->init(Landroid/content/Context;Ljava/lang/String;[Z)V

    .line 53
    invoke-static {p0}, Lcom/urbanairship/AirshipConfigOptions;->loadDefaultOptions(Landroid/content/Context;)Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v1

    .line 54
    .local v1, options:Lcom/urbanairship/AirshipConfigOptions;
    invoke-static {p0, v1}, Lcom/urbanairship/UAirship;->takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;)V

    .line 56
    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v2

    const-class v3, Lcom/zendesk/android/IntentReceiver;

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/PushManager;->setIntentReceiver(Ljava/lang/Class;)V

    .line 57
    new-instance v0, Lcom/zendesk/android/Zendesk$1;

    invoke-direct {v0, p0}, Lcom/zendesk/android/Zendesk$1;-><init>(Lcom/zendesk/android/Zendesk;)V

    .line 71
    .local v0, builder:Lcom/urbanairship/push/PushNotificationBuilder;
    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/urbanairship/push/PushManager;->setNotificationBuilder(Lcom/urbanairship/push/PushNotificationBuilder;)V

    .line 73
    invoke-virtual {p0}, Lcom/zendesk/android/Zendesk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zendesk/android/Zendesk;->updatePushStatus(Landroid/content/Context;)V

    .line 76
    const-string v2, "Zendesk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screen size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zendesk/android/Zendesk;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/zendesk/android/R$string;->screen:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v2, "Zendesk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DPI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zendesk/android/Zendesk;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/zendesk/android/R$string;->dpi:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 138
    const-string v1, "Zendesk"

    const-string v2, "Low memory warning received, reducing size of cache."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v0

    .line 141
    .local v0, tc:Lcom/zendesk/api/model/cache/TicketCache;
    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0}, Lcom/zendesk/api/model/cache/TicketCache;->onMemoryWarning()V

    .line 144
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 145
    return-void
.end method
