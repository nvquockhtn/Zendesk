.class public Lcom/zendesk/android/ticket/editors/Option;
.super Ljava/lang/Object;
.source "Option.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final displayString:Ljava/lang/String;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "displayString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 8
    .local p0, this:Lcom/zendesk/android/ticket/editors/Option;,"Lcom/zendesk/android/ticket/editors/Option<TE;>;"
    .local p1, value:Ljava/lang/Object;,"TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/zendesk/android/ticket/editors/Option;->value:Ljava/lang/Object;

    .line 10
    iput-object p2, p0, Lcom/zendesk/android/ticket/editors/Option;->displayString:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getDisplayString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    .local p0, this:Lcom/zendesk/android/ticket/editors/Option;,"Lcom/zendesk/android/ticket/editors/Option<TE;>;"
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/Option;->displayString:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, this:Lcom/zendesk/android/ticket/editors/Option;,"Lcom/zendesk/android/ticket/editors/Option<TE;>;"
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/Option;->value:Ljava/lang/Object;

    return-object v0
.end method
