.class public Lcom/zendesk/api/model/Activity$ActivityObject;
.super Ljava/lang/Object;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivityObject"
.end annotation


# static fields
.field private static final KEY_NICE_ID:Ljava/lang/String; = "nice_id"

.field private static final KEY_SUBJECT:Ljava/lang/String; = "subject"


# instance fields
.field private niceId:Ljava/lang/Long;

.field private subject:Ljava/lang/String;

.field final synthetic this$0:Lcom/zendesk/api/model/Activity;


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/Activity;Lorg/json/JSONObject;)V
    .locals 1
    .parameter
    .parameter "json"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/zendesk/api/model/Activity$ActivityObject;->this$0:Lcom/zendesk/api/model/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const-string v0, "nice_id"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/Activity$ActivityObject;->niceId:Ljava/lang/Long;

    .line 158
    const-string v0, "subject"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/Activity$ActivityObject;->subject:Ljava/lang/String;

    .line 159
    return-void
.end method


# virtual methods
.method public getNiceId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/zendesk/api/model/Activity$ActivityObject;->niceId:Ljava/lang/Long;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/zendesk/api/model/Activity$ActivityObject;->subject:Ljava/lang/String;

    return-object v0
.end method
