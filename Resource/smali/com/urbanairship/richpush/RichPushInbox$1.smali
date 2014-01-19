.class Lcom/urbanairship/richpush/RichPushInbox$1;
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


# direct methods
.method constructor <init>(Lcom/urbanairship/richpush/RichPushInbox;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/richpush/RichPushInbox$1;->this$0:Lcom/urbanairship/richpush/RichPushInbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox$1;->this$0:Lcom/urbanairship/richpush/RichPushInbox;

    #calls: Lcom/urbanairship/richpush/RichPushInbox;->notifyListeners()V
    invoke-static {v0}, Lcom/urbanairship/richpush/RichPushInbox;->access$000(Lcom/urbanairship/richpush/RichPushInbox;)V

    return-void
.end method
