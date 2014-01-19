.class Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter$1;
.super Landroid/widget/Filter;
.source "TagsAutocompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter$1;->this$0:Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5
    .parameter "constraint"

    .prologue
    .line 45
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 46
    .local v1, filterResults:Landroid/widget/Filter$FilterResults;
    if-eqz p1, :cond_0

    .line 49
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, queryString:Ljava/lang/String;
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter$1;->this$0:Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;

    invoke-static {v2}, Lcom/zendesk/api/model/ticket/Ticket;->autocompleteTags(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    #setter for: Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;->tags:Ljava/util/List;
    invoke-static {v3, v4}, Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;->access$002(Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v2           #queryString:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter$1;->this$0:Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;

    #getter for: Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;->tags:Ljava/util/List;
    invoke-static {v3}, Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;->access$000(Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 57
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter$1;->this$0:Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;

    #getter for: Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;->tags:Ljava/util/List;
    invoke-static {v3}, Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;->access$000(Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 59
    :cond_0
    return-object v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1
    .parameter "contraint"
    .parameter "results"

    .prologue
    .line 64
    if-eqz p2, :cond_0

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter$1;->this$0:Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;->notifyDataSetChanged()V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter$1;->this$0:Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
