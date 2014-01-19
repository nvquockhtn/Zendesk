.class Lcom/urbanairship/richpush/RichPushInbox$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/richpush/RichPushInbox;->registerDatabaseChangeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/richpush/RichPushInbox;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$notifyRunner:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/urbanairship/richpush/RichPushInbox;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/richpush/RichPushInbox$2;->this$0:Lcom/urbanairship/richpush/RichPushInbox;

    iput-object p2, p0, Lcom/urbanairship/richpush/RichPushInbox$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/urbanairship/richpush/RichPushInbox$2;->val$notifyRunner:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox$2;->this$0:Lcom/urbanairship/richpush/RichPushInbox;

    #calls: Lcom/urbanairship/richpush/RichPushInbox;->buildCache()V
    invoke-static {v0}, Lcom/urbanairship/richpush/RichPushInbox;->access$100(Lcom/urbanairship/richpush/RichPushInbox;)V

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox$2;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox$2;->val$notifyRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
