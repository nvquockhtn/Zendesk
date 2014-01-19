.class public final Lcrittercism/android/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcrittercism/android/ae;

    invoke-direct {v0}, Lcrittercism/android/ae;-><init>()V

    sput-object v0, Lcrittercism/android/ah;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcrittercism/android/ah;-><init>(Landroid/os/Parcel;B)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcrittercism/android/ah;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ah;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ah;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ah;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ah;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ah;->a:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcrittercism/android/ah;->b:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ah;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ah;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ah;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ah;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcrittercism/android/ah;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ah;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ah;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ah;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ah;->f:Ljava/lang/String;

    iput-object p1, p0, Lcrittercism/android/ah;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lcrittercism/android/ah;->b:Z

    iput-object p2, p0, Lcrittercism/android/ah;->d:Ljava/lang/String;

    invoke-static {p3}, Lcom/crittercism/app/Crittercism;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ah;->e:Ljava/lang/String;

    iput-object p4, p0, Lcrittercism/android/ah;->f:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcrittercism/android/ah;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ah;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ah;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ah;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ah;->f:Ljava/lang/String;

    iput-object p1, p0, Lcrittercism/android/ah;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcrittercism/android/ah;->b:Z

    iput-object p3, p0, Lcrittercism/android/ah;->c:Ljava/lang/String;

    iput-object p4, p0, Lcrittercism/android/ah;->d:Ljava/lang/String;

    invoke-static {p3}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ah;->e:Ljava/lang/String;

    iput-object p5, p0, Lcrittercism/android/ah;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcrittercism/android/ah;
    .locals 7

    const/4 v2, 0x1

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "created_by_admin"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_1

    :goto_0
    const-string v5, "anonymous"

    if-eqz v2, :cond_2

    const-string v5, "admin"

    :cond_0
    :goto_1
    new-instance v0, Lcrittercism/android/ah;

    const-string v1, "comment"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "uid"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcrittercism/android/ah;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "username"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-object v0, v6

    goto :goto_2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcrittercism/android/ah;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcrittercism/android/ah;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcrittercism/android/ah;->b:Z

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcrittercism/android/ah;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Lcrittercism/android/ah;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcrittercism/android/ah;->b:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcrittercism/android/ah;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcrittercism/android/ah;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcrittercism/android/ah;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcrittercism/android/ah;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
