.class public Lcom/android/settings/ChooseLockPassword;
.super Landroid/preference/PreferenceActivity;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
    }
.end annotation


# static fields
.field public static isChangePwdRequired:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 123
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 94
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 102
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    .line 107
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const v1, 0x7f09055a

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 109
    .local v0, msg:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/ChooseLockPassword;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 115
    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    .line 116
    :cond_6
    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v0, :cond_c

    .line 117
    const/4 v0, 0x1

    .line 120
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method
