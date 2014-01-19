.class Lcom/zendesk/android/user/UserProfileActivity$2;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Lcom/zendesk/api/model/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/user/UserProfileActivity;->loadAvatar(Lcom/zendesk/api/model/users/User;)V
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
.field final synthetic this$0:Lcom/zendesk/android/user/UserProfileActivity;

.field final synthetic val$u:Lcom/zendesk/api/model/users/User;


# direct methods
.method constructor <init>(Lcom/zendesk/android/user/UserProfileActivity;Lcom/zendesk/api/model/users/User;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/zendesk/android/user/UserProfileActivity$2;->this$0:Lcom/zendesk/android/user/UserProfileActivity;

    iput-object p2, p0, Lcom/zendesk/android/user/UserProfileActivity$2;->val$u:Lcom/zendesk/api/model/users/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity$2;->this$0:Lcom/zendesk/android/user/UserProfileActivity;

    new-instance v1, Lcom/zendesk/android/user/UserProfileActivity$2$2;

    invoke-direct {v1, p0}, Lcom/zendesk/android/user/UserProfileActivity$2$2;-><init>(Lcom/zendesk/android/user/UserProfileActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/android/user/UserProfileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 201
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
    .line 187
    .local p1, arg0:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<Lcom/zendesk/api/model/users/User;>;"
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity$2;->this$0:Lcom/zendesk/android/user/UserProfileActivity;

    new-instance v1, Lcom/zendesk/android/user/UserProfileActivity$2$1;

    invoke-direct {v1, p0}, Lcom/zendesk/android/user/UserProfileActivity$2$1;-><init>(Lcom/zendesk/android/user/UserProfileActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/android/user/UserProfileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method
