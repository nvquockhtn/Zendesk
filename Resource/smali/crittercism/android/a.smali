.class public final enum Lcrittercism/android/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcrittercism/android/a;

.field public static final enum b:Lcrittercism/android/a;

.field public static final enum c:Lcrittercism/android/a;

.field private static enum d:Lcrittercism/android/a;

.field private static final synthetic e:[Lcrittercism/android/a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcrittercism/android/a;

    const-string v1, "NO_INTERNET"

    invoke-direct {v0, v1, v2}, Lcrittercism/android/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/a;->a:Lcrittercism/android/a;

    new-instance v0, Lcrittercism/android/a;

    const-string v1, "CONN_TIMEOUT"

    invoke-direct {v0, v1, v3}, Lcrittercism/android/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/a;->b:Lcrittercism/android/a;

    new-instance v0, Lcrittercism/android/a;

    const-string v1, "UNKNOWN_HOST"

    invoke-direct {v0, v1, v4}, Lcrittercism/android/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/a;->d:Lcrittercism/android/a;

    new-instance v0, Lcrittercism/android/a;

    const-string v1, "WTF"

    invoke-direct {v0, v1, v5}, Lcrittercism/android/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/a;->c:Lcrittercism/android/a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcrittercism/android/a;

    sget-object v1, Lcrittercism/android/a;->a:Lcrittercism/android/a;

    aput-object v1, v0, v2

    sget-object v1, Lcrittercism/android/a;->b:Lcrittercism/android/a;

    aput-object v1, v0, v3

    sget-object v1, Lcrittercism/android/a;->d:Lcrittercism/android/a;

    aput-object v1, v0, v4

    sget-object v1, Lcrittercism/android/a;->c:Lcrittercism/android/a;

    aput-object v1, v0, v5

    sput-object v0, Lcrittercism/android/a;->e:[Lcrittercism/android/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcrittercism/android/a;
    .locals 1

    const-class v0, Lcrittercism/android/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcrittercism/android/a;

    return-object v0
.end method

.method public static values()[Lcrittercism/android/a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcrittercism/android/a;->e:[Lcrittercism/android/a;

    array-length v1, v0

    new-array v2, v1, [Lcrittercism/android/a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
