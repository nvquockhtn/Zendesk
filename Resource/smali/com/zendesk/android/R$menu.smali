.class public final Lcom/zendesk/android/R$menu;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "menu"
.end annotation


# static fields
.field public static comment_menu:I

.field public static copy_menu:I

.field public static dashboard_menu:I

.field public static edit_comment:I

.field public static edit_ticket_menu:I

.field public static editor_menu:I

.field public static new_ticket_menu:I

.field public static refresh_menu:I

.field public static ticket_menu:I

.field public static user_profile_menu:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1908
    const/high16 v0, 0x7f0d

    sput v0, Lcom/zendesk/android/R$menu;->comment_menu:I

    .line 1909
    const v0, 0x7f0d0001

    sput v0, Lcom/zendesk/android/R$menu;->copy_menu:I

    .line 1910
    const v0, 0x7f0d0002

    sput v0, Lcom/zendesk/android/R$menu;->dashboard_menu:I

    .line 1911
    const v0, 0x7f0d0003

    sput v0, Lcom/zendesk/android/R$menu;->edit_comment:I

    .line 1912
    const v0, 0x7f0d0004

    sput v0, Lcom/zendesk/android/R$menu;->edit_ticket_menu:I

    .line 1913
    const v0, 0x7f0d0005

    sput v0, Lcom/zendesk/android/R$menu;->editor_menu:I

    .line 1914
    const v0, 0x7f0d0006

    sput v0, Lcom/zendesk/android/R$menu;->new_ticket_menu:I

    .line 1915
    const v0, 0x7f0d0007

    sput v0, Lcom/zendesk/android/R$menu;->refresh_menu:I

    .line 1916
    const v0, 0x7f0d0008

    sput v0, Lcom/zendesk/android/R$menu;->ticket_menu:I

    .line 1917
    const v0, 0x7f0d0009

    sput v0, Lcom/zendesk/android/R$menu;->user_profile_menu:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
