.class public Lcom/android/settings/deviceinfo/Memory;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Memory.java"


# instance fields
.field private mBuaPreferenceCategory:Lcom/android/settings/deviceinfo/BuAPreferenceCategory;

.field private mClickedMountPoint:Ljava/lang/String;

.field private mInternalStorageVolumePreferenceCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

.field private mLastClickedMountToggle:Landroid/preference/Preference;

.field private final mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mMountToggleClickedCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

.field private mResources:Landroid/content/res/Resources;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 74
    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 79
    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mMountToggleClickedCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 82
    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mBuaPreferenceCategory:Lcom/android/settings/deviceinfo/BuAPreferenceCategory;

    .line 169
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$1;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 298
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$2;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/Memory;)[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/Memory;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->doUnmount()V

    return-void
.end method

.method private doUnmount()V
    .registers 6

    .prologue
    const v3, 0x7f0904c7

    const/4 v4, 0x0

    .line 363
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mMountToggleClickedCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    if-eqz v2, :cond_38

    .line 364
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mMountToggleClickedCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getIsUSBOTGStorage()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090b29

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 376
    :goto_1e
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 377
    .local v1, mountService:Landroid/os/storage/IMountService;
    if-nez v1, :cond_44

    .line 378
    const-string v2, "MemorySettings"

    const-string v3, "doUnmount() : Unable to getMountService()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_2b
    return-void

    .line 368
    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :cond_2c
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1e

    .line 372
    :cond_38
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1e

    .line 382
    .restart local v1       #mountService:Landroid/os/storage/IMountService;
    :cond_44
    :try_start_44
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 383
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0904c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0904c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mClickedMountPoint:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_6d} :catch_6e

    goto :goto_2b

    .line 386
    :catch_6e
    move-exception v0

    .line 388
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_2b
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .registers 4

    .prologue
    .line 237
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_13

    .line 238
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 239
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_17

    .line 240
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 245
    .end local v0           #service:Landroid/os/IBinder;
    :cond_13
    :goto_13
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1f

    monitor-exit p0

    return-object v1

    .line 242
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_17
    :try_start_17
    const-string v1, "MemorySettings"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1f

    goto :goto_13

    .line 237
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_1f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private hasAppsAccessingStorage()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 398
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 399
    .local v0, mountService:Landroid/os/storage/IMountService;
    if-nez v0, :cond_f

    .line 400
    const-string v2, "MemorySettings"

    const-string v3, "hasAppsAccessingStorage() : Unable to getMountService()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_e
    :goto_e
    return v4

    .line 403
    :cond_f
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v1

    .line 404
    .local v1, stUsers:[I
    if-eqz v1, :cond_e

    array-length v2, v1

    if-lez v2, :cond_e

    goto :goto_e
.end method

.method private isMassStorageEnabled()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 130
    .local v0, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    if-lez v2, :cond_13

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method private mount()V
    .registers 4

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 440
    .local v0, mountService:Landroid/os/storage/IMountService;
    if-eqz v0, :cond_c

    .line 441
    :try_start_6
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 448
    :goto_b
    return-void

    .line 443
    :cond_c
    const-string v1, "MemorySettings"

    const-string v2, "Mount service is null, can\'t mount"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_14

    goto :goto_b

    .line 445
    :catch_14
    move-exception v1

    goto :goto_b
.end method

.method private showDialogInner(I)V
    .registers 2
    .parameter "id"

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->removeDialog(I)V

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->showDialog(I)V

    .line 395
    return-void
.end method

.method private unmount()V
    .registers 4

    .prologue
    .line 424
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->hasAppsAccessingStorage()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 426
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    .line 435
    :goto_a
    return-void

    .line 428
    :cond_b
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->doUnmount()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_a

    .line 430
    :catch_f
    move-exception v0

    .line 432
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MemorySettings"

    const-string v2, "Is MountService running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_a
.end method


# virtual methods
.method public initMountedStorageVolume()V
    .registers 14

    .prologue
    .line 452
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    if-eqz v1, :cond_b

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 456
    :cond_b
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v11

    .line 458
    .local v11, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v8, v11

    .line 459
    .local v8, length:I
    const-string v1, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storageVolumes.length :  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, v11

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    array-length v9, v11

    .line 462
    .local v9, mountVolume:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2d
    if-ge v6, v8, :cond_81

    .line 463
    aget-object v3, v11, v6

    .line 464
    .local v3, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v12

    .line 465
    .local v12, subsystem:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 466
    .local v10, state:Ljava/lang/String;
    if-eqz v12, :cond_5e

    const-string v1, "usb"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    const-string v1, "removed"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    const-string v1, "bad_removal"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 467
    :cond_59
    add-int/lit8 v9, v9, -0x1

    .line 462
    :goto_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 469
    :cond_5e
    const-string v1, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volume["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] is mounted, state : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 472
    .end local v3           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v10           #state:Ljava/lang/String;
    .end local v12           #subsystem:Ljava/lang/String;
    :cond_81
    const-string v1, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mountVolume :  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    new-array v1, v9, [Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 475
    const/4 v6, 0x0

    const/4 v7, 0x0

    .local v7, j:I
    :goto_9f
    if-ge v6, v8, :cond_112

    .line 476
    aget-object v3, v11, v6

    .line 477
    .restart local v3       #storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v12

    .line 478
    .restart local v12       #subsystem:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 480
    .restart local v10       #state:Ljava/lang/String;
    if-eqz v12, :cond_cb

    const-string v1, "usb"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cb

    const-string v1, "removed"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10d

    const-string v1, "bad_removal"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10d

    .line 481
    :cond_cb
    const-string v1, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VolumeState["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v6, :cond_110

    const/4 v5, 0x1

    :goto_fa
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/os/storage/StorageVolume;Landroid/os/storage/StorageManager;Z)V

    .line 485
    .local v0, storagePreferenceCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    aput-object v0, v1, v7

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 487
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 488
    add-int/lit8 v7, v7, 0x1

    .line 475
    .end local v0           #storagePreferenceCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_10d
    add-int/lit8 v6, v6, 0x1

    goto :goto_9f

    .line 482
    :cond_110
    const/4 v5, 0x0

    goto :goto_fa

    .line 491
    .end local v3           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v10           #state:Ljava/lang/String;
    .end local v12           #subsystem:Ljava/lang/String;
    :cond_112
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 522
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_18

    .line 89
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 90
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 93
    :cond_18
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->addPreferencesFromResource(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    .line 97
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-nez v0, :cond_49

    .line 100
    new-instance v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/os/storage/StorageVolume;Landroid/os/storage/StorageManager;Z)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 103
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 107
    :cond_49
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->initMountedStorageVolume()V

    .line 125
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    const v2, 0x7f090126

    const/4 v0, 0x0

    const v3, 0x7f0905c4

    .line 311
    packed-switch p1, :pswitch_data_c2

    .line 357
    :goto_a
    return-object v0

    .line 313
    :pswitch_b
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mMountToggleClickedCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    if-eqz v0, :cond_45

    .line 314
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mMountToggleClickedCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getIsUSBOTGStorage()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 315
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090b25

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/Memory$4;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/Memory$4;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/Memory$3;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/Memory$3;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090b26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_a

    .line 329
    :cond_45
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0904c3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/Memory$6;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/Memory$6;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/Memory$5;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/Memory$5;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0904c4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_a

    .line 342
    :pswitch_73
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountToggleClickedCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    if-eqz v1, :cond_a0

    .line 343
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountToggleClickedCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getIsUSBOTGStorage()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 344
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090b27

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090b28

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_a

    .line 351
    :cond_a0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0904c5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0904c6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_a

    .line 311
    nop

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_73
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 209
    const v0, 0x7f120006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 210
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_f

    .line 202
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 204
    :cond_f
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 205
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 220
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    .line 233
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 222
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_2c

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0904cd

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 231
    :goto_2a
    const/4 v0, 0x1

    goto :goto_c

    .line 229
    :cond_2c
    const-class v0, Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_2a

    .line 220
    nop

    :pswitch_data_38
    .packed-switch 0x7f0b03f0
        :pswitch_d
    .end packed-switch
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 186
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    if-eqz v1, :cond_15

    .line 189
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    .line 191
    :cond_15
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    array-length v1, v1

    if-ge v0, v1, :cond_25

    .line 192
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 194
    :cond_25
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 12
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    .line 251
    const-string v6, "MemorySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Storage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1e
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    array-length v6, v6

    if-ge v0, v6, :cond_6e

    .line 255
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    aget-object v4, v6, v0

    .line 256
    .local v4, svpc:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v4, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;

    move-result-object v1

    .line 257
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_37

    .line 259
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v6

    if-nez v6, :cond_36

    .line 260
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    .line 295
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #svpc:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_36
    :goto_36
    return v5

    .line 265
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v4       #svpc:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_37
    invoke-virtual {v4, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mountToggleClicked(Landroid/preference/Preference;)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 266
    iput-object p2, p0, Lcom/android/settings/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    .line 267
    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 268
    .local v3, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/deviceinfo/Memory;->mClickedMountPoint:Ljava/lang/String;

    .line 269
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, state:Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_63

    const-string v6, "mounted_ro"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 272
    :cond_63
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->unmount()V

    goto :goto_36

    .line 274
    :cond_67
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->mount()V

    goto :goto_36

    .line 254
    .end local v2           #state:Ljava/lang/String;
    .end local v3           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 295
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #svpc:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_6e
    const/4 v5, 0x0

    goto :goto_36
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 214
    const v1, 0x7f0b03f0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 215
    .local v0, usb:Landroid/view/MenuItem;
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->isMassStorageEnabled()Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    :goto_e
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 216
    return-void

    .line 215
    :cond_12
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public onResume()V
    .registers 7

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 136
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 137
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    if-eqz v4, :cond_26

    .line 142
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    .line 144
    :cond_26
    const/4 v1, 0x0

    .local v1, i:I
    :goto_27
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    array-length v4, v4

    if-ge v1, v4, :cond_36

    .line 145
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 149
    :cond_36
    const-string v4, "enterprise_policy"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 150
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_5d

    .line 151
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 152
    .local v3, rp:Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v3, :cond_5d

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isSdCardEnabled()Z

    move-result v4

    if-nez v4, :cond_5d

    .line 153
    const-string v4, "MemorySettings"

    const-string v5, "Sd-Card Disabled!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    if-eqz v4, :cond_5d

    .line 155
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 167
    .end local v3           #rp:Landroid/app/enterprise/RestrictionPolicy;
    :cond_5d
    return-void
.end method
