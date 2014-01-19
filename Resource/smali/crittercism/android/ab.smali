.class public final Lcrittercism/android/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcrittercism/android/b;

    invoke-direct {v0}, Lcrittercism/android/b;-><init>()V

    sput-object v0, Lcrittercism/android/ab;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcrittercism/android/ab;-><init>(Landroid/os/Parcel;B)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->e:Ljava/lang/String;

    iput v1, p0, Lcrittercism/android/ab;->f:I

    iput v1, p0, Lcrittercism/android/ab;->g:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrittercism/android/ab;->h:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->i:Ljava/lang/String;

    iput v1, p0, Lcrittercism/android/ab;->j:I

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ab;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ab;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ab;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ab;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ab;->e:Ljava/lang/String;

    iget-object v0, p0, Lcrittercism/android/ab;->h:Ljava/util/ArrayList;

    sget-object v1, Lcrittercism/android/ah;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcrittercism/android/ab;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcrittercism/android/ab;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ab;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcrittercism/android/ab;->j:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ab;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->e:Ljava/lang/String;

    iput v1, p0, Lcrittercism/android/ab;->f:I

    iput v1, p0, Lcrittercism/android/ab;->g:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrittercism/android/ab;->h:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->i:Ljava/lang/String;

    iput v1, p0, Lcrittercism/android/ab;->j:I

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->k:Ljava/lang/String;

    iput-object p1, p0, Lcrittercism/android/ab;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->e:Ljava/lang/String;

    iput v1, p0, Lcrittercism/android/ab;->f:I

    iput v1, p0, Lcrittercism/android/ab;->g:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrittercism/android/ab;->h:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->i:Ljava/lang/String;

    iput v1, p0, Lcrittercism/android/ab;->j:I

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->k:Ljava/lang/String;

    iput-object p1, p0, Lcrittercism/android/ab;->c:Ljava/lang/String;

    iput-object p2, p0, Lcrittercism/android/ab;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->e:Ljava/lang/String;

    iput v1, p0, Lcrittercism/android/ab;->f:I

    iput v1, p0, Lcrittercism/android/ab;->g:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrittercism/android/ab;->h:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->i:Ljava/lang/String;

    iput v1, p0, Lcrittercism/android/ab;->j:I

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ab;->k:Ljava/lang/String;

    iput-object p1, p0, Lcrittercism/android/ab;->a:Ljava/lang/String;

    iput-object p2, p0, Lcrittercism/android/ab;->b:Ljava/lang/String;

    iput-object p3, p0, Lcrittercism/android/ab;->c:Ljava/lang/String;

    iput-object p4, p0, Lcrittercism/android/ab;->d:Ljava/lang/String;

    iput-object p5, p0, Lcrittercism/android/ab;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrittercism/android/ab;->h:Ljava/util/ArrayList;

    iput p6, p0, Lcrittercism/android/ab;->f:I

    iput p7, p0, Lcrittercism/android/ab;->g:I

    iput-object p8, p0, Lcrittercism/android/ab;->i:Ljava/lang/String;

    iput-object p9, p0, Lcrittercism/android/ab;->k:Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcrittercism/android/ab;
    .locals 11

    const/4 v10, 0x0

    :try_start_0
    const-string v9, "anonymous"

    const-string v0, "created_by_admin"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "created_by_admin"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v9, "admin"

    :cond_0
    :goto_0
    new-instance v0, Lcrittercism/android/ab;

    const-string v1, "app_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "feedback"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "category"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "description"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "thumbs_up"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "thumbs_down"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "created_by"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v9}, Lcrittercism/android/ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "admin_replies"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "admin_replies"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcrittercism/android/ab;->j:I

    :cond_1
    const-string v1, "thread"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-lt v1, v3, :cond_3

    :goto_2
    return-object v0

    :cond_2
    :try_start_2
    const-string v0, "created_by_username"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "created_by_username"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcrittercism/android/ah;->a(Lorg/json/JSONObject;)Lcrittercism/android/ah;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcrittercism/android/ab;->a(Lcrittercism/android/ah;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v10

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcrittercism/android/ab;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcrittercism/android/ah;)V
    .locals 1

    iget-object v0, p0, Lcrittercism/android/ab;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcrittercism/android/ab;->d:Ljava/lang/String;

    return-void
.end method

.method public final declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcrittercism/android/ab;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcrittercism/android/ab;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcrittercism/android/ab;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcrittercism/android/ab;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcrittercism/android/ab;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcrittercism/android/ab;->c:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcrittercism/android/ab;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcrittercism/android/ab;->e:Ljava/lang/String;

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcrittercism/android/ab;->f:I

    return v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcrittercism/android/ab;->k:Ljava/lang/String;

    return-void
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcrittercism/android/ab;->g:I

    return v0
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcrittercism/android/ab;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final g()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcrittercism/android/ab;->h:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcrittercism/android/ab;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcrittercism/android/ab;->j:I

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcrittercism/android/ab;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcrittercism/android/ab;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcrittercism/android/ab;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcrittercism/android/ab;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcrittercism/android/ab;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcrittercism/android/ab;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcrittercism/android/ab;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcrittercism/android/ab;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget v0, p0, Lcrittercism/android/ab;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcrittercism/android/ab;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcrittercism/android/ab;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcrittercism/android/ab;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcrittercism/android/ab;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
