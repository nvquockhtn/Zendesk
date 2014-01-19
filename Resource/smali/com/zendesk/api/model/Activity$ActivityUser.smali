.class public Lcom/zendesk/api/model/Activity$ActivityUser;
.super Lcom/zendesk/api/model/Activity$ActivityActor;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivityUser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/api/model/Activity;


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/Activity;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter "json"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/zendesk/api/model/Activity$ActivityUser;->this$0:Lcom/zendesk/api/model/Activity;

    .line 291
    invoke-direct {p0, p1, p2}, Lcom/zendesk/api/model/Activity$ActivityActor;-><init>(Lcom/zendesk/api/model/Activity;Lorg/json/JSONObject;)V

    .line 292
    return-void
.end method
