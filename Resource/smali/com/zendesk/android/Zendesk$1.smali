.class Lcom/zendesk/android/Zendesk$1;
.super Ljava/lang/Object;
.source "Zendesk.java"

# interfaces
.implements Lcom/urbanairship/push/PushNotificationBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/Zendesk;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/Zendesk;


# direct methods
.method constructor <init>(Lcom/zendesk/android/Zendesk;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/zendesk/android/Zendesk$1;->this$0:Lcom/zendesk/android/Zendesk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildNotification(Ljava/lang/String;Ljava/util/Map;)Landroid/app/Notification;
    .locals 2
    .parameter "alert"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/zendesk/android/Zendesk$1;->this$0:Lcom/zendesk/android/Zendesk;

    invoke-virtual {v1}, Lcom/zendesk/android/Zendesk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->getInstance(Landroid/content/Context;)Lcom/zendesk/android/dashboard/ZendeskNotifications;

    move-result-object v0

    .line 67
    .local v0, notifications:Lcom/zendesk/android/dashboard/ZendeskNotifications;
    iget-object v1, p0, Lcom/zendesk/android/Zendesk$1;->this$0:Lcom/zendesk/android/Zendesk;

    invoke-virtual {v1}, Lcom/zendesk/android/Zendesk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p1}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->postNotifications(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method public getNextId(Ljava/lang/String;Ljava/util/Map;)I
    .locals 1
    .parameter "alert"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v0, 0x4d2

    return v0
.end method
