.class Lcom/zendesk/android/views/ViewsActivity$1$1;
.super Ljava/lang/Object;
.source "ViewsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/views/ViewsActivity$1;->responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zendesk/android/views/ViewsActivity$1;


# direct methods
.method constructor <init>(Lcom/zendesk/android/views/ViewsActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/zendesk/android/views/ViewsActivity$1$1;->this$1:Lcom/zendesk/android/views/ViewsActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/zendesk/android/views/ViewsActivity$1$1;->this$1:Lcom/zendesk/android/views/ViewsActivity$1;

    iget-object v0, v0, Lcom/zendesk/android/views/ViewsActivity$1;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/views/ViewsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/zendesk/android/views/ViewsActivity$1$1;->this$1:Lcom/zendesk/android/views/ViewsActivity$1;

    iget-object v0, v0, Lcom/zendesk/android/views/ViewsActivity$1;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    #getter for: Lcom/zendesk/android/views/ViewsActivity;->adapter:Lcom/zendesk/android/views/ViewsAdapter;
    invoke-static {v0}, Lcom/zendesk/android/views/ViewsActivity;->access$000(Lcom/zendesk/android/views/ViewsActivity;)Lcom/zendesk/android/views/ViewsAdapter;

    move-result-object v0

    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/ZendeskModel;->getViews()Lcom/zendesk/api/model/ViewsWithCounts;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/ViewsWithCounts;->getListItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/android/views/ViewsAdapter;->setViews(Ljava/util/List;)V

    .line 94
    iget-object v0, p0, Lcom/zendesk/android/views/ViewsActivity$1$1;->this$1:Lcom/zendesk/android/views/ViewsActivity$1;

    iget-object v0, v0, Lcom/zendesk/android/views/ViewsActivity$1;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    #getter for: Lcom/zendesk/android/views/ViewsActivity;->adapter:Lcom/zendesk/android/views/ViewsAdapter;
    invoke-static {v0}, Lcom/zendesk/android/views/ViewsActivity;->access$000(Lcom/zendesk/android/views/ViewsActivity;)Lcom/zendesk/android/views/ViewsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/android/views/ViewsAdapter;->notifyDataSetChanged()V

    .line 96
    :cond_0
    return-void
.end method
