.class public Lcom/zendesk/android/user/UserProfileActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "UserProfileActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UserProfileActivity"


# instance fields
.field private avatar:Landroid/widget/ImageView;

.field private avatarCache:Lcom/zendesk/android/ui/AvatarCache;

.field private canChange:Z

.field private listView:Landroid/widget/LinearLayout;

.field private name:Landroid/widget/TextView;

.field private role:Landroid/widget/TextView;

.field private ticket:Lcom/zendesk/api/model/ticket/Ticket;

.field private uiHandler:Landroid/os/Handler;

.field private user:Lcom/zendesk/api/model/users/User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    .line 47
    new-instance v0, Lcom/zendesk/android/ui/AvatarCache;

    invoke-direct {v0}, Lcom/zendesk/android/ui/AvatarCache;-><init>()V

    iput-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->avatarCache:Lcom/zendesk/android/ui/AvatarCache;

    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/user/UserProfileActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/zendesk/android/user/UserProfileActivity;->setAvatar()V

    return-void
.end method

.method static synthetic access$100(Lcom/zendesk/android/user/UserProfileActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/zendesk/android/user/UserProfileActivity;->refreshUserDetails()V

    return-void
.end method

.method static synthetic access$200(Lcom/zendesk/android/user/UserProfileActivity;Lcom/zendesk/api/model/users/User;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/zendesk/android/user/UserProfileActivity;->getAvatarResourceId(Lcom/zendesk/api/model/users/User;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/zendesk/android/user/UserProfileActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->avatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zendesk/android/user/UserProfileActivity;)Lcom/zendesk/api/model/users/User;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->user:Lcom/zendesk/api/model/users/User;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zendesk/android/user/UserProfileActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zendesk/android/user/UserProfileActivity;)Lcom/zendesk/android/ui/AvatarCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->avatarCache:Lcom/zendesk/android/ui/AvatarCache;

    return-object v0
.end method

.method private getAvatarResourceId(Lcom/zendesk/api/model/users/User;)I
    .locals 2
    .parameter "u"

    .prologue
    .line 206
    invoke-virtual {p1}, Lcom/zendesk/api/model/users/User;->getRole()Lcom/zendesk/api/model/users/Role;

    move-result-object v0

    sget-object v1, Lcom/zendesk/api/model/users/Role;->SYSTEM:Lcom/zendesk/api/model/users/Role;

    if-ne v0, v1, :cond_0

    .line 207
    sget v0, Lcom/zendesk/android/R$drawable;->user_system_avatar:I

    .line 209
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/zendesk/android/R$drawable;->user_default_avatar:I

    goto :goto_0
.end method

.method private loadAvatar(Lcom/zendesk/api/model/users/User;)V
    .locals 1
    .parameter "u"

    .prologue
    .line 183
    new-instance v0, Lcom/zendesk/android/user/UserProfileActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/zendesk/android/user/UserProfileActivity$2;-><init>(Lcom/zendesk/android/user/UserProfileActivity;Lcom/zendesk/api/model/users/User;)V

    invoke-virtual {p1, v0}, Lcom/zendesk/api/model/users/User;->getAvatar(Lcom/zendesk/api/model/ResponseHandler;)V

    .line 203
    return-void
.end method

.method private loadUser(Lcom/zendesk/api/model/users/User;)V
    .locals 2
    .parameter "u"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->name:Landroid/widget/TextView;

    sget v1, Lcom/zendesk/android/R$string;->loading_msg:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/user/UserProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->role:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    new-instance v0, Lcom/zendesk/android/user/UserProfileActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/zendesk/android/user/UserProfileActivity$1;-><init>(Lcom/zendesk/android/user/UserProfileActivity;Lcom/zendesk/api/model/users/User;)V

    .line 179
    return-void
.end method

.method private refreshUserDetails()V
    .locals 5

    .prologue
    .line 135
    iget-object v2, p0, Lcom/zendesk/android/user/UserProfileActivity;->name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zendesk/android/user/UserProfileActivity;->user:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v3}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v2, p0, Lcom/zendesk/android/user/UserProfileActivity;->user:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v2}, Lcom/zendesk/api/model/users/User;->getRole()Lcom/zendesk/api/model/users/Role;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/zendesk/android/user/UserProfileActivity;->role:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zendesk/android/user/UserProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/zendesk/android/user/UserProfileActivity;->user:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v4}, Lcom/zendesk/api/model/users/User;->getRole()Lcom/zendesk/api/model/users/Role;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zendesk/api/model/strings/UserStrings;->getRole(Landroid/content/res/Resources;Lcom/zendesk/api/model/users/Role;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :goto_0
    iget-object v2, p0, Lcom/zendesk/android/user/UserProfileActivity;->listView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 143
    new-instance v0, Lcom/zendesk/android/user/UserProfileAdapter;

    iget-object v2, p0, Lcom/zendesk/android/user/UserProfileActivity;->user:Lcom/zendesk/api/model/users/User;

    invoke-direct {v0, p0, v2}, Lcom/zendesk/android/user/UserProfileAdapter;-><init>(Landroid/content/Context;Lcom/zendesk/api/model/users/User;)V

    .line 144
    .local v0, adapter:Lcom/zendesk/android/user/UserProfileAdapter;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v0}, Lcom/zendesk/android/user/UserProfileAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/zendesk/android/user/UserProfileActivity;->listView:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zendesk/android/user/UserProfileActivity;->listView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v3, v4}, Lcom/zendesk/android/user/UserProfileAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 139
    .end local v0           #adapter:Lcom/zendesk/android/user/UserProfileAdapter;
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Lcom/zendesk/android/user/UserProfileActivity;->role:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 147
    .restart local v0       #adapter:Lcom/zendesk/android/user/UserProfileAdapter;
    .restart local v1       #i:I
    :cond_1
    return-void
.end method

.method private setAvatar()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 110
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->user:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->getAvatarState()Lcom/zendesk/api/model/shared/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/zendesk/api/model/shared/DownloadState;->DOWNLOADED:Lcom/zendesk/api/model/shared/DownloadState;

    if-ne v0, v1, :cond_2

    .line 112
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->avatarCache:Lcom/zendesk/android/ui/AvatarCache;

    iget-object v1, p0, Lcom/zendesk/android/user/UserProfileActivity;->user:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/android/ui/AvatarCache;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->avatarCache:Lcom/zendesk/android/ui/AvatarCache;

    iget-object v1, p0, Lcom/zendesk/android/user/UserProfileActivity;->user:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zendesk/android/user/UserProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/zendesk/android/user/UserProfileActivity;->avatar:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/zendesk/android/user/UserProfileActivity;->uiHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/zendesk/android/ui/AvatarCache;->getBitmap(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/widget/ImageView;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 131
    :goto_0
    return-void

    .line 116
    :cond_0
    new-instance v6, Ljava/io/File;

    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->user:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->getLocalFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v6, f:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->avatarCache:Lcom/zendesk/android/ui/AvatarCache;

    iget-object v1, p0, Lcom/zendesk/android/user/UserProfileActivity;->user:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zendesk/android/user/UserProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/zendesk/android/user/UserProfileActivity;->avatar:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/zendesk/android/user/UserProfileActivity;->uiHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/zendesk/android/ui/AvatarCache;->getBitmap(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/widget/ImageView;Ljava/lang/Object;Landroid/os/Handler;)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/zendesk/android/user/UserProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zendesk/android/Zendesk;->setupCacheDir(Landroid/content/Context;)V

    .line 121
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->user:Lcom/zendesk/api/model/users/User;

    iget-object v1, p0, Lcom/zendesk/android/user/UserProfileActivity;->user:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getPhotoURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/users/User;->setPhotoURL(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->user:Lcom/zendesk/api/model/users/User;

    invoke-direct {p0, v0}, Lcom/zendesk/android/user/UserProfileActivity;->loadAvatar(Lcom/zendesk/api/model/users/User;)V

    goto :goto_0

    .line 125
    .end local v6           #f:Ljava/io/File;
    :cond_2
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->user:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->getAvatarState()Lcom/zendesk/api/model/shared/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/zendesk/api/model/shared/DownloadState;->LOCAL:Lcom/zendesk/api/model/shared/DownloadState;

    if-ne v0, v1, :cond_3

    .line 126
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->avatar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zendesk/android/user/UserProfileActivity;->user:Lcom/zendesk/api/model/users/User;

    invoke-direct {p0, v1}, Lcom/zendesk/android/user/UserProfileActivity;->getAvatarResourceId(Lcom/zendesk/api/model/users/User;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->avatar:Landroid/widget/ImageView;

    sget v1, Lcom/zendesk/android/R$drawable;->user_default_avatar:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->user:Lcom/zendesk/api/model/users/User;

    invoke-direct {p0, v0}, Lcom/zendesk/android/user/UserProfileActivity;->loadAvatar(Lcom/zendesk/api/model/users/User;)V

    goto :goto_0
.end method

.method private showUser()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->user:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->fullyLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/zendesk/android/user/UserProfileActivity;->setAvatar()V

    .line 100
    invoke-direct {p0}, Lcom/zendesk/android/user/UserProfileActivity;->refreshUserDetails()V

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->avatar:Landroid/widget/ImageView;

    sget v1, Lcom/zendesk/android/R$drawable;->user_default_avatar:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    invoke-direct {p0}, Lcom/zendesk/android/user/UserProfileActivity;->refreshUserDetails()V

    .line 104
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->user:Lcom/zendesk/api/model/users/User;

    invoke-direct {p0, v0}, Lcom/zendesk/android/user/UserProfileActivity;->loadUser(Lcom/zendesk/api/model/users/User;)V

    goto :goto_0
.end method


# virtual methods
.method public changeRequester()V
    .locals 3

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ticketId"

    iget-object v2, p0, Lcom/zendesk/android/user/UserProfileActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 216
    const/16 v1, 0x7de

    invoke-virtual {p0, v0, v1}, Lcom/zendesk/android/user/UserProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 217
    return-void
.end method

.method public createIU(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->uiHandler:Landroid/os/Handler;

    .line 56
    sget v0, Lcom/zendesk/android/R$layout;->activity_user_profile:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/user/UserProfileActivity;->setContentView(I)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zendesk/android/user/UserProfileActivity;->displayBackUp(Z)V

    .line 58
    sget v0, Lcom/zendesk/android/R$id;->user_profile_name:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/user/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->name:Landroid/widget/TextView;

    .line 59
    sget v0, Lcom/zendesk/android/R$id;->user_profile_role:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/user/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->role:Landroid/widget/TextView;

    .line 60
    sget v0, Lcom/zendesk/android/R$id;->user_profile_avatar:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/user/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->avatar:Landroid/widget/ImageView;

    .line 62
    sget v0, Lcom/zendesk/android/R$id;->user_profile_list:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/user/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->listView:Landroid/widget/LinearLayout;

    .line 64
    invoke-virtual {p0}, Lcom/zendesk/android/user/UserProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "userChangeable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->canChange:Z

    .line 66
    return-void
.end method

.method public isLoggingIn()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public loginSuccess()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/zendesk/android/user/UserProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "userId"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 84
    .local v1, userId:Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/zendesk/android/user/UserProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ticketId"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 86
    .local v0, ticketId:Ljava/lang/Long;
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/ZendeskModel;->getUserCache()Lcom/zendesk/api/model/cache/UserCache;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/zendesk/api/model/cache/UserCache;->getUser(Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/android/user/UserProfileActivity;->user:Lcom/zendesk/api/model/users/User;

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/zendesk/api/model/cache/TicketCache;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/android/user/UserProfileActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/zendesk/android/user/UserProfileActivity;->showUser()V

    .line 91
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 221
    invoke-super {p0, p1, p2, p3}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 222
    packed-switch p2, :pswitch_data_0

    .line 232
    :goto_0
    invoke-direct {p0}, Lcom/zendesk/android/user/UserProfileActivity;->showUser()V

    .line 233
    return-void

    .line 224
    :pswitch_0
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getUserCache()Lcom/zendesk/api/model/cache/UserCache;

    move-result-object v1

    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getRequesterField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v1, v0}, Lcom/zendesk/api/model/cache/UserCache;->getUser(Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->user:Lcom/zendesk/api/model/users/User;

    .line 225
    invoke-virtual {p0}, Lcom/zendesk/android/user/UserProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "userId"

    iget-object v2, p0, Lcom/zendesk/android/user/UserProfileActivity;->user:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v2}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 226
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/zendesk/android/user/UserProfileActivity;->setResult(I)V

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/zendesk/android/user/UserProfileActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 243
    .local v0, inflater:Lcom/actionbarsherlock/view/MenuInflater;
    sget v1, Lcom/zendesk/android/R$menu;->user_profile_menu:I

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 244
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 264
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 266
    .local v0, itemId:I
    sget v1, Lcom/zendesk/android/R$id;->menu_user_profile_change:I

    if-ne v0, v1, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/zendesk/android/user/UserProfileActivity;->changeRequester()V

    .line 272
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 268
    :cond_1
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/zendesk/android/user/UserProfileActivity;->finish()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 250
    sget v1, Lcom/zendesk/android/R$id;->menu_user_profile_change:I

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 252
    .local v0, item:Lcom/actionbarsherlock/view/MenuItem;
    if-eqz v0, :cond_0

    .line 253
    iget-boolean v1, p0, Lcom/zendesk/android/user/UserProfileActivity;->canChange:Z

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 256
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 71
    const-string v0, "userId"

    iget-object v1, p0, Lcom/zendesk/android/user/UserProfileActivity;->user:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 72
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "ticketId"

    iget-object v1, p0, Lcom/zendesk/android/user/UserProfileActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 75
    :cond_0
    return-void
.end method
