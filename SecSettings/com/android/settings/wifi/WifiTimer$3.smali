.class Lcom/android/settings/wifi/WifiTimer$3;
.super Ljava/lang/Object;
.source "WifiTimer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiTimer;->setActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiTimer;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiTimer;)V
    .registers 2
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/settings/wifi/WifiTimer$3;->this$0:Lcom/android/settings/wifi/WifiTimer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$3;->this$0:Lcom/android/settings/wifi/WifiTimer;

    #calls: Lcom/android/settings/wifi/WifiTimer;->saveChanges()Z
    invoke-static {v0}, Lcom/android/settings/wifi/WifiTimer;->access$000(Lcom/android/settings/wifi/WifiTimer;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 173
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$3;->this$0:Lcom/android/settings/wifi/WifiTimer;

    const/16 v1, 0x12d

    #calls: Lcom/android/settings/wifi/WifiTimer;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiTimer;->access$100(Lcom/android/settings/wifi/WifiTimer;I)V

    .line 176
    :goto_f
    return-void

    .line 175
    :cond_10
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$3;->this$0:Lcom/android/settings/wifi/WifiTimer;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiTimer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_f
.end method