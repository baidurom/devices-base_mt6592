.class public Lcom/android/server/BatteryService$BaiduInjector;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaiduInjector"
.end annotation


# static fields
.field private static NOTIFI_ID:I

.field private static mContext:Landroid/content/Context;

.field private static mDialog:Landroid/app/AlertDialog;

.field private static mManager:Landroid/app/NotificationManager;

.field private static mShutdownTimer:Landroid/os/CountDownTimer;

.field static mStartShutdownTimer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/BatteryService$BaiduInjector;->mStartShutdownTimer:Z

    .line 314
    const/16 v0, 0x2773

    sput v0, Lcom/android/server/BatteryService$BaiduInjector;->NOTIFI_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$sget-mShutdownTimer-1aeba9()Landroid/os/CountDownTimer;
    .locals 1

    .prologue
    .line 308
    sget-object v0, Lcom/android/server/BatteryService$BaiduInjector;->mShutdownTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$sget-mContext-f47ec3()Landroid/content/Context;
    .locals 1

    .prologue
    .line 308
    sget-object v0, Lcom/android/server/BatteryService$BaiduInjector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$sget-NOTIFI_ID-fce0d4()I
    .locals 1

    .prologue
    .line 308
    sget v0, Lcom/android/server/BatteryService$BaiduInjector;->NOTIFI_ID:I

    return v0
.end method

.method static synthetic access$sget-mManager-67e28c()Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 308
    sget-object v0, Lcom/android/server/BatteryService$BaiduInjector;->mManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$sget-mDialog-066056()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 308
    sget-object v0, Lcom/android/server/BatteryService$BaiduInjector;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static init(Lcom/android/server/BatteryService;)V
    .locals 7
    .parameter "service"

    .prologue
    .line 317
    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/android/server/BatteryService$BaiduInjector;->mContext:Landroid/content/Context;

    .line 318
    sget-object v1, Lcom/android/server/BatteryService$BaiduInjector;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    sput-object v1, Lcom/android/server/BatteryService$BaiduInjector;->mManager:Landroid/app/NotificationManager;

    .line 319
    new-instance v1, Lcom/android/server/BatteryService$BaiduInjector$1;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/BatteryService$BaiduInjector$1;-><init>(JJ)V

    sput-object v1, Lcom/android/server/BatteryService$BaiduInjector;->mShutdownTimer:Landroid/os/CountDownTimer;

    .line 351
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/android/server/BatteryService$BaiduInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 352
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x108008a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, #android:string@shutdown_warning_title#t

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/server/BatteryService$BaiduInjector;->mContext:Landroid/content/Context;

    const v3, #android:string@shutdown_warning_message#t

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, #android:string@getit#t

    new-instance v3, Lcom/android/server/BatteryService$BaiduInjector$2;

    invoke-direct {v3}, Lcom/android/server/BatteryService$BaiduInjector$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/android/server/BatteryService$BaiduInjector;->mDialog:Landroid/app/AlertDialog;

    .line 361
    sget-object v1, Lcom/android/server/BatteryService$BaiduInjector;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 362
    return-void
.end method

.method public static isDebug()Z
    .locals 2

    .prologue
    .line 387
    invoke-static {}, Lcom/android/server/BatteryService;->access$sget-TAG-a1732f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    const/4 v0, 0x1

    .line 390
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shutdownIfNoPowerLockedBaidu(Lcom/android/server/BatteryService;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 365
    #getter for: Lcom/android/server/BatteryService;->mBatteryLevel:I
    invoke-static {p0}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/BatteryService$BaiduInjector;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x7

    #calls: Lcom/android/server/BatteryService;->isPoweredLocked(I)Z
    invoke-static {p0, v0}, Lcom/android/server/BatteryService;->access$invoke-isPoweredLocked-ec5733(Lcom/android/server/BatteryService;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 366
    sget-boolean v0, Lcom/android/server/BatteryService$BaiduInjector;->mStartShutdownTimer:Z

    if-nez v0, :cond_1

    .line 367
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/BatteryService$BaiduInjector;->mStartShutdownTimer:Z

    .line 368
    #getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {p0}, Lcom/android/server/BatteryService;->access$iget-mHandler-7bf639(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/BatteryService$BaiduInjector$3;

    invoke-direct {v1}, Lcom/android/server/BatteryService$BaiduInjector$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 384
    :cond_1
    :goto_0
    return-void

    .line 377
    :cond_2
    sget-boolean v0, Lcom/android/server/BatteryService$BaiduInjector;->mStartShutdownTimer:Z

    if-eqz v0, :cond_1

    .line 378
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/BatteryService$BaiduInjector;->mStartShutdownTimer:Z

    .line 379
    sget-object v0, Lcom/android/server/BatteryService$BaiduInjector;->mShutdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 380
    sget-object v0, Lcom/android/server/BatteryService$BaiduInjector;->mManager:Landroid/app/NotificationManager;

    sget v1, Lcom/android/server/BatteryService$BaiduInjector;->NOTIFI_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 381
    sget-object v0, Lcom/android/server/BatteryService$BaiduInjector;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_0
.end method
