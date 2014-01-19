.class Lcom/zendesk/android/prefs/Preferences$ApplicationConfig$1;
.super Ljava/lang/Thread;
.source "Preferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->commitAndroidPrefs(Landroid/content/SharedPreferences$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig$1;->this$0:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    iput-object p2, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 147
    invoke-static {}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 149
    monitor-exit v1

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
