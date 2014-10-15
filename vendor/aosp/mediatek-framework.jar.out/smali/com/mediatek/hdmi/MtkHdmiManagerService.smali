.class public final Lcom/mediatek/hdmi/MtkHdmiManagerService;
.super Lcom/mediatek/common/hdmi/IMtkHdmiManager$Stub;
.source "MtkHdmiManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiDef;,
        Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;,
        Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;
    }
.end annotation


# static fields
.field private static final ACTION_IPO_BOOT:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final ACTION_IPO_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final AP_CFG_RDCL_FILE_HDCP_KEY_LID:I = 0x2a

.field private static final HDMI_COLOR_SPACE_DEFAULT:I = 0x0

.field private static final HDMI_DEEP_COLOR_DEFAULT:I = 0x1

.field private static final HDMI_ENABLE_STATUS_DEFAULT:I = 0x1

.field private static final HDMI_VIDEO_RESOLUTION_DEFAULT:I = 0x64

.field private static final MSG_CABLE_STATE:I = 0x2

.field private static final MSG_DEINIT:I = 0x1

.field private static final MSG_INIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MtkHdmiService"


# instance fields
.field private mActionReceiver:Landroid/content/BroadcastReceiver;

.field private mCablePlugged:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mEdid:[I

.field private mHandler:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHdmiColorSpace:I

.field private mHdmiDeepColor:I

.field private mHdmiEnabled:Z

.field private mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

.field private mHdmiObserver:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;

.field private mHdmiSettingsObserver:Landroid/database/ContentObserver;

.field private mHdmiVideoResolution:I

.field private mInitialized:Z

.field private mIsSmartBookPluggedIn:Z

.field private mPreEdid:[I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 306
    invoke-direct {p0}, Lcom/mediatek/common/hdmi/IMtkHdmiManager$Stub;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 107
    iput-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mInitialized:Z

    .line 108
    iput-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsSmartBookPluggedIn:Z

    .line 260
    new-instance v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$1;-><init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mActionReceiver:Landroid/content/BroadcastReceiver;

    .line 294
    new-instance v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$2;

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandler:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService$2;-><init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    .line 307
    const-string v0, "MtkHdmiService"

    const-string v1, "MtkHdmiManagerService constructor"

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    .line 309
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 310
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->initial()V

    .line 311
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleNotification(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandler:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/hdmi/MtkHdmiManagerService;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->updateWakeLock(ZZ)V

    return-void
.end method

.method static synthetic access$202(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mInitialized:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/hdmi/MtkHdmiManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->hdmiCableStateChanged(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->enableHdmiImpl(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleCablePlugged(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->loadHdmiSettings()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCablePlugged:Z

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsSmartBookPluggedIn:Z

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsSmartBookPluggedIn:Z

    return p1
.end method

.method private enableHdmiImpl(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    .line 460
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    monitor-enter v1

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v0, p1}, Lcom/mediatek/common/hdmi/IHDMINative;->enableHDMI(Z)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getDefaultSupportedResolutions()[I
    .locals 4

    .prologue
    .line 686
    invoke-static {}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiDef;->getDefaultResolutions()[I

    move-result-object v0

    .line 687
    .local v0, resolutions:[I
    const-string v1, "MtkHdmiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultSupportedResolutions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 689
    return-object v0
.end method

.method private getDriverSupportedResolutions()[I
    .locals 1

    .prologue
    .line 682
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getDefaultSupportedResolutions()[I

    move-result-object v0

    return-object v0
.end method

.method private getSuitableResolution(I)I
    .locals 9
    .parameter "videoResolution"

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getSupportedResolutions()[I

    move-result-object v5

    .line 578
    .local v5, supportedResolutions:[I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v4, resolutionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v0, v5

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 580
    .local v3, res:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 622
    .end local v3           #res:I
    :cond_0
    const/16 v6, 0x64

    if-lt p1, v6, :cond_1

    .line 623
    const-string v6, "MtkHdmiService"

    const-string v7, "upate resolution"

    invoke-static {v6, v7}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 624
    const/16 p1, 0x66

    .line 628
    :cond_1
    const-string v6, "MtkHdmiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "suiteable video resolution: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 629
    return p1
.end method

.method private getSupportedResolutionsImpl()[I
    .locals 13

    .prologue
    .line 651
    iget-object v10, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    if-nez v10, :cond_0

    .line 652
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getDriverSupportedResolutions()[I

    move-result-object v9

    .line 678
    :goto_0
    return-object v9

    .line 658
    :cond_0
    iget-object v10, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    or-int v2, v10, v11

    .line 659
    .local v2, edidTemp:I
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getDriverSupportedResolutions()[I

    move-result-object v9

    .line 660
    .local v9, resolutions:[I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v0, v9

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget v8, v0, v4

    .line 663
    .local v8, res:I
    :try_start_0
    sget-object v10, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiDef;->sResolutionMask:[I

    aget v7, v10, v8

    .line 664
    .local v7, mask:I
    and-int v10, v2, v7

    if-eqz v10, :cond_1

    .line 665
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 666
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    .end local v7           #mask:I
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 669
    :catch_0
    move-exception v1

    .line 670
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v10, "MtkHdmiService"

    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 673
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v8           #res:I
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v9, v10, [I

    .line 674
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 675
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v9, v3

    .line 674
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 677
    :cond_3
    const-string v10, "MtkHdmiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getSupportedResolutionsImpl: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleCablePlugged(Z)V
    .locals 2
    .parameter "plugged"

    .prologue
    .line 166
    if-eqz p1, :cond_0

    .line 177
    iget v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    invoke-direct {p0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->initVideoResolution(I)V

    .line 186
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsSmartBookPluggedIn:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 187
    .local v0, isShowNotification:Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleNotification(Z)V

    .line 188
    iget-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    invoke-direct {p0, p1, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->updateWakeLock(ZZ)V

    .line 189
    return-void

    .line 186
    .end local v0           #isShowNotification:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleNotification(Z)V
    .locals 14
    .parameter "plugged"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const v13, 0x2020058

    .line 216
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 218
    .local v10, notificationManager:Landroid/app/NotificationManager;
    if-nez v10, :cond_0

    .line 219
    const-string v0, "MtkHdmiService"

    const-string v1, "Fail to get NotificationManager"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_0
    return-void

    .line 222
    :cond_0
    if-eqz p1, :cond_1

    .line 223
    const-string v0, "MtkHdmiService"

    const-string v3, "HDMI cable is pluged in, show notification now"

    invoke-static {v0, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9}, Landroid/app/Notification;-><init>()V

    .line 225
    .local v9, notification:Landroid/app/Notification;
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x205012c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 227
    .local v12, titleStr:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x205012d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 229
    .local v6, contentStr:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x205012e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 231
    .local v7, hdmi:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x205012f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 237
    .local v8, mhl:Ljava/lang/String;
    iput v13, v9, Landroid/app/Notification;->icon:I

    .line 238
    iput-object v12, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 239
    const/16 v0, 0x23

    iput v0, v9, Landroid/app/Notification;->flags:I

    .line 242
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v5, "com.android.settings.HDMISettings"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 246
    .local v2, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 248
    .local v11, pendingIntent:Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v0, v12, v6, v11}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 250
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v13, v9, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 254
    .end local v2           #intent:Landroid/content/Intent;
    .end local v6           #contentStr:Ljava/lang/String;
    .end local v7           #hdmi:Ljava/lang/String;
    .end local v8           #mhl:Ljava/lang/String;
    .end local v9           #notification:Landroid/app/Notification;
    .end local v11           #pendingIntent:Landroid/app/PendingIntent;
    .end local v12           #titleStr:Ljava/lang/String;
    :cond_1
    const-string v0, "MtkHdmiService"

    const-string v1, "HDMI cable is pluged out, clear notification now"

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v13, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private hdmiCableStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v0, 0x1

    .line 156
    if-ne p1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCablePlugged:Z

    .line 157
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "hdmi_cable_plugged"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 160
    iget-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 161
    iget-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCablePlugged:Z

    invoke-direct {p0, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleCablePlugged(Z)V

    .line 163
    :cond_0
    return-void

    .line 156
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initVideoResolution(I)V
    .locals 6
    .parameter "resolution"

    .prologue
    .line 537
    const-string v2, "MtkHdmiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initVideoResolution: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 538
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->isResolutionSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 539
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->setVideoResolutionImpl(I)Z

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getSuitableResolution(I)I

    move-result v1

    .line 542
    .local v1, suitableResolution:I
    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    add-int/lit8 v0, v1, -0x64

    .line 544
    .local v0, finalResolution:I
    :goto_1
    const-string v2, "MtkHdmiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initVideoResolution final video resolution: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 546
    invoke-direct {p0, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->setVideoResolutionImpl(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    iput v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    .line 548
    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "hdmi_video_resolution"

    iget v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .end local v0           #finalResolution:I
    :cond_2
    move v0, v1

    .line 542
    goto :goto_1
.end method

.method private initial()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 314
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    if-nez v0, :cond_0

    .line 315
    const-class v0, Lcom/mediatek/common/hdmi/IHDMINative;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/hdmi/IHDMINative;

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 319
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HdmiService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 320
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 321
    new-instance v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;-><init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandler:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    .line 322
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 323
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v0, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string v0, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mActionReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandler:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 336
    .end local v3           #filter:Landroid/content/IntentFilter;
    :cond_2
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_3

    .line 337
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 339
    .local v6, mPowerManager:Landroid/os/PowerManager;
    const/16 v0, 0xa

    const-string v1, "HDMI"

    invoke-virtual {v6, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 341
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 343
    .end local v6           #mPowerManager:Landroid/os/PowerManager;
    :cond_3
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiObserver:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;

    if-nez v0, :cond_4

    .line 344
    new-instance v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;-><init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiObserver:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;

    .line 345
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiObserver:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;

    invoke-virtual {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->startObserve()V

    .line 361
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->observeSettings()V

    .line 362
    return-void
.end method

.method private isResolutionSupported(I)Z
    .locals 9
    .parameter "resolution"

    .prologue
    const/4 v5, 0x0

    .line 556
    const-string v6, "MtkHdmiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isResolutionSupported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 557
    const/16 v6, 0x64

    if-lt p1, v6, :cond_1

    .line 567
    :cond_0
    :goto_0
    return v5

    .line 560
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getSupportedResolutions()[I

    move-result-object v4

    .line 561
    .local v4, supportedResolutions:[I
    move-object v0, v4

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 562
    .local v3, res:I
    if-ne v3, p1, :cond_2

    .line 563
    const-string v5, "MtkHdmiService"

    const-string v6, "resolution is supported"

    invoke-static {v5, v6}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 564
    const/4 v5, 0x1

    goto :goto_0

    .line 561
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private loadHdmiSettings()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v5, -0x2

    .line 400
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "hdmi_enable_status"

    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    .line 403
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "hdmi_video_resolution"

    const/16 v4, 0x64

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    .line 406
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "hdmi_color_space"

    invoke-static {v0, v3, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiColorSpace:I

    .line 409
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "hdmi_deep_color"

    invoke-static {v0, v2, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiDeepColor:I

    .line 412
    return-void

    :cond_0
    move v0, v2

    .line 400
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "tag"
    .parameter "obj"

    .prologue
    .line 693
    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_0
    return-void
.end method

.method private needUpdate(I)Z
    .locals 4
    .parameter "videoResolution"

    .prologue
    .line 633
    const-string v1, "MtkHdmiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 634
    const/4 v0, 0x1

    .line 635
    .local v0, needUpdate:Z
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPreEdid:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPreEdid:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    const/4 v0, 0x0

    .line 638
    :cond_0
    const/16 v1, 0x64

    if-lt p1, v1, :cond_1

    .line 639
    const/4 v0, 0x1

    .line 641
    :cond_1
    return v0
.end method

.method private observeSettings()V
    .locals 5

    .prologue
    .line 415
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "hdmi_enable_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 418
    return-void
.end method

.method private refreshEdid(Z)V
    .locals 8
    .parameter "plugged"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 192
    if-eqz p1, :cond_4

    .line 193
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getResolutionMask()[I

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    .line 194
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    if-eqz v1, :cond_0

    .line 195
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 196
    const-string v1, "MtkHdmiService"

    const-string v2, "mEdid[%d] = %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v0           #i:I
    :cond_0
    const-string v1, "MtkHdmiService"

    const-string v2, "mEdid is null!"

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPreEdid:[I

    if-eqz v1, :cond_2

    .line 203
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPreEdid:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 204
    const-string v1, "MtkHdmiService"

    const-string v2, "mPreEdid[%d] = %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPreEdid:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 207
    .end local v0           #i:I
    :cond_2
    const-string v1, "MtkHdmiService"

    const-string v2, "mPreEdid is null!"

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    :cond_3
    :goto_2
    return-void

    .line 210
    :cond_4
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    iput-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPreEdid:[I

    goto :goto_2
.end method

.method private setColorAndDeepImpl(II)Z
    .locals 2
    .parameter "color"
    .parameter "deep"

    .prologue
    .line 502
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    monitor-enter v1

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/common/hdmi/IHDMINative;->setDeepColor(II)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setDrmKey()Z
    .locals 2

    .prologue
    .line 394
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    monitor-enter v1

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v0}, Lcom/mediatek/common/hdmi/IHDMINative;->setHDMIDRMKey()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setHdcpKey()Z
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 373
    const/4 v4, 0x0

    .line 374
    .local v4, key:[B
    const-string v6, "NvRAMAgent"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 375
    .local v1, binder:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/mediatek/hdmi/NvRAMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/hdmi/NvRAMAgent;

    move-result-object v0

    .line 376
    .local v0, agent:Lcom/mediatek/hdmi/NvRAMAgent;
    if-eqz v0, :cond_1

    .line 378
    :try_start_0
    const-string v6, "MtkHdmiService"

    const-string v7, "Read HDCP key from nvram"

    invoke-static {v6, v7}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 379
    const/16 v6, 0x2a

    invoke-interface {v0, v6}, Lcom/mediatek/hdmi/NvRAMAgent;->readFile(I)[B

    move-result-object v4

    .line 380
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v6, 0x11f

    if-ge v3, v6, :cond_0

    .line 381
    const-string v6, "MtkHdmiService"

    const-string v7, "HDCP key[%d] = %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aget-byte v10, v4, v3

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 380
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 383
    :cond_0
    if-eqz v4, :cond_1

    .line 384
    iget-object v6, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v6, v4}, Lcom/mediatek/common/hdmi/IHDMINative;->setHDCPKey([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 390
    .end local v3           #i:I
    :cond_1
    :goto_1
    return v5

    .line 386
    :catch_0
    move-exception v2

    .line 387
    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "MtkHdmiService"

    const-string v7, "NvRAMAgent read file fail"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setVideoResolutionImpl(I)Z
    .locals 2
    .parameter "resolution"

    .prologue
    .line 571
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    monitor-enter v1

    .line 572
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v0, p1}, Lcom/mediatek/common/hdmi/IHDMINative;->setVideoConfig(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateWakeLock(ZZ)V
    .locals 1
    .parameter "plugged"
    .parameter "hdmiEnabled"

    .prologue
    .line 365
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v0}, Lcom/mediatek/common/hdmi/IHDMINative;->isHdmiForceAwake()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "MtkHdmiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v0, "MTK HDMI MANAGER (dumpsys HDMI)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDMI mHdmiEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDMI mHdmiVideoResolution: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDMI mHdmiColorSpace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiColorSpace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDMI mHdmiDeepColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiDeepColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDMI mCablePlugged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCablePlugged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDMI mEdid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDMI mPreEdid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPreEdid:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDMI mInitialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mInitialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 434
    return-void
.end method

.method public enableHdmi(Z)Z
    .locals 7
    .parameter "enabled"

    .prologue
    .line 438
    const-string v3, "MtkHdmiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableHdmi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 439
    const/4 v2, 0x0

    .line 440
    .local v2, ret:Z
    iget-boolean v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    if-ne p1, v3, :cond_1

    .line 441
    const-string v3, "MtkHdmiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHdmiEnabled is the same: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 456
    :cond_0
    :goto_0
    return v2

    .line 443
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->enableHdmiImpl(Z)Z

    move-result v2

    .line 444
    if-eqz v2, :cond_0

    .line 445
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 447
    .local v0, ident:J
    :try_start_0
    iput-boolean p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    .line 448
    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "hdmi_enable_status"

    iget-boolean v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 448
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 452
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getResolutionMask()[I
    .locals 2

    .prologue
    .line 467
    const-string v0, "MtkHdmiService"

    const-string v1, "getResolutionMask"

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 468
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    monitor-enter v1

    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v0}, Lcom/mediatek/common/hdmi/IHDMINative;->getEDID()[I

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSupportedResolutions()[I
    .locals 2

    .prologue
    .line 646
    const-string v0, "MtkHdmiService"

    const-string v1, "getSupportedResolutions"

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 647
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getSupportedResolutionsImpl()[I

    move-result-object v0

    return-object v0
.end method

.method public isSignalOutputting()Z
    .locals 2

    .prologue
    .line 475
    const-string v0, "MtkHdmiService"

    const-string v1, "isSignalOutputting"

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 476
    iget-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCablePlugged:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setColorAndDeep(II)Z
    .locals 6
    .parameter "color"
    .parameter "deep"

    .prologue
    .line 481
    const-string v3, "MtkHdmiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setColorAndDeep: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    invoke-direct {p0, p1, p2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->setColorAndDeepImpl(II)Z

    move-result v2

    .line 483
    .local v2, ret:Z
    if-eqz v2, :cond_0

    .line 484
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 486
    .local v0, ident:J
    :try_start_0
    iput p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiColorSpace:I

    .line 487
    iput p2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiDeepColor:I

    .line 488
    iget-object v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "hdmi_color_space"

    const/4 v5, -0x2

    invoke-static {v3, v4, p1, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 491
    iget-object v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "hdmi_deep_color"

    const/4 v5, -0x2

    invoke-static {v3, v4, p2, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 498
    .end local v0           #ident:J
    :cond_0
    return v2

    .line 495
    .restart local v0       #ident:J
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setVideoResolution(I)Z
    .locals 9
    .parameter "resolution"

    .prologue
    const/16 v8, 0x64

    .line 509
    const-string v5, "MtkHdmiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setVideoResolution: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 510
    const/4 v3, 0x0

    .line 511
    .local v3, ret:Z
    move v4, p1

    .line 512
    .local v4, suitableResolution:I
    if-lt p1, v8, :cond_0

    .line 513
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getSuitableResolution(I)I

    move-result v4

    .line 515
    :cond_0
    iget v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    if-ne v4, v5, :cond_1

    .line 516
    const-string v5, "MtkHdmiService"

    const-string v6, "setVideoResolution is the same"

    invoke-static {v5, v6}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 518
    :cond_1
    if-lt v4, v8, :cond_3

    add-int/lit8 v0, v4, -0x64

    .line 520
    .local v0, finalResolution:I
    :goto_0
    const-string v5, "MtkHdmiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "final video resolution: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 521
    invoke-direct {p0, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->setVideoResolutionImpl(I)Z

    move-result v3

    .line 522
    if-eqz v3, :cond_2

    .line 523
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 525
    .local v1, ident:J
    :try_start_0
    iput v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    .line 526
    iget-object v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "hdmi_video_resolution"

    iget v7, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 533
    .end local v1           #ident:J
    :cond_2
    return v3

    .end local v0           #finalResolution:I
    :cond_3
    move v0, v4

    .line 518
    goto :goto_0

    .line 530
    .restart local v0       #finalResolution:I
    .restart local v1       #ident:J
    :catchall_0
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method
