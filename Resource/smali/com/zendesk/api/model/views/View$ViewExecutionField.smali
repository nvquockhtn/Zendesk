.class public Lcom/zendesk/api/model/views/View$ViewExecutionField;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/views/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewExecutionField"
.end annotation


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "id"
    .end annotation
.end field

.field final synthetic this$0:Lcom/zendesk/api/model/views/View;

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/views/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "title"

    .prologue
    .line 417
    iput-object p1, p0, Lcom/zendesk/api/model/views/View$ViewExecutionField;->this$0:Lcom/zendesk/api/model/views/View;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p2, p0, Lcom/zendesk/api/model/views/View$ViewExecutionField;->id:Ljava/lang/String;

    .line 420
    iput-object p3, p0, Lcom/zendesk/api/model/views/View$ViewExecutionField;->title:Ljava/lang/String;

    .line 421
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/zendesk/api/model/views/View$ViewExecutionField;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/zendesk/api/model/views/View$ViewExecutionField;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 438
    iput-object p1, p0, Lcom/zendesk/api/model/views/View$ViewExecutionField;->id:Ljava/lang/String;

    .line 439
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 456
    iput-object p1, p0, Lcom/zendesk/api/model/views/View$ViewExecutionField;->title:Ljava/lang/String;

    .line 457
    return-void
.end method
