.class public final enum Lcrittercism/android/ai;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcrittercism/android/ai;

.field public static final enum b:Lcrittercism/android/ai;

.field public static final enum c:Lcrittercism/android/ai;

.field public static final enum d:Lcrittercism/android/ai;

.field public static final enum e:Lcrittercism/android/ai;

.field public static final enum f:Lcrittercism/android/ai;

.field public static final enum g:Lcrittercism/android/ai;

.field private static final synthetic h:[Lcrittercism/android/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcrittercism/android/ai;

    const-string v1, "LOCAL_EMULATOR"

    invoke-direct {v0, v1, v3}, Lcrittercism/android/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/ai;->a:Lcrittercism/android/ai;

    new-instance v0, Lcrittercism/android/ai;

    const-string v1, "LOCAL_DEVICE"

    invoke-direct {v0, v1, v4}, Lcrittercism/android/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/ai;->b:Lcrittercism/android/ai;

    new-instance v0, Lcrittercism/android/ai;

    const-string v1, "OFFICE"

    invoke-direct {v0, v1, v5}, Lcrittercism/android/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/ai;->c:Lcrittercism/android/ai;

    new-instance v0, Lcrittercism/android/ai;

    const-string v1, "OFFICE_YOUSEF"

    invoke-direct {v0, v1, v6}, Lcrittercism/android/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/ai;->d:Lcrittercism/android/ai;

    new-instance v0, Lcrittercism/android/ai;

    const-string v1, "APT_YOUSEF"

    invoke-direct {v0, v1, v7}, Lcrittercism/android/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/ai;->e:Lcrittercism/android/ai;

    new-instance v0, Lcrittercism/android/ai;

    const-string v1, "STAGING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcrittercism/android/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/ai;->f:Lcrittercism/android/ai;

    new-instance v0, Lcrittercism/android/ai;

    const-string v1, "PRODUCTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcrittercism/android/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/ai;->g:Lcrittercism/android/ai;

    const/4 v0, 0x7

    new-array v0, v0, [Lcrittercism/android/ai;

    sget-object v1, Lcrittercism/android/ai;->a:Lcrittercism/android/ai;

    aput-object v1, v0, v3

    sget-object v1, Lcrittercism/android/ai;->b:Lcrittercism/android/ai;

    aput-object v1, v0, v4

    sget-object v1, Lcrittercism/android/ai;->c:Lcrittercism/android/ai;

    aput-object v1, v0, v5

    sget-object v1, Lcrittercism/android/ai;->d:Lcrittercism/android/ai;

    aput-object v1, v0, v6

    sget-object v1, Lcrittercism/android/ai;->e:Lcrittercism/android/ai;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcrittercism/android/ai;->f:Lcrittercism/android/ai;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcrittercism/android/ai;->g:Lcrittercism/android/ai;

    aput-object v2, v0, v1

    sput-object v0, Lcrittercism/android/ai;->h:[Lcrittercism/android/ai;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcrittercism/android/ai;
    .locals 1

    const-class v0, Lcrittercism/android/ai;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ai;

    return-object v0
.end method

.method public static values()[Lcrittercism/android/ai;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcrittercism/android/ai;->h:[Lcrittercism/android/ai;

    array-length v1, v0

    new-array v2, v1, [Lcrittercism/android/ai;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
