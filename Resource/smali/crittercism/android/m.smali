.class public final Lcrittercism/android/m;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/m;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/m;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/m;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/m;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/m;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/m;->c:Ljava/lang/String;

    iput-object p1, p0, Lcrittercism/android/m;->a:Ljava/lang/String;

    iput-object p2, p0, Lcrittercism/android/m;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcrittercism/android/m;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "anonymous"

    const-string v2, "username"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "username"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_0
    const-string v0, "votes_left"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "votes_left"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcrittercism/android/m;

    const-string v3, "id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcrittercism/android/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "notify"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "notify"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcrittercism/android/m;->b:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_2
    move-object v2, v0

    goto :goto_0
.end method
