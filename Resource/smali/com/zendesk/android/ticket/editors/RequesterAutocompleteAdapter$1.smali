.class Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter$1;
.super Landroid/widget/Filter;
.source "RequesterAutocompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter$1;->this$0:Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5
    .parameter "constraint"

    .prologue
    .line 52
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 53
    .local v1, filterResults:Landroid/widget/Filter$FilterResults;
    if-eqz p1, :cond_1

    .line 57
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, queryString:Ljava/lang/String;
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 63
    :cond_0
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter$1;->this$0:Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;

    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/zendesk/api/model/users/User;->autoComplete(Ljava/lang/String;Lcom/zendesk/api/model/BaseModel;)Ljava/util/List;

    move-result-object v4

    #setter for: Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;->users:Ljava/util/List;
    invoke-static {v3, v4}, Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;->access$002(Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v2           #queryString:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter$1;->this$0:Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;

    #getter for: Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;->users:Ljava/util/List;
    invoke-static {v3}, Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;->access$000(Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 69
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter$1;->this$0:Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;

    #getter for: Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;->users:Ljava/util/List;
    invoke-static {v3}, Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;->access$000(Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 71
    :cond_1
    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1
    .parameter "contraint"
    .parameter "results"

    .prologue
    .line 76
    if-eqz p2, :cond_0

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter$1;->this$0:Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;->notifyDataSetChanged()V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter$1;->this$0:Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
