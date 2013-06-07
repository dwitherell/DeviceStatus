.class public Lcom/android/settings/FontSizeListPreference;
.super Landroid/preference/ListPreference;
.source "FontSizeListPreference.java"


# instance fields
.field private context:Landroid/content/Context;

.field private isWidget:Ljava/lang/Boolean;

.field private mFontSize:Lcom/android/settings/DisplaySettings;

.field private mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

.field private mSelectedFontSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/FontSizeListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const v1, 0x7f09099d

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-object v0, p0, Lcom/android/settings/FontSizeListPreference;->context:Landroid/content/Context;

    .line 49
    iput-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/FontSizeListPreference;->mSelectedFontSize:I

    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FontSizeListPreference;->isWidget:Ljava/lang/Boolean;

    .line 62
    iput-object p1, p0, Lcom/android/settings/FontSizeListPreference;->context:Landroid/content/Context;

    .line 63
    invoke-virtual {p0, v1}, Lcom/android/settings/FontSizeListPreference;->setTitle(I)V

    .line 64
    const v0, 0x7f09099e

    invoke-virtual {p0, v0}, Lcom/android/settings/FontSizeListPreference;->setSummary(I)V

    .line 65
    invoke-virtual {p0, v1}, Lcom/android/settings/FontSizeListPreference;->setDialogTitle(I)V

    .line 66
    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/android/settings/FontSizeListPreference;->setNegativeButtonText(I)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FontSizeListPreference;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->isWidget:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/FontSizeListPreference;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/FontSizeListPreference;->isWidget:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/FontSizeListPreference;)Lcom/android/settings/DisplaySettings;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSize:Lcom/android/settings/DisplaySettings;

    return-object v0
.end method


# virtual methods
.method public directFontsize()V
    .registers 2

    .prologue
    .line 110
    invoke-super {p0}, Landroid/preference/ListPreference;->onClick()V

    .line 111
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FontSizeListPreference;->isWidget:Ljava/lang/Boolean;

    .line 112
    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 4
    .parameter "negativeResult"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/FontSizeListPreference;->isWidget:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 124
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FontSizeListPreference;->isWidget:Ljava/lang/Boolean;

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.FONT_SIZE_CLOSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/FontSizeListPreference;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1e
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 5
    .parameter "builder"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    if-nez v0, :cond_d

    .line 84
    new-instance v0, Lcom/android/settings/FontSizeListAdapter;

    iget-object v1, p0, Lcom/android/settings/FontSizeListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/FontSizeListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    .line 86
    :cond_d
    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    iget-object v0, v0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    iget-object v1, v1, Lcom/android/settings/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/FontSizeListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/FontSizeListPreference;->mSelectedFontSize:I

    .line 93
    const-string v0, "FontSizeListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareDialogBuilder : Selected item : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/FontSizeListPreference;->mSelectedFontSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    iget v1, p0, Lcom/android/settings/FontSizeListPreference;->mSelectedFontSize:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    const/high16 v0, 0x104

    new-instance v1, Lcom/android/settings/FontSizeListPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/FontSizeListPreference$1;-><init>(Lcom/android/settings/FontSizeListPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 106
    return-void
.end method

.method public setObject(Lcom/android/settings/DisplaySettings;)V
    .registers 2
    .parameter "displaySettings"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/settings/FontSizeListPreference;->mFontSize:Lcom/android/settings/DisplaySettings;

    .line 117
    return-void
.end method
