.class public Lcom/zendesk/api/model/Activity$ActivityTargetTicket;
.super Lcom/zendesk/api/model/Activity$ActivityObject;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivityTargetTicket"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/api/model/Activity;


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/Activity;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter "json"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/zendesk/api/model/Activity$ActivityTargetTicket;->this$0:Lcom/zendesk/api/model/Activity;

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/zendesk/api/model/Activity$ActivityObject;-><init>(Lcom/zendesk/api/model/Activity;Lorg/json/JSONObject;)V

    .line 195
    return-void
.end method
