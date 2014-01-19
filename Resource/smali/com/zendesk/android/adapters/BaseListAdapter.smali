.class public abstract Lcom/zendesk/android/adapters/BaseListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseListAdapter.java"


# instance fields
.field protected context:Landroid/content/Context;

.field protected inflater:Landroid/view/LayoutInflater;

.field private mOnItemClick:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    new-instance v0, Lcom/zendesk/android/adapters/BaseListAdapter$1;

    invoke-direct {v0, p0}, Lcom/zendesk/android/adapters/BaseListAdapter$1;-><init>(Lcom/zendesk/android/adapters/BaseListAdapter;)V

    iput-object v0, p0, Lcom/zendesk/android/adapters/BaseListAdapter;->mOnItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 18
    iput-object p1, p0, Lcom/zendesk/android/adapters/BaseListAdapter;->context:Landroid/content/Context;

    .line 19
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/adapters/BaseListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 20
    return-void
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getItem(I)Ljava/lang/Object;
.end method

.method public getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zendesk/android/adapters/BaseListAdapter;->mOnItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public abstract getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract onItemClick(Landroid/view/View;I)V
.end method
