.class public abstract Lcom/zendesk/android/adapters/PagingAdapter;
.super Landroid/widget/BaseAdapter;
.source "PagingAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field protected static final EMPTY_VIEW_TAG:Ljava/lang/String; = "EMPTY_VIEW"

.field protected static final LOADING_VIEW_TAG:Ljava/lang/String; = "LOADING_VIEW"

.field private static final TAG:Ljava/lang/String; = "PagingAdapter"


# instance fields
.field protected activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/zendesk/android/ui/ZDFragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field protected context:Landroid/content/Context;

.field protected currentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private emptyListTitleLabel:Ljava/lang/String;

.field private hideEmptyList:Z

.field protected inflater:Landroid/view/LayoutInflater;

.field protected volatile loading:Z

.field private loadingView:Landroid/view/View;

.field private modelObject:Lcom/zendesk/api/model/ZDPagingModelObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/api/model/ZDPagingModelObject",
            "<TT;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Lcom/zendesk/android/ui/ZDFragmentActivity;Lcom/zendesk/api/model/ZDPagingModelObject;)V
    .locals 1
    .parameter "listView"
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            "Lcom/zendesk/android/ui/ZDFragmentActivity;",
            "Lcom/zendesk/api/model/ZDPagingModelObject",
            "<TT;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lcom/zendesk/android/adapters/PagingAdapter;,"Lcom/zendesk/android/adapters/PagingAdapter<TT;TE;>;"
    .local p3, modelObject:Lcom/zendesk/api/model/ZDPagingModelObject;,"Lcom/zendesk/api/model/ZDPagingModelObject<TT;TE;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zendesk/android/adapters/PagingAdapter;-><init>(Landroid/widget/ListView;Lcom/zendesk/android/ui/ZDFragmentActivity;Lcom/zendesk/api/model/ZDPagingModelObject;Z)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/widget/ListView;Lcom/zendesk/android/ui/ZDFragmentActivity;Lcom/zendesk/api/model/ZDPagingModelObject;Z)V
    .locals 3
    .parameter "listView"
    .parameter "activity"
    .parameter
    .parameter "refreshNow"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            "Lcom/zendesk/android/ui/ZDFragmentActivity;",
            "Lcom/zendesk/api/model/ZDPagingModelObject",
            "<TT;TE;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/zendesk/android/adapters/PagingAdapter;,"Lcom/zendesk/android/adapters/PagingAdapter<TT;TE;>;"
    .local p3, modelObject:Lcom/zendesk/api/model/ZDPagingModelObject;,"Lcom/zendesk/api/model/ZDPagingModelObject<TT;TE;>;"
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    iput-boolean v2, p0, Lcom/zendesk/android/adapters/PagingAdapter;->hideEmptyList:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->emptyListTitleLabel:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/zendesk/android/adapters/PagingAdapter;->modelObject:Lcom/zendesk/api/model/ZDPagingModelObject;

    .line 64
    invoke-virtual {p2}, Lcom/zendesk/android/ui/ZDFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->context:Landroid/content/Context;

    .line 65
    invoke-virtual {p2}, Lcom/zendesk/android/ui/ZDFragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 66
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->activity:Ljava/lang/ref/WeakReference;

    .line 67
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/zendesk/api/model/ZDPagingModelObject;->getListItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->currentList:Ljava/util/List;

    .line 70
    iget-object v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/zendesk/android/R$layout;->component_loading:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->loadingView:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->loadingView:Landroid/view/View;

    const-string v1, "LOADING_VIEW"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    if-eqz p4, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/zendesk/android/adapters/PagingAdapter;->refresh()V

    .line 76
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/adapters/PagingAdapter;)Lcom/zendesk/api/model/ZDPagingModelObject;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->modelObject:Lcom/zendesk/api/model/ZDPagingModelObject;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zendesk/android/adapters/PagingAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/zendesk/android/adapters/PagingAdapter;->mayHaveMoreItems()Z

    move-result v0

    return v0
.end method

.method private mayHaveMoreItems()Z
    .locals 1

    .prologue
    .line 132
    .local p0, this:Lcom/zendesk/android/adapters/PagingAdapter;,"Lcom/zendesk/android/adapters/PagingAdapter<TT;TE;>;"
    iget-object v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->modelObject:Lcom/zendesk/api/model/ZDPagingModelObject;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ZDPagingModelObject;->mayBeMorePages()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract clicked(Landroid/view/View;I)V
.end method

.method public dataLoaded()V
    .locals 0

    .prologue
    .line 200
    .local p0, this:Lcom/zendesk/android/adapters/PagingAdapter;,"Lcom/zendesk/android/adapters/PagingAdapter<TT;TE;>;"
    invoke-virtual {p0}, Lcom/zendesk/android/adapters/PagingAdapter;->notifyDataSetChanged()V

    .line 201
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 114
    .local p0, this:Lcom/zendesk/android/adapters/PagingAdapter;,"Lcom/zendesk/android/adapters/PagingAdapter<TT;TE;>;"
    iget-boolean v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->loading:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->currentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    .line 116
    :cond_0
    iget-boolean v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->loading:Z

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->currentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->currentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "pos"

    .prologue
    .line 125
    .local p0, this:Lcom/zendesk/android/adapters/PagingAdapter;,"Lcom/zendesk/android/adapters/PagingAdapter<TT;TE;>;"
    iget-boolean v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->loading:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->currentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->currentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 109
    .local p0, this:Lcom/zendesk/android/adapters/PagingAdapter;,"Lcom/zendesk/android/adapters/PagingAdapter<TT;TE;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public abstract getRowView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 171
    .local p0, this:Lcom/zendesk/android/adapters/PagingAdapter;,"Lcom/zendesk/android/adapters/PagingAdapter<TT;TE;>;"
    iget-object v1, p0, Lcom/zendesk/android/adapters/PagingAdapter;->currentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/zendesk/android/adapters/PagingAdapter;->loading:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/zendesk/android/adapters/PagingAdapter;->mayHaveMoreItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/zendesk/android/adapters/PagingAdapter;->modelObject:Lcom/zendesk/api/model/ZDPagingModelObject;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zendesk/android/adapters/PagingAdapter;->nextPage(Ljava/lang/Class;)V

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/zendesk/android/adapters/PagingAdapter;->currentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/zendesk/android/adapters/PagingAdapter;->loading:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/zendesk/android/adapters/PagingAdapter;->mayHaveMoreItems()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/zendesk/android/adapters/PagingAdapter;->hideEmptyList:Z

    if-nez v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/zendesk/android/adapters/PagingAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/zendesk/android/R$layout;->empty:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 176
    const-string v1, "EMPTY_VIEW"

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 177
    sget v1, Lcom/zendesk/android/R$id;->empty_text:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 178
    .local v0, emptyMsg:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/zendesk/android/adapters/PagingAdapter;->emptyListTitleLabel:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/zendesk/android/adapters/PagingAdapter;->emptyListTitleLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    move-object v1, p2

    .line 188
    .end local v0           #emptyMsg:Landroid/widget/TextView;
    :goto_1
    return-object v1

    .line 181
    .restart local v0       #emptyMsg:Landroid/widget/TextView;
    :cond_1
    sget v1, Lcom/zendesk/android/R$string;->ticketlist_empty:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 184
    .end local v0           #emptyMsg:Landroid/widget/TextView;
    :cond_2
    iget-object v1, p0, Lcom/zendesk/android/adapters/PagingAdapter;->currentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lcom/zendesk/android/adapters/PagingAdapter;->currentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/zendesk/android/adapters/PagingAdapter;->loading:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/zendesk/android/adapters/PagingAdapter;->mayHaveMoreItems()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 185
    :cond_3
    iget-object v1, p0, Lcom/zendesk/android/adapters/PagingAdapter;->loadingView:Landroid/view/View;

    goto :goto_1

    .line 188
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/zendesk/android/adapters/PagingAdapter;->getRowView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method public declared-synchronized nextPage(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, this:Lcom/zendesk/android/adapters/PagingAdapter;,"Lcom/zendesk/android/adapters/PagingAdapter<TT;TE;>;"
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->loading:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zendesk/android/adapters/PagingAdapter;->mayHaveMoreItems()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 137
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->loading:Z

    .line 139
    invoke-virtual {p0}, Lcom/zendesk/android/adapters/PagingAdapter;->notifyDataSetChanged()V

    .line 141
    new-instance v0, Lcom/zendesk/android/adapters/PagingAdapter$2;

    invoke-direct {v0, p0}, Lcom/zendesk/android/adapters/PagingAdapter$2;-><init>(Lcom/zendesk/android/adapters/PagingAdapter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 195
    .local p0, this:Lcom/zendesk/android/adapters/PagingAdapter;,"Lcom/zendesk/android/adapters/PagingAdapter<TT;TE;>;"
    iget-object v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->modelObject:Lcom/zendesk/api/model/ZDPagingModelObject;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ZDPagingModelObject;->getListItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->currentList:Ljava/util/List;

    .line 196
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 197
    return-void
.end method

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
    .line 209
    .local p0, this:Lcom/zendesk/android/adapters/PagingAdapter;,"Lcom/zendesk/android/adapters/PagingAdapter<TT;TE;>;"
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->currentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->currentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p3, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/zendesk/android/adapters/PagingAdapter;->clicked(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public declared-synchronized refresh()V
    .locals 1

    .prologue
    .line 79
    .local p0, this:Lcom/zendesk/android/adapters/PagingAdapter;,"Lcom/zendesk/android/adapters/PagingAdapter<TT;TE;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->loading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    monitor-exit p0

    return-void

    .line 80
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/zendesk/android/adapters/PagingAdapter;->loading:Z

    .line 82
    new-instance v0, Lcom/zendesk/android/adapters/PagingAdapter$1;

    invoke-direct {v0, p0}, Lcom/zendesk/android/adapters/PagingAdapter$1;-><init>(Lcom/zendesk/android/adapters/PagingAdapter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEmptyListTitleLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "emptyListTitleLabel"

    .prologue
    .line 220
    .local p0, this:Lcom/zendesk/android/adapters/PagingAdapter;,"Lcom/zendesk/android/adapters/PagingAdapter<TT;TE;>;"
    iput-object p1, p0, Lcom/zendesk/android/adapters/PagingAdapter;->emptyListTitleLabel:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setHideEmptyList(Z)V
    .locals 0
    .parameter "hideEmptyList"

    .prologue
    .line 216
    .local p0, this:Lcom/zendesk/android/adapters/PagingAdapter;,"Lcom/zendesk/android/adapters/PagingAdapter<TT;TE;>;"
    iput-boolean p1, p0, Lcom/zendesk/android/adapters/PagingAdapter;->hideEmptyList:Z

    .line 217
    return-void
.end method
