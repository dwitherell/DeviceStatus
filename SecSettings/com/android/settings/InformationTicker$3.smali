.class Lcom/android/settings/InformationTicker$3;
.super Ljava/lang/Object;
.source "InformationTicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/InformationTicker;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/InformationTicker;


# direct methods
.method constructor <init>(Lcom/android/settings/InformationTicker;)V
    .registers 2
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/settings/InformationTicker$3;->this$0:Lcom/android/settings/InformationTicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/settings/InformationTicker$3;->this$0:Lcom/android/settings/InformationTicker;

    invoke-virtual {v0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "contents_type"

    iget-object v2, p0, Lcom/android/settings/InformationTicker$3;->this$0:Lcom/android/settings/InformationTicker;

    #getter for: Lcom/android/settings/InformationTicker;->mOldValue:I
    invoke-static {v2}, Lcom/android/settings/InformationTicker;->access$000(Lcom/android/settings/InformationTicker;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 532
    iget-object v0, p0, Lcom/android/settings/InformationTicker$3;->this$0:Lcom/android/settings/InformationTicker;

    iget-object v1, p0, Lcom/android/settings/InformationTicker$3;->this$0:Lcom/android/settings/InformationTicker;

    #getter for: Lcom/android/settings/InformationTicker;->mOldValue:I
    invoke-static {v1}, Lcom/android/settings/InformationTicker;->access$000(Lcom/android/settings/InformationTicker;)I

    move-result v1

    #calls: Lcom/android/settings/InformationTicker;->sendContentsType(I)V
    invoke-static {v0, v1}, Lcom/android/settings/InformationTicker;->access$100(Lcom/android/settings/InformationTicker;I)V

    .line 533
    iget-object v0, p0, Lcom/android/settings/InformationTicker$3;->this$0:Lcom/android/settings/InformationTicker;

    #calls: Lcom/android/settings/InformationTicker;->updateState()V
    invoke-static {v0}, Lcom/android/settings/InformationTicker;->access$200(Lcom/android/settings/InformationTicker;)V

    .line 534
    return-void
.end method
