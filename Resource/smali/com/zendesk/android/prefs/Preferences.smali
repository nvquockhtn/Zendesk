.class public Lcom/zendesk/android/prefs/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;
    }
.end annotation


# static fields
.field private static final DASH_VIEW_ONE:Ljava/lang/String; = "DASH_VIEW_ONE"

.field private static final DASH_VIEW_THREE:Ljava/lang/String; = "DASH_VIEW_THREE"

.field private static final DASH_VIEW_TWO:Ljava/lang/String; = "DASH_VIEW_TWO"

.field private static final ENC_PRE:Ljava/lang/String; = "+||+||_"

.field private static final FIRST_LOAD:Ljava/lang/String; = "FIRST_LOAD"

.field private static final HTTPS:Ljava/lang/String; = "HTTPS"

.field private static final LOGIN:Ljava/lang/String; = "LOGIN"

.field private static final NOTIFICATIONS:Ljava/lang/String; = "NOTIFICATIONS"

.field private static final PASSWORD:Ljava/lang/String; = "PASSWORD"

.field private static final SEKRIT:[C = null

.field private static final SEPARATOR:Ljava/lang/String; = "||_||"

.field private static final SOUND:Ljava/lang/String; = "SOUND"

.field private static final SUBDOMAIN:Ljava/lang/String; = "SUBDOMAIN"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static final VIBRATE:Ljava/lang/String; = "VIBRATE"

.field public static androidSharedPrefs:Landroid/content/SharedPreferences;

.field public static appVersion:Ljava/lang/String;

.field private static final applyMethod:Ljava/lang/reflect/Method;

.field private static config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x15

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zendesk/android/prefs/Preferences;->SEKRIT:[C

    .line 44
    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->findApplyMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/zendesk/android/prefs/Preferences;->applyMethod:Ljava/lang/reflect/Method;

    return-void

    .line 27
    :array_0
    .array-data 0x2
        0x61t 0x0t
        0x65t 0x0t
        0x61t 0x0t
        0x73t 0x0t
        0x79t 0x0t
        0x6bt 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x66t 0x0t
        0x6et 0x0t
        0x71t 0x0t
        0x74t 0x0t
        0x6bt 0x0t
        0x71t 0x0t
        0x75t 0x0t
        0x74t 0x0t
        0x71t 0x0t
        0x79t 0x0t
        0x75t 0x0t
        0x6et 0x0t
        0x63t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method static synthetic access$000()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/zendesk/android/prefs/Preferences;->applyMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$200()[C
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/zendesk/android/prefs/Preferences;->SEKRIT:[C

    return-object v0
.end method

.method private static findApplyMethod()Ljava/lang/reflect/Method;
    .locals 3

    .prologue
    .line 324
    :try_start_0
    const-class v0, Landroid/content/SharedPreferences$Editor;

    .line 325
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v1, "apply"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 329
    :goto_0
    return-object v1

    .line 326
    :catch_0
    move-exception v1

    .line 329
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getConfig()Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/zendesk/android/prefs/Preferences;->config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 51
    sget-object v1, Lcom/zendesk/android/prefs/Preferences;->config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    if-nez v1, :cond_0

    .line 52
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/zendesk/android/prefs/Preferences;->androidSharedPrefs:Landroid/content/SharedPreferences;

    .line 53
    new-instance v1, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    invoke-direct {v1, p0}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/zendesk/android/prefs/Preferences;->config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    .line 55
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/zendesk/android/prefs/Preferences;->appVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
