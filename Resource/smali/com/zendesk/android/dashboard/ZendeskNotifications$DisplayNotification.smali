.class public Lcom/zendesk/android/dashboard/ZendeskNotifications$DisplayNotification;
.super Ljava/lang/Object;
.source "ZendeskNotifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/dashboard/ZendeskNotifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayNotification"
.end annotation


# instance fields
.field body:Ljava/lang/String;

.field final synthetic this$0:Lcom/zendesk/android/dashboard/ZendeskNotifications;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zendesk/android/dashboard/ZendeskNotifications;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "title"
    .parameter "body"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$DisplayNotification;->this$0:Lcom/zendesk/android/dashboard/ZendeskNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p2, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$DisplayNotification;->title:Ljava/lang/String;

    .line 311
    iput-object p3, p0, Lcom/zendesk/android/dashboard/ZendeskNotifications$DisplayNotification;->body:Ljava/lang/String;

    .line 312
    return-void
.end method
