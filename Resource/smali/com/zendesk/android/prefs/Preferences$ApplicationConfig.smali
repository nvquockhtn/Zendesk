.class public Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;
.super Ljava/lang/Object;
.source "Preferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/prefs/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplicationConfig"
.end annotation


# static fields
.field private static final commitLock:Ljava/lang/Object;


# instance fields
.field private firstLoad:Z

.field private https:Z

.field private login:Ljava/lang/String;

.field private notificationsEnabled:Z

.field private password:Ljava/lang/String;

.field private soundEnabled:Z

.field private subdomain:Ljava/lang/String;

.field private vibrateEnabled:Z

.field private final views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->commitLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->firstLoad:Z

    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->views:Ljava/util/List;

    .line 74
    iput-boolean v1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->notificationsEnabled:Z

    .line 75
    iput-boolean v1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->soundEnabled:Z

    .line 76
    iput-boolean v1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->vibrateEnabled:Z

    .line 80
    sget-object v3, Lcom/zendesk/android/prefs/Preferences;->androidSharedPrefs:Landroid/content/SharedPreferences;

    const-string v4, "LOGIN"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->login:Ljava/lang/String;

    .line 81
    iget-object v3, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->login:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->login:Ljava/lang/String;

    const-string v4, "+||+||_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    iget-object v3, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->login:Ljava/lang/String;

    const-string v4, "+||+||_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->decrypt(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->login:Ljava/lang/String;

    .line 84
    :cond_0
    sget-object v3, Lcom/zendesk/android/prefs/Preferences;->androidSharedPrefs:Landroid/content/SharedPreferences;

    const-string v4, "PASSWORD"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->password:Ljava/lang/String;

    .line 85
    iget-object v3, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->password:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->password:Ljava/lang/String;

    const-string v4, "+||+||_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    iget-object v3, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->password:Ljava/lang/String;

    const-string v4, "+||+||_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->decrypt(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->password:Ljava/lang/String;

    .line 88
    :cond_1
    sget-object v3, Lcom/zendesk/android/prefs/Preferences;->androidSharedPrefs:Landroid/content/SharedPreferences;

    const-string v4, "SUBDOMAIN"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->subdomain:Ljava/lang/String;

    .line 89
    sget-object v3, Lcom/zendesk/android/prefs/Preferences;->androidSharedPrefs:Landroid/content/SharedPreferences;

    const-string v4, "HTTPS"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->https:Z

    .line 90
    sget-object v3, Lcom/zendesk/android/prefs/Preferences;->androidSharedPrefs:Landroid/content/SharedPreferences;

    const-string v4, "NOTIFICATIONS"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->notificationsEnabled:Z

    .line 91
    sget-object v3, Lcom/zendesk/android/prefs/Preferences;->androidSharedPrefs:Landroid/content/SharedPreferences;

    const-string v4, "SOUND"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->soundEnabled:Z

    .line 92
    sget-object v3, Lcom/zendesk/android/prefs/Preferences;->androidSharedPrefs:Landroid/content/SharedPreferences;

    const-string v4, "VIBRATE"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->vibrateEnabled:Z

    .line 94
    sget-object v3, Lcom/zendesk/android/prefs/Preferences;->androidSharedPrefs:Landroid/content/SharedPreferences;

    const-string v4, "FIRST_LOAD"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    :goto_0
    iput-boolean v1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->firstLoad:Z

    .line 95
    iget-object v1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->login:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->subdomain:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 96
    sget-object v1, Lcom/zendesk/android/prefs/Preferences;->androidSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "DASH_VIEW_ONE"

    invoke-direct {p0, v2}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->views:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_2
    sget-object v1, Lcom/zendesk/android/prefs/Preferences;->androidSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "DASH_VIEW_TWO"

    invoke-direct {p0, v2}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->views:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_3
    sget-object v1, Lcom/zendesk/android/prefs/Preferences;->androidSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "DASH_VIEW_THREE"

    invoke-direct {p0, v2}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->views:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v0           #s:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, p1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->commitPreferences(Landroid/content/Context;)V

    .line 105
    return-void

    :cond_5
    move v1, v2

    .line 94
    goto :goto_0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->commitLock:Ljava/lang/Object;

    return-object v0
.end method

.method private addView(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->views:Ljava/util/List;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "valueKey"

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "||_||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->subdomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "||_||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->login:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public commitAndroidPrefs(Landroid/content/SharedPreferences$Editor;)V
    .locals 3
    .parameter "editor"

    .prologue
    .line 140
    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->access$000()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    :try_start_0
    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->access$000()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/Throwable;
    new-instance v1, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig$1;

    invoke-direct {v1, p0, p1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig$1;-><init>(Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig$1;->start()V

    .line 154
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig$2;

    invoke-direct {v1, p0, p1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig$2;-><init>(Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig$2;->start()V

    goto :goto_0
.end method

.method public commitPreferences(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 108
    sget-object v1, Lcom/zendesk/android/prefs/Preferences;->androidSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->login:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 110
    const-string v1, "LOGIN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+||+||_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->login:Ljava/lang/String;

    invoke-virtual {p0, v3, p1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->encrypt(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->password:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 113
    const-string v1, "PASSWORD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+||+||_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->password:Ljava/lang/String;

    invoke-virtual {p0, v3, p1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->encrypt(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    :cond_1
    const-string v1, "SUBDOMAIN"

    iget-object v2, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->subdomain:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    const-string v1, "HTTPS"

    iget-boolean v2, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->https:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 117
    const-string v1, "NOTIFICATIONS"

    iget-boolean v2, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->notificationsEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 118
    const-string v1, "SOUND"

    iget-boolean v2, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->soundEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 119
    const-string v1, "VIBRATE"

    iget-boolean v2, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->vibrateEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 120
    iget-boolean v1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->firstLoad:Z

    if-nez v1, :cond_2

    const-string v1, "FIRST_LOAD"

    const-string v2, "FIRST_LOAD"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    :cond_2
    const-string v1, "DASH_VIEW_ONE"

    invoke-direct {p0, v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    const-string v1, "DASH_VIEW_TWO"

    invoke-direct {p0, v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    const-string v1, "DASH_VIEW_THREE"

    invoke-direct {p0, v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    iget-object v1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->views:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 127
    const-string v1, "DASH_VIEW_ONE"

    invoke-direct {p0, v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->views:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 129
    :cond_3
    iget-object v1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->views:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_4

    .line 130
    const-string v1, "DASH_VIEW_TWO"

    invoke-direct {p0, v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->views:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    :cond_4
    iget-object v1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->views:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_5

    .line 133
    const-string v1, "DASH_VIEW_THREE"

    invoke-direct {p0, v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->views:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    :cond_5
    invoke-virtual {p0, v0}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->commitAndroidPrefs(Landroid/content/SharedPreferences$Editor;)V

    .line 137
    return-void
.end method

.method protected decrypt(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "value"
    .parameter "context"

    .prologue
    .line 305
    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p1}, Lcom/zendesk/api/http/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 306
    .local v1, bytes:[B
    :goto_0
    const-string v6, "PBEWithMD5AndDES"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v4

    .line 307
    .local v4, keyFactory:Ljavax/crypto/SecretKeyFactory;
    new-instance v6, Ljavax/crypto/spec/PBEKeySpec;

    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->access$200()[C

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v4, v6}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 308
    .local v3, key:Ljavax/crypto/SecretKey;
    const-string v6, "PBEWithMD5AndDES"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 309
    .local v5, pbeCipher:Ljavax/crypto/Cipher;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android_id"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, androidId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 311
    const-string v0, "repleacementstringforsimulator"

    .line 313
    :cond_0
    const/4 v6, 0x2

    new-instance v7, Ljavax/crypto/spec/PBEParameterSpec;

    const-string v8, "UTF-8"

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v9, 0x14

    invoke-direct {v7, v8, v9}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-virtual {v5, v6, v3, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 314
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object p1, v6

    .line 316
    .end local v0           #androidId:Ljava/lang/String;
    .end local v1           #bytes:[B
    .end local v3           #key:Ljavax/crypto/SecretKey;
    .end local v4           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v5           #pbeCipher:Ljavax/crypto/Cipher;
    .end local p1
    :goto_1
    return-object p1

    .line 305
    .restart local p1
    :cond_1
    const/4 v6, 0x0

    new-array v1, v6, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    :catch_0
    move-exception v2

    .line 316
    .local v2, e:Ljava/lang/Exception;
    goto :goto_1
.end method

.method protected encrypt(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "value"
    .parameter "context"

    .prologue
    .line 284
    if-eqz p1, :cond_2

    .line 286
    if-eqz p1, :cond_1

    :try_start_0
    const-string v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 287
    .local v1, bytes:[B
    :goto_0
    const-string v6, "PBEWithMD5AndDES"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v4

    .line 288
    .local v4, keyFactory:Ljavax/crypto/SecretKeyFactory;
    new-instance v6, Ljavax/crypto/spec/PBEKeySpec;

    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->access$200()[C

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v4, v6}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 289
    .local v3, key:Ljavax/crypto/SecretKey;
    const-string v6, "PBEWithMD5AndDES"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 290
    .local v5, pbeCipher:Ljavax/crypto/Cipher;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android_id"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, androidId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 292
    const-string v0, "repleacementstringforsimulator"

    .line 294
    :cond_0
    const/4 v6, 0x1

    new-instance v7, Ljavax/crypto/spec/PBEParameterSpec;

    const-string v8, "UTF-8"

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v9, 0x14

    invoke-direct {v7, v8, v9}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-virtual {v5, v6, v3, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 295
    invoke-virtual {v5, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    invoke-static {v6}, Lcom/zendesk/api/http/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v6

    .line 300
    .end local v0           #androidId:Ljava/lang/String;
    .end local v1           #bytes:[B
    .end local v3           #key:Ljavax/crypto/SecretKey;
    .end local v4           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v5           #pbeCipher:Ljavax/crypto/Cipher;
    :goto_1
    return-object v6

    .line 286
    :cond_1
    const/4 v6, 0x0

    new-array v1, v6, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v2

    .line 297
    .local v2, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 300
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    const-string v6, ""

    goto :goto_1
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->login:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSubdomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->subdomain:Ljava/lang/String;

    return-object v0
.end method

.method public getViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->views:Ljava/util/List;

    return-object v0
.end method

.method public hasLoginDetails()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->login:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->subdomain:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDashboardView(Ljava/lang/Long;)Z
    .locals 1
    .parameter "viewId"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFirstLoad()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->firstLoad:Z

    return v0
.end method

.method public isHttps()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->https:Z

    return v0
.end method

.method public isNotificationsEnabled()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->notificationsEnabled:Z

    return v0
.end method

.method public isSoundEnabled()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->soundEnabled:Z

    return v0
.end method

.method public isVibrateEnabled()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->vibrateEnabled:Z

    return v0
.end method

.method public logout()V
    .locals 2

    .prologue
    .line 195
    sget-object v1, Lcom/zendesk/android/prefs/Preferences;->androidSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 196
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "PASSWORD"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 197
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->password:Ljava/lang/String;

    .line 198
    invoke-virtual {p0, v0}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->commitAndroidPrefs(Landroid/content/SharedPreferences$Editor;)V

    .line 199
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    iget-object v0, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->login:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->subdomain:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 168
    sget-object v0, Lcom/zendesk/android/prefs/Preferences;->androidSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "DASH_VIEW_ONE"

    invoke-direct {p0, v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->addView(Ljava/lang/String;)V

    .line 169
    sget-object v0, Lcom/zendesk/android/prefs/Preferences;->androidSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "DASH_VIEW_TWO"

    invoke-direct {p0, v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->addView(Ljava/lang/String;)V

    .line 170
    sget-object v0, Lcom/zendesk/android/prefs/Preferences;->androidSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "DASH_VIEW_THREE"

    invoke-direct {p0, v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->addView(Ljava/lang/String;)V

    .line 173
    :cond_0
    return-void
.end method

.method public setFirstLoad(Z)V
    .locals 0
    .parameter "firstLoad"

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->firstLoad:Z

    .line 280
    return-void
.end method

.method public setHttps(Z)V
    .locals 0
    .parameter "https"

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->https:Z

    .line 244
    return-void
.end method

.method public setLogin(Ljava/lang/String;)V
    .locals 0
    .parameter "login"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->login:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setNotificationsEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->notificationsEnabled:Z

    .line 252
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->password:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setSoundEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->soundEnabled:Z

    .line 260
    return-void
.end method

.method public setSubdomain(Ljava/lang/String;)V
    .locals 3
    .parameter "subdomain"

    .prologue
    .line 234
    if-eqz p1, :cond_0

    const-string v0, "https://"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 235
    :cond_0
    iput-object p1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->subdomain:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setVibratesEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->vibrateEnabled:Z

    .line 268
    return-void
.end method

.method public verifyViews(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v1, toBeRemoved:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->views:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 183
    .local v3, viewId:Ljava/lang/Long;
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/ZendeskModel;->getViews()Lcom/zendesk/api/model/ViewsWithCounts;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/zendesk/api/model/ViewsWithCounts;->getView(Ljava/lang/Long;)Lcom/zendesk/api/model/views/View;

    move-result-object v2

    .line 184
    .local v2, v:Lcom/zendesk/api/model/views/View;
    if-nez v2, :cond_0

    .line 185
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    .end local v2           #v:Lcom/zendesk/api/model/views/View;
    .end local v3           #viewId:Ljava/lang/Long;
    :cond_1
    iget-object v4, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->views:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 189
    iget-object v4, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->views:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 190
    invoke-virtual {p0, p1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->commitPreferences(Landroid/content/Context;)V

    .line 192
    :cond_2
    return-void
.end method
