.class public Lcom/zendesk/android/Colors;
.super Ljava/lang/Object;
.source "Colors.java"


# static fields
.field public static final DARK_TEXT:I

.field public static final HINT_TEXT:I

.field public static final LIST_SELECTED_GREEN:I

.field public static final WHITE:I

.field public static final ZENDESK_GREEN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "#488214"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/zendesk/android/Colors;->ZENDESK_GREEN:I

    .line 8
    const-string v0, "#78A300"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/zendesk/android/Colors;->LIST_SELECTED_GREEN:I

    .line 9
    const-string v0, "#333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/zendesk/android/Colors;->DARK_TEXT:I

    .line 10
    const-string v0, "#aaaaaa"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/zendesk/android/Colors;->HINT_TEXT:I

    .line 11
    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/zendesk/android/Colors;->WHITE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
