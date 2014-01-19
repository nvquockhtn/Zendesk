.class public final Lcom/zendesk/android/ticket/BusProvider;
.super Ljava/lang/Object;
.source "BusProvider.java"


# static fields
.field private static final BUS:Lcom/squareup/otto/Bus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/squareup/otto/Bus;

    invoke-direct {v0}, Lcom/squareup/otto/Bus;-><init>()V

    sput-object v0, Lcom/zendesk/android/ticket/BusProvider;->BUS:Lcom/squareup/otto/Bus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/zendesk/android/ticket/BusProvider;->BUS:Lcom/squareup/otto/Bus;

    return-object v0
.end method
