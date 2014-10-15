.class final Lcom/android/server/BatteryService$BaiduInjector$1;
.super Landroid/os/CountDownTimer;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$BaiduInjector;->init(Lcom/android/server/BatteryService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 340
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 343
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 344
    invoke-static {}, Lcom/android/server/BatteryService$BaiduInjector;->access$sget-mContext-f47ec3()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 345
    invoke-static {}, Lcom/android/server/BatteryService$BaiduInjector;->access$sget-mManager-67e28c()Landroid/app/NotificationManager;

    move-result-object v1

    invoke-static {}, Lcom/android/server/BatteryService$BaiduInjector;->access$sget-NOTIFI_ID-fce0d4()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 346
    invoke-static {}, Lcom/android/server/BatteryService$BaiduInjector;->access$sget-mDialog-066056()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 348
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 10
    .parameter "millisUntilFinished"

    .prologue
    const v9, #android:string@shutdown_warning_title#t

    const/4 v8, 0x1

    .line 322
    invoke-static {}, Lcom/android/server/BatteryService$BaiduInjector;->access$sget-mContext-f47ec3()Landroid/content/Context;

    move-result-object v2

    const v3, #android:string@shutdown_warning_message#t

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x3e8

    div-long v6, p1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, msg:Ljava/lang/String;
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/android/server/BatteryService$BaiduInjector;->access$sget-mContext-f47ec3()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 325
    .local v0, builder:Landroid/app/Notification$Builder;
    invoke-static {}, Lcom/android/server/BatteryService$BaiduInjector;->access$sget-mContext-f47ec3()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 326
    invoke-static {}, Lcom/android/server/BatteryService$BaiduInjector;->access$sget-mContext-f47ec3()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 327
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 328
    const v2, 0x108008a

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 329
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 330
    invoke-static {}, Lcom/android/server/BatteryService$BaiduInjector;->access$sget-mManager-67e28c()Landroid/app/NotificationManager;

    move-result-object v2

    invoke-static {}, Lcom/android/server/BatteryService$BaiduInjector;->access$sget-NOTIFI_ID-fce0d4()I

    move-result v3

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 332
    invoke-static {}, Lcom/android/server/BatteryService$BaiduInjector;->access$sget-mDialog-066056()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    invoke-static {}, Lcom/android/server/BatteryService$BaiduInjector;->access$sget-mDialog-066056()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 335
    :cond_0
    return-void
.end method
