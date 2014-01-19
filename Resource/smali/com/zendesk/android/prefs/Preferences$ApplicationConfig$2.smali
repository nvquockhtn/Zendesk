.class Lcom/zendesk/android/prefs/Preferences$ApplicationConfig$2;
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
    .line 154
    iput-object p1, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig$2;->this$0:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    iput-object p2, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 156
    invoke-static {}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    monitor-exit v1

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
