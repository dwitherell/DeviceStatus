.class Lcom/android/settings/wifi/WifiNewDialog$4;
.super Ljava/lang/Object;
.source "WifiNewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiNewDialog;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiNewDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiNewDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 875
    iput-object p1, p0, Lcom/android/settings/wifi/WifiNewDialog$4;->this$0:Lcom/android/settings/wifi/WifiNewDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog$4;->this$0:Lcom/android/settings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiNewDialog;->enableSubmitIfAppropriate()V

    .line 878
    return-void
.end method
