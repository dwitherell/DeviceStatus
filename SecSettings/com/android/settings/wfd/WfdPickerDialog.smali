.class public Lcom/android/settings/wfd/WfdPickerDialog;
.super Landroid/app/Activity;
.source "WfdPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mButtonSoundPool:Landroid/media/SoundPool;

.field private static mConfirmSoundID:I


# instance fields
.field private mButtonCancel:Landroid/widget/Button;

.field private mButtonOK:Landroid/widget/Button;

.field private mButtonStop:Landroid/widget/Button;

.field mFragmentLayout:Landroid/widget/LinearLayout;

.field private mMasterStreamVolume:I

.field private mRingerMode:I

.field private mShowMainDlg:Z

.field private mShowWelcomeDlg:Z

.field mWelcomeLayout:Landroid/widget/LinearLayout;

.field mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

.field private mWriteIfSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/wfd/WfdPickerDialog;->mConfirmSoundID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowMainDlg:Z

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    return-void
.end method

.method private connWithoutMainDlg()V
    .registers 9

    .prologue
    const/high16 v2, 0x3f80

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b02db

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerActivity;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

    .line 163
    const/16 v7, 0xb

    .line 164
    .local v7, DIALOG_AUTO_CONNECT:I
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mMasterStreamVolume:I

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mRingerMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_39

    .line 165
    :cond_1c
    const-string v0, "WfdPickerDialog"

    const-string v1, "Silent mode or volume is zero"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_23
    const v0, 0x7f040080

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerDialog;->setContentView(I)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setWfdEnabled()V

    .line 171
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setAutoConnStarted()V

    .line 172
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0, v7}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialogp(I)V

    .line 173
    return-void

    .line 167
    :cond_39
    sget-object v0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    sget v1, Lcom/android/settings/wfd/WfdPickerDialog;->mConfirmSoundID:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_23
.end method

.method private initWfdPickerDialog()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b02db

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerActivity;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

    .line 179
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setWfdEnabled()V

    .line 180
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWelcomeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonOK:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mFragmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 185
    return-void
.end method

.method private isWfdConnected()Z
    .registers 4

    .prologue
    .line 248
    const-string v1, "wfd"

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdManager;

    .line 250
    .local v0, wfdManager:Lcom/samsung/wfd/WfdManager;
    if-eqz v0, :cond_11

    .line 252
    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v1

    packed-switch v1, :pswitch_data_1c

    .line 260
    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1

    .line 256
    :pswitch_13
    const-string v1, "WfdPickerDialog"

    const-string v2, "isWfdConnected >> true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v1, 0x1

    goto :goto_12

    .line 252
    :pswitch_data_1c
    .packed-switch 0x3
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public cancelConnect()V
    .registers 2

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowMainDlg:Z

    if-nez v0, :cond_b

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->finish()V

    .line 211
    :cond_b
    return-void
.end method

.method changeToScan()V
    .registers 5

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090376

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, mScanString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0905ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, mStopString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 193
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_27
    return-void
.end method

.method changeToStop()V
    .registers 5

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090376

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, mScanString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0905ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, mStopString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 203
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :cond_27
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_54

    .line 144
    :cond_7
    :goto_7
    return-void

    .line 120
    :pswitch_8
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

    if-eqz v2, :cond_7

    .line 121
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v2}, Lcom/android/settings/wfd/WfdPickerActivity;->finishWfdPickerDialog()V

    goto :goto_7

    .line 124
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090376

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, mScanString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0905ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, mStopString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

    if-eqz v2, :cond_7

    .line 128
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 130
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/wfd/WfdPickerActivity;->stopScanningWfdPickerDialog(Z)V

    .line 131
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 135
    :cond_44
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v2}, Lcom/android/settings/wfd/WfdPickerActivity;->startScanningWfdPickerDialog()V

    .line 136
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 140
    .end local v0           #mScanString:Ljava/lang/String;
    .end local v1           #mStopString:Ljava/lang/String;
    :pswitch_4f
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->connWithoutMainDlg()V

    goto :goto_7

    .line 117
    nop

    :pswitch_data_54
    .packed-switch 0x7f0b02e0
        :pswitch_8
        :pswitch_12
        :pswitch_4f
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0, v6}, Lcom/android/settings/wfd/WfdPickerDialog;->setDefaultKeyMode(I)V

    .line 55
    const v3, 0x7f0400fb

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdPickerDialog;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "tag_write_if_success"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "tag_write_if_success"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    .line 64
    :cond_36
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "show_main_dialog"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "show_main_dialog"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowMainDlg:Z

    .line 68
    :cond_4e
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "show_welcome_dialog"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "show_welcome_dialog"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    .line 73
    :cond_66
    const v3, 0x7f0903a2

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdPickerDialog;->setTitle(I)V

    .line 75
    const v3, 0x7f0b02e0

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonCancel:Landroid/widget/Button;

    .line 76
    const v3, 0x7f0b02e1

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    .line 77
    const v3, 0x7f0b02e2

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonOK:Landroid/widget/Button;

    .line 79
    const v3, 0x7f0b02dc

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWelcomeLayout:Landroid/widget/LinearLayout;

    .line 80
    const v3, 0x7f0b02d9

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mFragmentLayout:Landroid/widget/LinearLayout;

    .line 83
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonOK:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget-object v3, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    if-nez v3, :cond_bf

    .line 88
    new-instance v3, Landroid/media/SoundPool;

    const/4 v4, 0x4

    const/4 v5, 0x7

    invoke-direct {v3, v4, v5, v6}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v3, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    .line 90
    :cond_bf
    sget-object v3, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    const/high16 v4, 0x7f08

    invoke-virtual {v3, p0, v4, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    sput v3, Lcom/android/settings/wfd/WfdPickerDialog;->mConfirmSoundID:I

    .line 93
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 94
    .local v2, mAudioManager:Landroid/media/AudioManager;
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    iput v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mRingerMode:I

    .line 95
    invoke-virtual {v2, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mMasterStreamVolume:I

    .line 97
    const-string v3, "WfdPickerDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showMainDialog : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowMainDlg:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v3, "WfdPickerDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WriteIfSuccess : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v3, "WfdPickerDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showWelcomeDialog : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    if-eqz v3, :cond_133

    .line 101
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->initWfdPickerDialog()V

    .line 112
    :goto_132
    return-void

    .line 102
    :cond_133
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    if-nez v3, :cond_13f

    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowMainDlg:Z

    if-nez v3, :cond_13f

    .line 103
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->connWithoutMainDlg()V

    goto :goto_132

    .line 104
    :cond_13f
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    if-nez v3, :cond_147

    .line 105
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->initWfdPickerDialog()V

    goto :goto_132

    .line 108
    :cond_147
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WIFI_DISPLAY_ENABLED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, actionIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdPickerDialog;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_132
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 235
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->isWfdConnected()Z

    move-result v1

    if-eqz v1, :cond_45

    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    if-eqz v1, :cond_45

    .line 236
    const-string v1, "WfdPickerDialog"

    const-string v2, "going to ACTION_WRITE_TAG"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.WRITE_NFC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, intentToPicker:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "called_by_nfc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "called_by_nfc"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 240
    const-string v1, "called_by_nfc"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 242
    :cond_3f
    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerDialog;->startActivity(Landroid/content/Intent;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->finish()V

    .line 245
    .end local v0           #intentToPicker:Landroid/content/Intent;
    :cond_45
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 152
    .local v0, handled:Z
    const/16 v1, 0x52

    if-ne p1, v1, :cond_f

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 153
    const/4 v0, 0x1

    .line 156
    .end local v0           #handled:Z
    :cond_f
    return v0
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 216
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 220
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 222
    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    if-nez v1, :cond_14

    .line 225
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 226
    .local v0, mStatusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_14

    .line 227
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 229
    .end local v0           #mStatusBar:Landroid/app/StatusBarManager;
    :cond_14
    return-void
.end method
