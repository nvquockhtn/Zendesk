.class Lcom/zendesk/android/ticket/CommentsAdapter$3;
.super Ljava/lang/Object;
.source "CommentsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/ticket/CommentsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/CommentsAdapter;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/CommentsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/zendesk/android/ticket/CommentsAdapter$3;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$3;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->comments:Ljava/util/List;
    invoke-static {v0}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$600(Lcom/zendesk/android/ticket/CommentsAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$3;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->comments:Ljava/util/List;
    invoke-static {v0}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$600(Lcom/zendesk/android/ticket/CommentsAdapter;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zendesk/api/model/ticket/audits/Comment;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$3;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    #calls: Lcom/zendesk/android/ticket/CommentsAdapter;->editComment()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$700(Lcom/zendesk/android/ticket/CommentsAdapter;)V

    .line 412
    :cond_0
    return-void
.end method
