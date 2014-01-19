.class public Lcom/zendesk/android/entry/OnboardingActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "OnboardingActivity.java"


# instance fields
.field body:Landroid/widget/TextView;

.field finishButton:Landroid/widget/Button;

.field img:Landroid/widget/ImageView;

.field private index:I

.field nextButton:Landroid/widget/ImageButton;

.field pip1:Landroid/widget/ImageView;

.field pip2:Landroid/widget/ImageView;

.field pip3:Landroid/widget/ImageView;

.field pip4:Landroid/widget/ImageView;

.field prevButton:Landroid/widget/ImageButton;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->index:I

    return-void
.end method

.method private setState()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 84
    iget v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->index:I

    packed-switch v0, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->title:Landroid/widget/TextView;

    sget v1, Lcom/zendesk/android/R$string;->onboarding_title_1:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->img:Landroid/widget/ImageView;

    sget v1, Lcom/zendesk/android/R$drawable;->tour_1:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->body:Landroid/widget/TextView;

    sget v1, Lcom/zendesk/android/R$string;->onboarding_body_1:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 89
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->pip1:Landroid/widget/ImageView;

    sget v1, Lcom/zendesk/android/R$drawable;->tour_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->pip2:Landroid/widget/ImageView;

    sget v1, Lcom/zendesk/android/R$drawable;->tour_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->pip3:Landroid/widget/ImageView;

    sget v1, Lcom/zendesk/android/R$drawable;->tour_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->pip4:Landroid/widget/ImageView;

    sget v1, Lcom/zendesk/android/R$drawable;->tour_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->prevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->finishButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->title:Landroid/widget/TextView;

    sget v1, Lcom/zendesk/android/R$string;->onboarding_title_2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->img:Landroid/widget/ImageView;

    sget v1, Lcom/zendesk/android/R$drawable;->tour_2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->body:Landroid/widget/TextView;

    sget v1, Lcom/zendesk/android/R$string;->onboarding_body_2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 102
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->pip1:Landroid/widget/ImageView;

    sget v1, Lcom/zendesk/android/R$drawable;->tour_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->pip2:Landroid/widget/ImageView;

    sget v1, Lcom/zendesk/android/R$drawable;->tour_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->pip3:Landroid/widget/ImageView;

    sget v1, Lcom/zendesk/android/R$drawable;->tour_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->pip4:Landroid/widget/ImageView;

    sget v1, Lcom/zendesk/android/R$drawable;->tour_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->prevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->finishButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 112
    :pswitch_2
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->title:Landroid/widget/TextView;

    sget v1, Lcom/zendesk/android/R$string;->onboarding_title_3:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->img:Landroid/widget/ImageView;

    sget v1, Lcom/zendesk/android/R$drawable;->tour_3:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->body:Landroid/widget/TextView;

    sget v1, Lcom/zendesk/android/R$string;->onboarding_body_3:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->pip1:Landroid/widget/ImageView;

    sget v1, Lcom/zendesk/android/R$drawable;->tour_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->pip2:Landroid/widget/ImageView;

    sget v1, Lcom/zendesk/android/R$drawable;->tour_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->pip3:Landroid/widget/ImageView;

    sget v1, Lcom/zendesk/android/R$drawable;->tour_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->pip4:Landroid/widget/ImageView;

    sget v1, Lcom/zendesk/android/R$drawable;->tour_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->prevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->finishButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 125
    :pswitch_3
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->title:Landroid/widget/TextView;

    sget v1, Lcom/zendesk/android/R$string;->onboarding_title_4:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 126
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->img:Landroid/widget/ImageView;

    sget v1, Lcom/zendesk/android/R$drawable;->tour_4:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->body:Landroid/widget/TextView;

    sget v1, Lcom/zendesk/android/R$string;->onboarding_body_4:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->pip1:Landroid/widget/ImageView;

    sget v1, Lcom/zendesk/android/R$drawable;->tour_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->pip2:Landroid/widget/ImageView;

    sget v1, Lcom/zendesk/android/R$drawable;->tour_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->pip3:Landroid/widget/ImageView;

    sget v1, Lcom/zendesk/android/R$drawable;->tour_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->pip4:Landroid/widget/ImageView;

    sget v1, Lcom/zendesk/android/R$drawable;->tour_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->prevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->finishButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public createIU(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 35
    sget v0, Lcom/zendesk/android/R$layout;->activity_onboarding:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/entry/OnboardingActivity;->setContentView(I)V

    .line 37
    sget v0, Lcom/zendesk/android/R$id;->onboarding_title:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/entry/OnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->title:Landroid/widget/TextView;

    .line 38
    sget v0, Lcom/zendesk/android/R$id;->onboarding_img:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/entry/OnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->img:Landroid/widget/ImageView;

    .line 39
    sget v0, Lcom/zendesk/android/R$id;->onboarding_body:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/entry/OnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->body:Landroid/widget/TextView;

    .line 40
    sget v0, Lcom/zendesk/android/R$id;->onboarding_pip1:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/entry/OnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->pip1:Landroid/widget/ImageView;

    .line 41
    sget v0, Lcom/zendesk/android/R$id;->onboarding_pip2:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/entry/OnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->pip2:Landroid/widget/ImageView;

    .line 42
    sget v0, Lcom/zendesk/android/R$id;->onboarding_pip3:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/entry/OnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->pip3:Landroid/widget/ImageView;

    .line 43
    sget v0, Lcom/zendesk/android/R$id;->onboarding_pip4:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/entry/OnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->pip4:Landroid/widget/ImageView;

    .line 44
    sget v0, Lcom/zendesk/android/R$id;->onboarding_next_button:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/entry/OnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->nextButton:Landroid/widget/ImageButton;

    .line 45
    sget v0, Lcom/zendesk/android/R$id;->onboarding_prev_button:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/entry/OnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->prevButton:Landroid/widget/ImageButton;

    .line 46
    sget v0, Lcom/zendesk/android/R$id;->onboarding_finish_button:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/entry/OnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->finishButton:Landroid/widget/Button;

    .line 47
    return-void
.end method

.method public isLoggingIn()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public loggingIn()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public loginSuccess()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public next(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 63
    iget v4, p0, Lcom/zendesk/android/entry/OnboardingActivity;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/zendesk/android/entry/OnboardingActivity;->index:I

    .line 64
    iget v4, p0, Lcom/zendesk/android/entry/OnboardingActivity;->index:I

    const/4 v5, 0x4

    if-gt v4, v5, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/zendesk/android/entry/OnboardingActivity;->setState()V

    .line 76
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->getConfig()Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    move-result-object v0

    .line 68
    .local v0, config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->setFirstLoad(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/zendesk/android/entry/OnboardingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->commitPreferences(Landroid/content/Context;)V

    .line 70
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/zendesk/android/dashboard/DashboardActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/zendesk/android/entry/OnboardingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "ticketId"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 72
    .local v2, ticketId:J
    const-string v4, "ticketId"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v1}, Lcom/zendesk/android/entry/OnboardingActivity;->startActivity(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Lcom/zendesk/android/entry/OnboardingActivity;->finish()V

    goto :goto_0
.end method

.method public previous(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 79
    iget v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zendesk/android/entry/OnboardingActivity;->index:I

    .line 80
    invoke-direct {p0}, Lcom/zendesk/android/entry/OnboardingActivity;->setState()V

    .line 81
    return-void
.end method
