.class Lcom/mediatek/mom/p;
.super Lcom/mediatek/mom/MobileManagerControllerBase;
.source "SourceFile"

# interfaces
.implements Lcom/mediatek/mom/IPermissionController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mom/p$1;,
        Lcom/mediatek/mom/p$a;
    }
.end annotation


# static fields
.field private static b:Z

.field private static i:Lcom/mediatek/mom/MobileManagerControllerBase;


# instance fields
.field a:Landroid/content/IntentFilter;

.field private c:Landroid/app/IActivityManager;

.field private d:Landroid/content/pm/IPackageManager;

.field private e:Landroid/content/Context;

.field private f:Lcom/mediatek/mom/a;

.field private g:Lcom/mediatek/mom/n;

.field private h:I

.field private j:Z

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mom/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/mom/p;->b:Z

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/mom/p;->i:Lcom/mediatek/mom/MobileManagerControllerBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0}, Lcom/mediatek/mom/MobileManagerControllerBase;-><init>()V

    .line 102
    iput-object v0, p0, Lcom/mediatek/mom/p;->c:Landroid/app/IActivityManager;

    .line 103
    iput-object v0, p0, Lcom/mediatek/mom/p;->d:Landroid/content/pm/IPackageManager;

    .line 104
    iput-object v0, p0, Lcom/mediatek/mom/p;->e:Landroid/content/Context;

    .line 105
    iput-object v0, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    .line 106
    iput-object v0, p0, Lcom/mediatek/mom/p;->g:Lcom/mediatek/mom/n;

    .line 107
    iput v1, p0, Lcom/mediatek/mom/p;->h:I

    .line 109
    iput-boolean v1, p0, Lcom/mediatek/mom/p;->j:Z

    .line 110
    iput-boolean v1, p0, Lcom/mediatek/mom/p;->k:Z

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/p;->a:Landroid/content/IntentFilter;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/p;->l:Ljava/util/List;

    .line 116
    invoke-static {}, Lcom/mediatek/mom/a;->a()Lcom/mediatek/mom/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    .line 117
    invoke-static {}, Lcom/mediatek/mom/n;->a()Lcom/mediatek/mom/n;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/p;->g:Lcom/mediatek/mom/n;

    .line 118
    invoke-static {}, Lcom/mediatek/mom/p;->getPackageManagerService()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/p;->d:Landroid/content/pm/IPackageManager;

    .line 119
    invoke-static {}, Lcom/mediatek/mom/p;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/p;->c:Landroid/app/IActivityManager;

    .line 120
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x2

    .line 563
    .line 564
    iget-object v0, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    invoke-virtual {v0, p1, p3}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/mom/Permission;

    move-result-object v3

    .line 565
    new-instance v2, Lcom/mediatek/common/mom/PermissionRecord;

    invoke-direct {v2, p1, p3, v1}, Lcom/mediatek/common/mom/PermissionRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 567
    if-eqz v3, :cond_3

    .line 568
    invoke-virtual {v3}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v0

    .line 570
    iget-object v4, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    invoke-virtual {v3}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/mom/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 571
    invoke-virtual {v3, v6}, Lcom/mediatek/common/mom/Permission;->setStatus(I)V

    move v0, v6

    .line 576
    :cond_0
    invoke-virtual {v2, v0}, Lcom/mediatek/common/mom/PermissionRecord;->setStatus(I)V

    .line 578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPermission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/mediatek/mom/p;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, p3, v4}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 581
    packed-switch v0, :pswitch_data_0

    .line 611
    const-string v0, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown permission status: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/mediatek/common/mom/Permission;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v6, v1

    .line 619
    :goto_1
    return v6

    .line 584
    :pswitch_0
    invoke-direct {p0, p5, p3, p2, v1}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    move v6, v1

    .line 585
    goto :goto_1

    .line 588
    :pswitch_1
    invoke-virtual {v3}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/p;->a(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)I

    .line 590
    invoke-direct {p0, p5, p3, p2, v6}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    goto :goto_1

    .line 593
    :pswitch_2
    invoke-virtual {v2, v6}, Lcom/mediatek/common/mom/PermissionRecord;->setStatus(I)V

    .line 594
    iget-object v1, p0, Lcom/mediatek/mom/p;->g:Lcom/mediatek/mom/n;

    invoke-virtual {v1, p1, p3}, Lcom/mediatek/mom/n;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 595
    const-string v0, "checkPermission DENIED because checking is still ongoing"

    invoke-static {p2, p3, v0}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-direct {p0, p5, p3, p2, v6}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    goto :goto_1

    .line 600
    :cond_1
    iget-object v1, p0, Lcom/mediatek/mom/p;->g:Lcom/mediatek/mom/n;

    invoke-virtual {v1, p1, p3, v0}, Lcom/mediatek/mom/n;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 602
    if-eqz p5, :cond_2

    .line 603
    invoke-virtual {v3}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v3

    invoke-interface {p5}, Lcom/mediatek/common/mom/IRequestedPermissionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/mom/p;->a(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;Landroid/os/IBinder;)V

    .line 604
    const/4 v6, 0x1

    goto :goto_1

    .line 607
    :cond_2
    invoke-virtual {v3}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/p;->a(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)I

    move-result v6

    goto :goto_1

    .line 616
    :cond_3
    const-string v0, "checkPermission UNMONITORED"

    invoke-static {p2, p3, v0}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-direct {p0, p5, p3, p2, v1}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    goto :goto_0

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 638
    .line 640
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/mom/p;->b(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 641
    invoke-static {}, Lcom/mediatek/mom/t;->a()Lcom/mediatek/mom/t;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/mediatek/mom/p;->getManagerApListener()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lcom/mediatek/mom/t;->a(ILandroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    .line 644
    return v0
.end method

.method public static final a()Lcom/mediatek/mom/MobileManagerControllerBase;
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/mediatek/mom/p;->i:Lcom/mediatek/mom/MobileManagerControllerBase;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/mediatek/mom/p;

    invoke-direct {v0}, Lcom/mediatek/mom/p;-><init>()V

    sput-object v0, Lcom/mediatek/mom/p;->i:Lcom/mediatek/mom/MobileManagerControllerBase;

    .line 126
    const-string v0, "PermissionController"

    const-string v1, "Create MobileManagerController: PermissionController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    sget-object v0, Lcom/mediatek/mom/p;->i:Lcom/mediatek/mom/MobileManagerControllerBase;

    return-object v0
.end method

.method private a(IZ)Lcom/mediatek/mom/r;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 338
    const/4 v1, 0x0

    .line 339
    iget-object v2, p0, Lcom/mediatek/mom/p;->l:Ljava/util/List;

    monitor-enter v2

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/p;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 341
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/r;

    .line 343
    invoke-virtual {v0}, Lcom/mediatek/mom/r;->b()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->a()Z

    move-result v4

    if-ne v4, p2, :cond_0

    .line 348
    :goto_0
    monitor-exit v2

    .line 349
    return-object v0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 673
    sget-boolean v0, Lcom/mediatek/mom/p;->b:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 675
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    const-string v1, "PermissionController"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_0
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 669
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {p0, v0, p1, p2}, Lcom/mediatek/mom/p;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method private a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 624
    if-eqz p1, :cond_0

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPermission MoMS >> Caller with result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p2, v0}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 627
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 628
    invoke-interface {p1, p2, p3, p4}, Lcom/mediatek/common/mom/IRequestedPermissionCallback;->onPermissionCheckResult(Ljava/lang/String;II)V

    .line 629
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :goto_0
    const-string v0, "checkPermission MoMS << Caller"

    invoke-static {p3, p2, v0}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 635
    :cond_0
    return-void

    .line 630
    :catch_0
    move-exception v0

    .line 631
    const-string v1, "PermissionController"

    const-string v2, "onPermissionCheckResult() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/mediatek/mom/p;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/mediatek/mom/p;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;Landroid/os/IBinder;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 648
    .line 650
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/mom/p;->b(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 651
    invoke-static {}, Lcom/mediatek/mom/t;->a()Lcom/mediatek/mom/t;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/mediatek/mom/p;->getManagerApListener()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3, p6}, Lcom/mediatek/mom/t;->a(ILandroid/os/IBinder;Landroid/os/Bundle;ILandroid/os/IBinder;)V

    .line 653
    return-void
.end method

.method private b(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 527
    const/4 v0, 0x0

    .line 530
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/mom/p;->getManagerApListener()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 531
    const-string v1, "checkPermission GRANTED because listener from MOMA is null"

    invoke-static {p2, p1, v1}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-direct {p0, p4, p1, p2, v0}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    .line 559
    :goto_0
    return v6

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/mediatek/mom/p;->d:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 537
    if-nez v1, :cond_1

    .line 538
    const-string v1, "checkPermission UNMONITORED"

    invoke-static {p2, p1, v1}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-direct {p0, p4, p1, p2, v0}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 555
    :catch_0
    move-exception v0

    .line 556
    const-string v0, "getPackagesForUid() faild!"

    invoke-static {p2, p1, v0}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-direct {p0, p4, p1, p2, v6}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    :goto_1
    move v0, v6

    :goto_2
    move v6, v0

    .line 559
    goto :goto_0

    .line 542
    :cond_1
    :try_start_1
    array-length v0, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 543
    const/4 v0, 0x0

    aget-object v1, v1, v0

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/p;->a(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)I

    move-result v0

    goto :goto_2

    .line 546
    :cond_2
    iget-object v0, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/mediatek/common/mom/PermissionRecord;

    move-result-object v0

    .line 547
    if-eqz v0, :cond_3

    .line 548
    iget-object v1, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/p;->a(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)I

    move-result v0

    goto :goto_2

    .line 550
    :cond_3
    const-string v0, "checkPermission UNMONITORED"

    invoke-static {p2, p1, v0}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 551
    const/4 v0, 0x0

    .line 552
    invoke-direct {p0, p4, p1, p2, v0}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 656
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 657
    const-string v1, "param_package"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v1, "param_permission_record"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 659
    const-string v1, "param_flag"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 660
    const-string v1, "param_uid"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 661
    const-string v1, "param_data"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 662
    return-object v0
.end method

.method private b(IZ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 380
    iget-object v1, p0, Lcom/mediatek/mom/p;->l:Ljava/util/List;

    monitor-enter v1

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/p;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 382
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/r;

    .line 384
    invoke-virtual {v0}, Lcom/mediatek/mom/r;->b()I

    move-result v3

    if-eq v3, p1, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->a()Z

    move-result v3

    if-ne v3, v7, :cond_0

    .line 386
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/mediatek/mom/r;->a(Z)V

    .line 388
    if-ne p2, v7, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/mediatek/mom/r;->d()Lcom/mediatek/common/mom/IMobileConnectionCallback;

    move-result-object v3

    .line 390
    if-nez v3, :cond_1

    .line 391
    const-string v3, "PermissionController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->b()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " should handle connection ended to MoMS"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 395
    :cond_1
    :try_start_1
    const-string v4, "PermissionController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MoMS >> MoMA] onConnectionEnded() start with uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " identity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->c()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-interface {v3}, Lcom/mediatek/common/mom/IMobileConnectionCallback;->onConnectionEnded()V

    .line 397
    const-string v3, "PermissionController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MoMS << MoMA] onConnectionEnded() end with uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " identity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->c()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    :try_start_2
    const-string v3, "PermissionController"

    const-string v4, "onConnectionEnded() faild"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 404
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 405
    return-void
.end method

.method private c(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4
    .parameter

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mom/p;->c:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 206
    iget-object v2, p0, Lcom/mediatek/mom/p;->d:Landroid/content/pm/IPackageManager;

    const/16 v3, 0x1000

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    .line 208
    :catch_0
    move-exception v1

    .line 209
    const-string v2, "PermissionController"

    const-string v3, "Get package info failed! "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 703
    .line 704
    packed-switch p0, :pswitch_data_0

    .line 715
    :pswitch_0
    const-string v0, "UNKNOWN"

    .line 716
    const-string v1, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mapResult2String() with unknown result code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :goto_0
    return-object v0

    .line 706
    :pswitch_1
    const-string v0, "GRANTED"

    goto :goto_0

    .line 709
    :pswitch_2
    const-string v0, "DENIED"

    goto :goto_0

    .line 712
    :pswitch_3
    const-string v0, "USER-DENIED"

    goto :goto_0

    .line 704
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static d(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 723
    .line 724
    packed-switch p0, :pswitch_data_0

    .line 735
    const-string v0, "UNKNOWN"

    .line 736
    const-string v1, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mapResult2String() with unknown status code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :goto_0
    return-object v0

    .line 726
    :pswitch_0
    const-string v0, "GRANTED"

    goto :goto_0

    .line 729
    :pswitch_1
    const-string v0, "DENIED"

    goto :goto_0

    .line 732
    :pswitch_2
    const-string v0, "CHECKING"

    goto :goto_0

    .line 724
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private d()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "com.tencent.tcuser"

    const-string v1, "com.tencent.tcuser.ztool.service.PermissionService"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/mom/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "com.mediatek.security"

    const-string v1, "com.mediatek.security.service.PermControlService"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/mom/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method private e(I)V
    .locals 7
    .parameter

    .prologue
    .line 408
    iget-object v1, p0, Lcom/mediatek/mom/p;->l:Ljava/util/List;

    monitor-enter v1

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/p;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 410
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/r;

    .line 412
    invoke-virtual {v0}, Lcom/mediatek/mom/r;->b()I

    move-result v3

    if-eq v3, p1, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 414
    invoke-virtual {v0}, Lcom/mediatek/mom/r;->d()Lcom/mediatek/common/mom/IMobileConnectionCallback;

    move-result-object v3

    .line 415
    if-nez v3, :cond_1

    .line 416
    const-string v3, "PermissionController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->b()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " should handle connection resume  MoMS"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 420
    :cond_1
    :try_start_1
    const-string v4, "PermissionController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MoMS >> MoMA] onConnectionResume() start with uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " identity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->c()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-interface {v3}, Lcom/mediatek/common/mom/IMobileConnectionCallback;->onConnectionResume()V

    .line 422
    const-string v3, "PermissionController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MoMS << MoMA] onConnectionResume() end with uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " identity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->c()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    :try_start_2
    const-string v3, "PermissionController"

    const-string v4, "onConnectionEnded() faild"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 428
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 429
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILandroid/os/Bundle;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 489
    const/4 v0, 0x0

    .line 491
    const-string v1, "checkPermission START"

    invoke-static {p2, p1, v1}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Lcom/mediatek/mom/p;->isControllerEnabled()Z

    move-result v1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/mom/p;->j:Z

    if-ne v1, v2, :cond_0

    .line 495
    const/16 v1, 0x3e8

    if-le p2, v1, :cond_1

    .line 496
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/mom/p;->b(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)I

    move-result v0

    .line 501
    :cond_0
    :goto_0
    return v0

    .line 498
    :cond_1
    const-string v1, "checkPermision GRANTED with system uid"

    invoke-static {p2, p1, v1}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(J)J
    .locals 2
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mediatek/mom/p;->g:Lcom/mediatek/mom/n;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/mom/n;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    const/4 v0, 0x0

    .line 440
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 441
    iget-object v0, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 445
    :goto_0
    return-object v0

    .line 443
    :cond_0
    const-string v1, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(I)V
    .locals 5
    .parameter

    .prologue
    .line 311
    iget-object v1, p0, Lcom/mediatek/mom/p;->l:Ljava/util/List;

    monitor-enter v1

    .line 312
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/mediatek/mom/p;->a(IZ)Lcom/mediatek/mom/r;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_0

    .line 314
    const-string v2, "PermissionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "detach control token from uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with identity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v2, p0, Lcom/mediatek/mom/p;->l:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 318
    invoke-direct {p0, p1}, Lcom/mediatek/mom/p;->e(I)V

    .line 320
    :cond_0
    monitor-exit v1

    .line 321
    return-void

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/mediatek/common/mom/PermissionRecord;)V
    .locals 3
    .parameter

    .prologue
    .line 449
    if-eqz p1, :cond_2

    .line 450
    iget-object v0, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    iget-object v1, p1, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/mom/Permission;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {v0}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    .line 453
    invoke-virtual {p1}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/common/mom/Permission;->setStatus(I)V

    .line 454
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set permission record:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/common/mom/PermissionRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :goto_0
    return-void

    .line 456
    :cond_0
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore setting user-confirm permission record:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/common/mom/PermissionRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 459
    :cond_1
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/common/mom/PermissionRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 462
    :cond_2
    const-string v0, "PermissionController"

    const-string v1, "setPermissionRecord() with null record!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 505
    const/4 v0, 0x0

    .line 507
    const-string v1, "checkPermissionAsync START"

    invoke-static {p2, p1, v1}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 509
    if-nez p4, :cond_0

    .line 510
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Async check with null callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/mom/p;->isControllerEnabled()Z

    move-result v1

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/mom/p;->j:Z

    if-ne v1, v2, :cond_2

    .line 515
    const/16 v1, 0x3e8

    if-le p2, v1, :cond_1

    .line 516
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/mom/p;->b(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)I

    .line 524
    :goto_0
    return-void

    .line 518
    :cond_1
    const-string v1, "checkPermisionAsync GRANTED with system uid"

    invoke-static {p2, p1, v1}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-direct {p0, p4, p1, p2, v0}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    goto :goto_0

    .line 522
    :cond_2
    invoke-direct {p0, p4, p1, p2, v0}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mediatek/mom/p;->e:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 157
    invoke-direct {p0, p1}, Lcom/mediatek/mom/p;->c(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 159
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v1, "start_service_by_moms"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    iget-object v1, p0, Lcom/mediatek/mom/p;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 162
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create initMobileManagerAp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMobileManagerAp() failed due to null packageInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_1
    const-string v0, "PermissionController"

    const-string v1, "initMobileManagerAp() failed due to null context"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/mediatek/common/jpe/a;

    invoke-direct {v0}, Lcom/mediatek/common/jpe/a;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/common/jpe/a;->a()V

    .line 435
    iget-object v0, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/a;->a(Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/mom/p;->j:Z

    .line 436
    return-void
.end method

.method public a(Lcom/mediatek/common/mom/IMobileConnectionCallback;III)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 255
    .line 256
    const/16 v2, 0x64

    if-lt p4, v2, :cond_6

    .line 257
    iget-object v3, p0, Lcom/mediatek/mom/p;->l:Ljava/util/List;

    monitor-enter v3

    .line 258
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p2, v2}, Lcom/mediatek/mom/p;->a(IZ)Lcom/mediatek/mom/r;

    move-result-object v2

    .line 259
    if-eqz v2, :cond_0

    .line 260
    const-string v0, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Already attached from uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    monitor-exit v3

    move v0, v1

    .line 307
    :goto_0
    return v0

    .line 264
    :cond_0
    if-le p4, p3, :cond_2

    .line 265
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/mediatek/mom/p;->b(IZ)V

    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/mom/p;->a(IZ)Lcom/mediatek/mom/r;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_1

    .line 268
    const-string v2, "PermissionController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attach an exist manager control token from uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with identity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v0, p1}, Lcom/mediatek/mom/r;->a(Lcom/mediatek/common/mom/IMobileConnectionCallback;)V

    .line 278
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mediatek/mom/r;->a(Z)V

    move v0, v1

    .line 303
    :goto_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 273
    :cond_1
    :try_start_1
    const-string v0, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attach a new manager control token from uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " with identity: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v0, Lcom/mediatek/mom/r;

    invoke-direct {v0, p2, p4, p1}, Lcom/mediatek/mom/r;-><init>(IILcom/mediatek/common/mom/IMobileConnectionCallback;)V

    .line 276
    iget-object v2, p0, Lcom/mediatek/mom/p;->l:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 280
    :cond_2
    if-ne p4, p3, :cond_4

    .line 281
    if-eqz v2, :cond_3

    .line 282
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/mediatek/mom/r;->a(Z)V

    .line 283
    invoke-virtual {v2, p1}, Lcom/mediatek/mom/r;->a(Lcom/mediatek/common/mom/IMobileConnectionCallback;)V

    move-object v0, v2

    .line 290
    :goto_3
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mediatek/mom/r;->a(Z)V

    move v0, v1

    .line 291
    goto :goto_2

    .line 285
    :cond_3
    const-string v0, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attach new uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " with existing identity: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v0, Lcom/mediatek/mom/r;

    invoke-direct {v0, p2, p4, p1}, Lcom/mediatek/mom/r;-><init>(IILcom/mediatek/common/mom/IMobileConnectionCallback;)V

    .line 288
    iget-object v2, p0, Lcom/mediatek/mom/p;->l:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 293
    :cond_4
    const-string v1, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attach failed due to minor identity: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/mediatek/mom/p;->a(IZ)Lcom/mediatek/mom/r;

    move-result-object v1

    .line 296
    if-eqz v1, :cond_5

    .line 297
    iget-object v2, p0, Lcom/mediatek/mom/p;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 299
    :cond_5
    new-instance v1, Lcom/mediatek/mom/r;

    invoke-direct {v1, p2, p4, p1}, Lcom/mediatek/mom/r;-><init>(IILcom/mediatek/common/mom/IMobileConnectionCallback;)V

    .line 300
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/mom/r;->a(Z)V

    .line 301
    iget-object v2, p0, Lcom/mediatek/mom/p;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 305
    :cond_6
    const-string v1, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attach failed with invalid uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " identity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 355
    invoke-virtual {p0}, Lcom/mediatek/mom/p;->c()Lcom/mediatek/mom/r;

    move-result-object v1

    .line 356
    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {v1}, Lcom/mediatek/mom/r;->c()I

    move-result v0

    .line 359
    :cond_0
    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 479
    iget-object v0, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;)Lcom/mediatek/common/mom/Permission;

    move-result-object v0

    .line 480
    if-eqz v0, :cond_0

    .line 481
    iget-object v0, v0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    .line 483
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 467
    if-eqz p1, :cond_0

    .line 468
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 469
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/PermissionRecord;

    .line 471
    invoke-virtual {p0, v0}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/PermissionRecord;)V

    goto :goto_0

    .line 474
    :cond_0
    const-string v0, "PermissionController"

    const-string v1, "setPermissionCache() with record setting!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_1
    return-void
.end method

.method public b(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 324
    const/4 v1, 0x0

    .line 326
    iget-object v2, p0, Lcom/mediatek/mom/p;->l:Ljava/util/List;

    monitor-enter v2

    .line 327
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, p1, v3}, Lcom/mediatek/mom/p;->a(IZ)Lcom/mediatek/mom/r;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 328
    const-string v1, "PermissionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAttachment() pass with uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_0
    monitor-exit v2

    .line 334
    return v0

    .line 331
    :cond_0
    const-string v0, "PermissionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAttachment() failed with uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Lcom/mediatek/mom/r;
    .locals 6

    .prologue
    .line 363
    const/4 v1, 0x0

    .line 364
    iget-object v2, p0, Lcom/mediatek/mom/p;->l:Ljava/util/List;

    monitor-enter v2

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/p;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/mediatek/mom/p;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 367
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/r;

    .line 369
    invoke-virtual {v0}, Lcom/mediatek/mom/r;->a()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 375
    :goto_0
    monitor-exit v2

    .line 376
    return-object v0

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public clearCache()Z
    .locals 2

    .prologue
    .line 242
    const-string v0, "PermissionController"

    const-string v1, "clearPermissionCache()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    invoke-virtual {v0}, Lcom/mediatek/mom/a;->b()V

    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method public clearPackageCache(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 235
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearPermissionCache() packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/a;->c(Ljava/lang/String;)V

    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized enableController(Z)V
    .locals 3
    .parameter

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/mediatek/mom/MobileManagerControllerBase;->enableController(Z)V

    .line 222
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableController() enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p0}, Lcom/mediatek/mom/p;->getManagerApListener()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Enable permission controller without register listener!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 227
    :cond_0
    :try_start_1
    sput-boolean p1, Lcom/mediatek/mom/p;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    monitor-exit p0

    return-void
.end method

.method public onPackageStatusChange(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/mediatek/mom/p;->j:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    const-string v1, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPackageStatusChange() packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    packed-switch p2, :pswitch_data_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 181
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mediatek/mom/p;->c(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 182
    if-eqz v1, :cond_2

    .line 183
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/mediatek/mom/h;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 184
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v1, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    invoke-virtual {v1, p1}, Lcom/mediatek/mom/a;->d(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    invoke-virtual {v1, v0}, Lcom/mediatek/mom/a;->b(Ljava/util/List;)V

    goto :goto_0

    .line 188
    :cond_1
    const-string v0, "PermissionController"

    const-string v1, "Ignore system application"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :cond_2
    const-string v0, "PermissionController"

    const-string v1, "null pkgInfo when package added / removed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/a;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/mediatek/mom/p;->e:Landroid/content/Context;

    .line 143
    invoke-direct {p0}, Lcom/mediatek/mom/p;->d()V

    .line 144
    iget-object v0, p0, Lcom/mediatek/mom/p;->a:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    new-instance v0, Lcom/mediatek/mom/p$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/mom/p$a;-><init>(Lcom/mediatek/mom/p;Lcom/mediatek/mom/p$1;)V

    iget-object v1, p0, Lcom/mediatek/mom/p;->a:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mom/p;->k:Z

    .line 147
    return-void
.end method
