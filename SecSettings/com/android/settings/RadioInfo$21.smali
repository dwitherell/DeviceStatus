.class Lcom/android/settings/RadioInfo$21;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/android/settings/RadioInfo$21;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/android/settings/RadioInfo$21;->this$0:Lcom/android/settings/RadioInfo;

    #calls: Lcom/android/settings/RadioInfo;->refreshSmsc()V
    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$4100(Lcom/android/settings/RadioInfo;)V

    .line 1006
    return-void
.end method
