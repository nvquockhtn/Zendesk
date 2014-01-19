.class public Lcom/zendesk/api/model/ticket/SatisfactionRating;
.super Ljava/lang/Object;
.source "SatisfactionRating.java"


# static fields
.field private static final KEY_COMMENT:Ljava/lang/String; = "comment"

.field private static final KEY_SCORE:Ljava/lang/String; = "score"


# instance fields
.field private comment:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "comment"
    .end annotation
.end field

.field private satisfactionScore:Ljava/lang/String;

.field private score:Lcom/zendesk/api/model/ticket/SatisfactionScore;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "score"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "score"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/SatisfactionRating;->satisfactionScore:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "score"
    .parameter "comment"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zendesk/api/model/ticket/SatisfactionScore;->get(Ljava/lang/String;)Lcom/zendesk/api/model/ticket/SatisfactionScore;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/SatisfactionRating;->score:Lcom/zendesk/api/model/ticket/SatisfactionScore;

    .line 40
    iput-object p2, p0, Lcom/zendesk/api/model/ticket/SatisfactionRating;->comment:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "json"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "score"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zendesk/api/model/ticket/SatisfactionScore;->get(Ljava/lang/String;)Lcom/zendesk/api/model/ticket/SatisfactionScore;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/SatisfactionRating;->score:Lcom/zendesk/api/model/ticket/SatisfactionScore;

    .line 30
    const-string v0, "comment"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/SatisfactionRating;->comment:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/SatisfactionRating;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Lcom/zendesk/api/model/ticket/SatisfactionScore;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/SatisfactionRating;->score:Lcom/zendesk/api/model/ticket/SatisfactionScore;

    return-object v0
.end method

.method public getStatisfactionScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/SatisfactionRating;->satisfactionScore:Ljava/lang/String;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .parameter "comment"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/SatisfactionRating;->comment:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setScore(Lcom/zendesk/api/model/ticket/SatisfactionScore;)V
    .locals 0
    .parameter "score"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/SatisfactionRating;->score:Lcom/zendesk/api/model/ticket/SatisfactionScore;

    .line 81
    return-void
.end method
