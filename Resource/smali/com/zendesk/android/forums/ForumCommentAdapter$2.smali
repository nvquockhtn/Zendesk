.class Lcom/zendesk/android/forums/ForumCommentAdapter$2;
.super Ljava/lang/Object;
.source "ForumCommentAdapter.java"

# interfaces
.implements Lcom/zendesk/api/model/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/forums/ForumCommentAdapter;->loadAvatar(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zendesk/api/model/ResponseHandler",
        "<",
        "Lcom/zendesk/api/model/users/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/forums/ForumCommentAdapter;

.field final synthetic val$row:Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;

.field final synthetic val$u:Lcom/zendesk/api/model/users/User;


# direct methods
.method constructor <init>(Lcom/zendesk/android/forums/ForumCommentAdapter;Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;Lcom/zendesk/api/model/users/User;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$2;->this$0:Lcom/zendesk/android/forums/ForumCommentAdapter;

    iput-object p2, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$2;->val$row:Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;

    iput-object p3, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$2;->val$u:Lcom/zendesk/api/model/users/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$2;->this$0:Lcom/zendesk/android/forums/ForumCommentAdapter;

    #getter for: Lcom/zendesk/android/forums/ForumCommentAdapter;->activityRef:Ljava/lang/ref/SoftReference;
    invoke-static {v0}, Lcom/zendesk/android/forums/ForumCommentAdapter;->access$200(Lcom/zendesk/android/forums/ForumCommentAdapter;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/zendesk/android/forums/ForumCommentAdapter$2$2;

    invoke-direct {v1, p0}, Lcom/zendesk/android/forums/ForumCommentAdapter$2$2;-><init>(Lcom/zendesk/android/forums/ForumCommentAdapter$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 209
    return-void
.end method

.method public responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ZDModelObject",
            "<",
            "Lcom/zendesk/api/model/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, responseObject:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<Lcom/zendesk/api/model/users/User;>;"
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$2;->this$0:Lcom/zendesk/android/forums/ForumCommentAdapter;

    #getter for: Lcom/zendesk/android/forums/ForumCommentAdapter;->activityRef:Ljava/lang/ref/SoftReference;
    invoke-static {v0}, Lcom/zendesk/android/forums/ForumCommentAdapter;->access$200(Lcom/zendesk/android/forums/ForumCommentAdapter;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/zendesk/android/forums/ForumCommentAdapter$2$1;

    invoke-direct {v1, p0}, Lcom/zendesk/android/forums/ForumCommentAdapter$2$1;-><init>(Lcom/zendesk/android/forums/ForumCommentAdapter$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method