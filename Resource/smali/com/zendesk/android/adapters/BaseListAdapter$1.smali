.class Lcom/zendesk/android/adapters/BaseListAdapter$1;
.super Ljava/lang/Object;
.source "BaseListAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/adapters/BaseListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/adapters/BaseListAdapter;


# direct methods
.method constructor <init>(Lcom/zendesk/android/adapters/BaseListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/zendesk/android/adapters/BaseListAdapter$1;->this$0:Lcom/zendesk/android/adapters/BaseListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/zendesk/android/adapters/BaseListAdapter$1;->this$0:Lcom/zendesk/android/adapters/BaseListAdapter;

    invoke-virtual {v0, p2, p3}, Lcom/zendesk/android/adapters/BaseListAdapter;->onItemClick(Landroid/view/View;I)V

    .line 39
    return-void
.end method
