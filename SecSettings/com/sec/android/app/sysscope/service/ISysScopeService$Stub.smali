.class public abstract Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;
.super Landroid/os/Binder;
.source "ISysScopeService.java"

# interfaces
.implements Lcom/sec/android/app/sysscope/service/ISysScopeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sysscope/service/ISysScopeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.sec.android.app.sysscope.service.ISysScopeService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sysscope/service/ISysScopeService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "com.sec.android.app.sysscope.service.ISysScopeService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/sec/android/app/sysscope/service/ISysScopeService;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/sec/android/app/sysscope/service/ISysScopeService;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_e8

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 45
    :sswitch_a
    const-string v3, "com.sec.android.app.sysscope.service.ISysScopeService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v3, "com.sec.android.app.sysscope.service.ISysScopeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sysscope/service/ISysScopeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sysscope/service/ISysScopeListener;

    move-result-object v1

    .line 55
    .local v1, _arg1:Lcom/sec/android/app/sysscope/service/ISysScopeListener;
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;->run(ILcom/sec/android/app/sysscope/service/ISysScopeListener;)I

    move-result v2

    .line 56
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 62
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Lcom/sec/android/app/sysscope/service/ISysScopeListener;
    .end local v2           #_result:I
    :sswitch_2c
    const-string v3, "com.sec.android.app.sysscope.service.ISysScopeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;->scope()I

    move-result v2

    .line 64
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 70
    .end local v2           #_result:I
    :sswitch_3c
    const-string v5, "com.sec.android.app.sysscope.service.ISysScopeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;->getInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 72
    .local v2, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v2, :cond_51

    .line 74
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    invoke-virtual {v2, p3, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 78
    :cond_51
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 84
    .end local v2           #_result:Landroid/os/Bundle;
    :sswitch_55
    const-string v3, "com.sec.android.app.sysscope.service.ISysScopeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sysscope/service/ISysScopeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sysscope/service/ISysScopeListener;

    move-result-object v0

    .line 87
    .local v0, _arg0:Lcom/sec/android/app/sysscope/service/ISysScopeListener;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;->registerListener(Lcom/sec/android/app/sysscope/service/ISysScopeListener;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 93
    .end local v0           #_arg0:Lcom/sec/android/app/sysscope/service/ISysScopeListener;
    :sswitch_69
    const-string v3, "com.sec.android.app.sysscope.service.ISysScopeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sysscope/service/ISysScopeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sysscope/service/ISysScopeListener;

    move-result-object v0

    .line 96
    .restart local v0       #_arg0:Lcom/sec/android/app/sysscope/service/ISysScopeListener;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;->unregisterListener(Lcom/sec/android/app/sysscope/service/ISysScopeListener;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 102
    .end local v0           #_arg0:Lcom/sec/android/app/sysscope/service/ISysScopeListener;
    :sswitch_7d
    const-string v3, "com.sec.android.app.sysscope.service.ISysScopeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 105
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;->setScanPeriod(I)I

    move-result v2

    .line 106
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 112
    .end local v0           #_arg0:I
    .end local v2           #_result:I
    :sswitch_92
    const-string v3, "com.sec.android.app.sysscope.service.ISysScopeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;->getScanPeriod()I

    move-result v2

    .line 114
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 120
    .end local v2           #_result:I
    :sswitch_a3
    const-string v5, "com.sec.android.app.sysscope.service.ISysScopeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;->getLastScanResult()Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;

    move-result-object v2

    .line 122
    .local v2, _result:Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v2, :cond_b9

    .line 124
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    invoke-virtual {v2, p3, v4}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 128
    :cond_b9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 134
    .end local v2           #_result:Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;
    :sswitch_be
    const-string v5, "com.sec.android.app.sysscope.service.ISysScopeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;->getLogState()Z

    move-result v2

    .line 136
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v2, :cond_cd

    move v3, v4

    :cond_cd
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 142
    .end local v2           #_result:Z
    :sswitch_d2
    const-string v5, "com.sec.android.app.sysscope.service.ISysScopeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e6

    move v0, v4

    .line 145
    .local v0, _arg0:Z
    :goto_de
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;->setLogState(Z)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    :cond_e6
    move v0, v3

    .line 144
    goto :goto_de

    .line 41
    :sswitch_data_e8
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_55
        0x5 -> :sswitch_69
        0x6 -> :sswitch_7d
        0x7 -> :sswitch_92
        0x8 -> :sswitch_a3
        0x9 -> :sswitch_be
        0xa -> :sswitch_d2
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
