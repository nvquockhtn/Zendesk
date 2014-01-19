.class public final Lcom/actionbarsherlock/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field public static abs__max_action_buttons:I

.field public static default_circle_indicator_orientation:I

.field public static default_title_indicator_footer_indicator_style:I

.field public static default_title_indicator_line_position:I

.field public static default_underline_indicator_fade_delay:I

.field public static default_underline_indicator_fade_length:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1801
    const/high16 v0, 0x7f0a

    sput v0, Lcom/actionbarsherlock/R$integer;->abs__max_action_buttons:I

    .line 1802
    const v0, 0x7f0a0001

    sput v0, Lcom/actionbarsherlock/R$integer;->default_circle_indicator_orientation:I

    .line 1803
    const v0, 0x7f0a0002

    sput v0, Lcom/actionbarsherlock/R$integer;->default_title_indicator_footer_indicator_style:I

    .line 1804
    const v0, 0x7f0a0003

    sput v0, Lcom/actionbarsherlock/R$integer;->default_title_indicator_line_position:I

    .line 1805
    const v0, 0x7f0a0004

    sput v0, Lcom/actionbarsherlock/R$integer;->default_underline_indicator_fade_delay:I

    .line 1806
    const v0, 0x7f0a0005

    sput v0, Lcom/actionbarsherlock/R$integer;->default_underline_indicator_fade_length:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
