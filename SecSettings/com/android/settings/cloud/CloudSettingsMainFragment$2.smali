.class Lcom/android/settings/cloud/CloudSettingsMainFragment$2;
.super Ljava/lang/Object;
.source "CloudSettingsMainFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cloud/CloudSettingsMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 650
    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preference"

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z
    invoke-static {v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$400(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 655
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    const v2, 0x7f090dd4

    invoke-virtual {v1, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 661
    :goto_1f
    const/4 v0, 0x0

    return v0

    .line 658
    :cond_21
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #calls: Lcom/android/settings/cloud/CloudSettingsMainFragment;->requestDropboxAuth()V
    invoke-static {v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$800(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    goto :goto_1f
.end method
