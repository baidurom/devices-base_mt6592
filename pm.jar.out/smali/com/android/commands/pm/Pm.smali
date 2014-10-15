.class public final Lcom/android/commands/pm/Pm;
.super Ljava/lang/Object;
.source "Pm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/pm/Pm$ClearCacheObserver;,
        Lcom/android/commands/pm/Pm$ClearDataObserver;,
        Lcom/android/commands/pm/Pm$PackageDeleteObserver;,
        Lcom/android/commands/pm/Pm$PackageInstallObserver;
    }
.end annotation


# static fields
.field private static final PM_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the Package Manager.  Is the system running?"


# instance fields
.field private mArgs:[Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field private mNextArg:I

.field mPm:Landroid/content/pm/IPackageManager;

.field private mResourceCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field mUm:Landroid/os/IUserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/commands/pm/Pm;->mResourceCache:Ljava/util/WeakHashMap;

    .line 1316
    return-void
.end method

.method private deletePackage(Ljava/lang/String;I)Z
    .locals 4
    .parameter "pkg"
    .parameter "unInstallFlags"

    .prologue
    .line 1111
    new-instance v1, Lcom/android/commands/pm/Pm$PackageDeleteObserver;

    invoke-direct {v1, p0}, Lcom/android/commands/pm/Pm$PackageDeleteObserver;-><init>(Lcom/android/commands/pm/Pm;)V

    .line 1113
    .local v1, obs:Lcom/android/commands/pm/Pm$PackageDeleteObserver;
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, v1, p2}, Landroid/content/pm/IPackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 1115
    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1116
    :goto_0
    :try_start_1
    iget-boolean v2, v1, Lcom/android/commands/pm/Pm$PackageDeleteObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 1118
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1119
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1122
    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1127
    :goto_1
    iget-boolean v2, v1, Lcom/android/commands/pm/Pm$PackageDeleteObserver;->result:Z

    return v2

    .line 1122
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1123
    :catch_1
    move-exception v0

    .line 1124
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1125
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private displayPackageFilePath(Ljava/lang/String;)V
    .locals 5
    .parameter "pckg"

    .prologue
    .line 1391
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, p1, v3, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1392
    .local v1, info:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 1393
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1394
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1400
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 1396
    :catch_0
    move-exception v0

    .line 1397
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1398
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doListPermissions(Ljava/util/ArrayList;ZZZII)V
    .locals 16
    .parameter
    .parameter "groups"
    .parameter "labels"
    .parameter "summary"
    .parameter "startProtectionLevel"
    .parameter "endProtectionLevel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZZZII)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 578
    .local p1, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_11

    .line 579
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 580
    .local v4, groupName:Ljava/lang/String;
    const-string v9, ""

    .line 581
    .local v9, prefix:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 582
    if-lez v5, :cond_0

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 583
    :cond_0
    if-eqz v4, :cond_7

    .line 584
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v13, 0x0

    invoke-interface {v12, v4, v13}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v7

    .line 586
    .local v7, pgi:Landroid/content/pm/PermissionGroupInfo;
    if-eqz p4, :cond_5

    .line 587
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/commands/pm/Pm;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v11

    .line 588
    .local v11, res:Landroid/content/res/Resources;
    if-eqz v11, :cond_4

    .line 589
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v7, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    iget-object v15, v7, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14, v15}, Lcom/android/commands/pm/Pm;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 615
    .end local v7           #pgi:Landroid/content/pm/PermissionGroupInfo;
    .end local v11           #res:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    const-string v9, "  "

    .line 617
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-interface {v13, v12, v14}, Landroid/content/pm/IPackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 619
    .local v10, ps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    .line 620
    .local v2, count:I
    const/4 v3, 0x1

    .line 621
    .local v3, first:Z
    const/4 v6, 0x0

    .local v6, p:I
    :goto_2
    if-ge v6, v2, :cond_f

    .line 622
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PermissionInfo;

    .line 623
    .local v8, pi:Landroid/content/pm/PermissionInfo;
    if-eqz p2, :cond_9

    if-nez v4, :cond_9

    iget-object v12, v8, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v12, :cond_9

    .line 621
    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 592
    .end local v2           #count:I
    .end local v3           #first:Z
    .end local v6           #p:I
    .end local v8           #pi:Landroid/content/pm/PermissionInfo;
    .end local v10           #ps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .restart local v7       #pgi:Landroid/content/pm/PermissionGroupInfo;
    .restart local v11       #res:Landroid/content/res/Resources;
    :cond_4
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v7, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 596
    .end local v11           #res:Landroid/content/res/Resources;
    :cond_5
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_6

    const-string v12, "+ "

    :goto_4
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "group:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v7, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 598
    if-eqz p3, :cond_1

    .line 599
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  package:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v7, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 600
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/commands/pm/Pm;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v11

    .line 601
    .restart local v11       #res:Landroid/content/res/Resources;
    if-eqz v11, :cond_1

    .line 602
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  label:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    iget-object v15, v7, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14, v15}, Lcom/android/commands/pm/Pm;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 605
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  description:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    iget-object v15, v7, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14, v15}, Lcom/android/commands/pm/Pm;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 596
    .end local v11           #res:Landroid/content/res/Resources;
    :cond_6
    const-string v12, ""

    goto/16 :goto_4

    .line 612
    .end local v7           #pgi:Landroid/content/pm/PermissionGroupInfo;
    :cond_7
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_8

    if-nez p4, :cond_8

    const-string v12, "+ "

    :goto_5
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "ungrouped:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v12, ""

    goto :goto_5

    .line 626
    .restart local v2       #count:I
    .restart local v3       #first:Z
    .restart local v6       #p:I
    .restart local v8       #pi:Landroid/content/pm/PermissionInfo;
    .restart local v10       #ps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :cond_9
    iget v12, v8, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v1, v12, 0xf

    .line 627
    .local v1, base:I
    move/from16 v0, p5

    if-lt v1, v0, :cond_3

    move/from16 v0, p6

    if-gt v1, v0, :cond_3

    .line 631
    if-eqz p4, :cond_c

    .line 632
    if-eqz v3, :cond_a

    .line 633
    const/4 v3, 0x0

    .line 637
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/commands/pm/Pm;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v11

    .line 638
    .restart local v11       #res:Landroid/content/res/Resources;
    if-eqz v11, :cond_b

    .line 639
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v13, v8, Landroid/content/pm/PermissionInfo;->labelRes:I

    iget-object v14, v8, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13, v14}, Lcom/android/commands/pm/Pm;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 635
    .end local v11           #res:Landroid/content/res/Resources;
    :cond_a
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_6

    .line 642
    .restart local v11       #res:Landroid/content/res/Resources;
    :cond_b
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v13, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 645
    .end local v11           #res:Landroid/content/res/Resources;
    :cond_c
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz p3, :cond_e

    const-string v12, "+ "

    :goto_7
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "permission:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 647
    if-eqz p3, :cond_3

    .line 648
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  package:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 649
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/commands/pm/Pm;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v11

    .line 650
    .restart local v11       #res:Landroid/content/res/Resources;
    if-eqz v11, :cond_d

    .line 651
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  label:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Landroid/content/pm/PermissionInfo;->labelRes:I

    iget-object v15, v8, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14, v15}, Lcom/android/commands/pm/Pm;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 654
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  description:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    iget-object v15, v8, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14, v15}, Lcom/android/commands/pm/Pm;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 658
    :cond_d
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  protectionLevel:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v14}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 645
    .end local v11           #res:Landroid/content/res/Resources;
    :cond_e
    const-string v12, ""

    goto/16 :goto_7

    .line 664
    .end local v1           #base:I
    .end local v8           #pi:Landroid/content/pm/PermissionInfo;
    :cond_f
    if-eqz p4, :cond_10

    .line 665
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 578
    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 668
    .end local v2           #count:I
    .end local v3           #first:Z
    .end local v4           #groupName:Ljava/lang/String;
    .end local v6           #p:I
    .end local v9           #prefix:Ljava/lang/String;
    .end local v10           #ps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :cond_11
    return-void
.end method

.method private static enabledSettingToString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 1193
    packed-switch p0, :pswitch_data_0

    .line 1203
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 1195
    :pswitch_0
    const-string v0, "default"

    goto :goto_0

    .line 1197
    :pswitch_1
    const-string v0, "enabled"

    goto :goto_0

    .line 1199
    :pswitch_2
    const-string v0, "disabled"

    goto :goto_0

    .line 1201
    :pswitch_3
    const-string v0, "disabled-user"

    goto :goto_0

    .line 1193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getInstalledPackages(Landroid/content/pm/IPackageManager;II)Ljava/util/List;
    .locals 5
    .parameter "pm"
    .parameter "flags"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 324
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v2, packageInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .line 329
    .local v0, lastItem:Landroid/content/pm/PackageInfo;
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 330
    .local v1, lastKey:Ljava/lang/String;
    :goto_0
    invoke-interface {p1, p2, v1, p3}, Landroid/content/pm/IPackageManager;->getInstalledPackages(ILjava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 331
    .local v3, slice:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    sget-object v4, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/ParceledListSlice;->populateList(Ljava/util/List;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0           #lastItem:Landroid/content/pm/PackageInfo;
    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 332
    .restart local v0       #lastItem:Landroid/content/pm/PackageInfo;
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->isLastSlice()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 334
    return-object v2

    .line 329
    .end local v1           #lastKey:Ljava/lang/String;
    .end local v3           #slice:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;
    .locals 10
    .parameter "pii"

    .prologue
    const/4 v5, 0x0

    .line 1403
    iget-object v6, p0, Lcom/android/commands/pm/Pm;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object v7, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    .line 1404
    .local v3, res:Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 1416
    :goto_0
    return-object v4

    .line 1407
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v7, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1408
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V

    .line 1409
    .local v1, am:Landroid/content/res/AssetManager;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 1410
    new-instance v4, Landroid/content/res/Resources;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v1, v6, v7}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1411
    .end local v3           #res:Landroid/content/res/Resources;
    .local v4, res:Landroid/content/res/Resources;
    :try_start_1
    iget-object v6, p0, Lcom/android/commands/pm/Pm;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object v7, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 1412
    .end local v4           #res:Landroid/content/res/Resources;
    .restart local v3       #res:Landroid/content/res/Resources;
    goto :goto_0

    .line 1413
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #am:Landroid/content/res/AssetManager;
    :catch_0
    move-exception v2

    .line 1414
    .local v2, e:Landroid/os/RemoteException;
    :goto_1
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1415
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v4, v5

    .line 1416
    goto :goto_0

    .line 1413
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #res:Landroid/content/res/Resources;
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v1       #am:Landroid/content/res/AssetManager;
    .restart local v4       #res:Landroid/content/res/Resources;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4           #res:Landroid/content/res/Resources;
    .restart local v3       #res:Landroid/content/res/Resources;
    goto :goto_1
.end method

.method private hexToBytes(Ljava/lang/String;)[B
    .locals 8
    .parameter "input"

    .prologue
    const/4 v5, 0x0

    .line 966
    if-nez p1, :cond_1

    .line 987
    :cond_0
    :goto_0
    return-object v5

    .line 970
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 971
    .local v4, inputLength:I
    rem-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_2

    .line 972
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Invalid length; must be multiple of 2"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 976
    :cond_2
    div-int/lit8 v2, v4, 0x2

    .line 977
    .local v2, byteLength:I
    new-array v5, v2, [B

    .line 979
    .local v5, output:[B
    const/4 v3, 0x0

    .line 980
    .local v3, inputIndex:I
    const/4 v0, 0x0

    .local v0, byteIndex:I
    move v1, v0

    .line 981
    .end local v0           #byteIndex:I
    .local v1, byteIndex:I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 982
    add-int/lit8 v0, v1, 0x1

    .end local v1           #byteIndex:I
    .restart local v0       #byteIndex:I
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    .line 984
    add-int/lit8 v3, v3, 0x2

    move v1, v0

    .end local v0           #byteIndex:I
    .restart local v1       #byteIndex:I
    goto :goto_1
.end method

.method private installFailureToString(I)Ljava/lang/String;
    .locals 9
    .parameter "result"

    .prologue
    .line 697
    const-class v7, Landroid/content/pm/PackageManager;

    invoke-virtual {v7}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 698
    .local v3, fields:[Ljava/lang/reflect/Field;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 699
    .local v1, f:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_1

    .line 700
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    .line 702
    .local v6, modifiers:I
    and-int/lit8 v7, v6, 0x10

    if-eqz v7, :cond_1

    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_1

    and-int/lit8 v7, v6, 0x8

    if-eqz v7, :cond_1

    .line 705
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 706
    .local v2, fieldName:Ljava/lang/String;
    const-string v7, "INSTALL_FAILED_"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "INSTALL_PARSE_FAILED_"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 710
    :cond_0
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-ne p1, v7, :cond_1

    .line 722
    .end local v1           #f:Ljava/lang/reflect/Field;
    .end local v2           #fieldName:Ljava/lang/String;
    .end local v6           #modifiers:I
    :goto_1
    return-object v2

    .line 713
    .restart local v1       #f:Ljava/lang/reflect/Field;
    .restart local v2       #fieldName:Ljava/lang/String;
    .restart local v6       #modifiers:I
    :catch_0
    move-exception v7

    .line 698
    .end local v2           #fieldName:Ljava/lang/String;
    .end local v6           #modifiers:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 722
    .end local v1           #f:Ljava/lang/reflect/Field;
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static isNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 1208
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1212
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1209
    :catch_0
    move-exception v0

    .line 1210
    .local v0, nfe:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .parameter "pii"
    .parameter "res"
    .parameter "nonLocalized"

    .prologue
    .line 488
    if-eqz p3, :cond_0

    .line 489
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 497
    :goto_0
    return-object v1

    .line 491
    :cond_0
    if-eqz p2, :cond_1

    .line 492
    invoke-direct {p0, p1}, Lcom/android/commands/pm/Pm;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 493
    .local v0, r:Landroid/content/res/Resources;
    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 497
    .end local v0           #r:Landroid/content/res/Resources;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .parameter "args"

    .prologue
    .line 77
    new-instance v0, Lcom/android/commands/pm/Pm;

    invoke-direct {v0}, Lcom/android/commands/pm/Pm;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/commands/pm/Pm;->run([Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private nextArg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1458
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1459
    const/4 v0, 0x0

    .line 1463
    :goto_0
    return-object v0

    .line 1461
    :cond_0
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    aget-object v0, v1, v2

    .line 1462
    .local v0, arg:Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    goto :goto_0
.end method

.method private nextOption()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 1421
    iget v2, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    move-object v0, v1

    .line 1442
    :goto_0
    return-object v0

    .line 1424
    :cond_0
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    aget-object v0, v2, v3

    .line 1425
    .local v0, arg:Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 1426
    goto :goto_0

    .line 1428
    :cond_1
    iget v2, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    .line 1429
    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 1430
    goto :goto_0

    .line 1432
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_4

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_4

    .line 1433
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 1434
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    .line 1435
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1437
    :cond_3
    iput-object v1, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    goto :goto_0

    .line 1441
    :cond_4
    iput-object v1, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    goto :goto_0
.end method

.method private nextOptionData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1446
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    .line 1454
    :goto_0
    return-object v0

    .line 1449
    :cond_0
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 1450
    const/4 v0, 0x0

    goto :goto_0

    .line 1452
    :cond_1
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    aget-object v0, v1, v2

    .line 1453
    .local v0, data:Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    goto :goto_0
.end method

.method private runClear()V
    .locals 8

    .prologue
    .line 1146
    const/4 v5, 0x0

    .line 1147
    .local v5, userId:I
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    move-result-object v2

    .line 1148
    .local v2, option:Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v6, "--user"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1149
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v3

    .line 1150
    .local v3, optionData:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/android/commands/pm/Pm;->isNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1151
    :cond_0
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Error: no USER_ID specified"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1152
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    .line 1190
    .end local v3           #optionData:Ljava/lang/String;
    :goto_0
    return-void

    .line 1155
    .restart local v3       #optionData:Ljava/lang/String;
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1159
    .end local v3           #optionData:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v4

    .line 1160
    .local v4, pkg:Ljava/lang/String;
    if-nez v4, :cond_3

    .line 1161
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Error: no package specified"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1162
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    goto :goto_0

    .line 1166
    :cond_3
    new-instance v1, Lcom/android/commands/pm/Pm$ClearDataObserver;

    invoke-direct {v1}, Lcom/android/commands/pm/Pm$ClearDataObserver;-><init>()V

    .line 1168
    .local v1, obs:Lcom/android/commands/pm/Pm$ClearDataObserver;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6, v4, v1, v5}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1169
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Failed"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1172
    :cond_4
    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1173
    :goto_1
    :try_start_1
    iget-boolean v6, v1, Lcom/android/commands/pm/Pm$ClearDataObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_5

    .line 1175
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1176
    :catch_0
    move-exception v6

    goto :goto_1

    .line 1179
    :cond_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1181
    :try_start_4
    iget-boolean v6, v1, Lcom/android/commands/pm/Pm$ClearDataObserver;->result:Z

    if-eqz v6, :cond_6

    .line 1182
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Success"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1186
    :catch_1
    move-exception v0

    .line 1187
    .local v0, e:Landroid/os/RemoteException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1188
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1179
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6

    .line 1184
    :cond_6
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Failed"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0
.end method

.method private runGetInstallLocation()V
    .locals 6

    .prologue
    .line 751
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getInstallLocation()I

    move-result v1

    .line 752
    .local v1, loc:I
    const-string v2, "invalid"

    .line 753
    .local v2, locStr:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 754
    const-string v2, "auto"

    .line 760
    :cond_0
    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 765
    .end local v1           #loc:I
    .end local v2           #locStr:Ljava/lang/String;
    :goto_1
    return-void

    .line 755
    .restart local v1       #loc:I
    .restart local v2       #locStr:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 756
    const-string v2, "internal"

    goto :goto_0

    .line 757
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 758
    const-string v2, "external"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 761
    .end local v1           #loc:I
    .end local v2           #locStr:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 762
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 763
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private runGrantRevokePermission(Z)V
    .locals 6
    .parameter "grant"

    .prologue
    .line 1260
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v2

    .line 1261
    .local v2, pkg:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1262
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: no package specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1263
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    .line 1287
    :goto_0
    return-void

    .line 1266
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 1267
    .local v1, perm:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1268
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: no permission specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1269
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    goto :goto_0

    .line 1273
    :cond_1
    if-eqz p1, :cond_2

    .line 1274
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v2, v1}, Landroid/content/pm/IPackageManager;->grantPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1278
    :catch_0
    move-exception v0

    .line 1279
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1280
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1276
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v2, v1}, Landroid/content/pm/IPackageManager;->revokePermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1281
    :catch_1
    move-exception v0

    .line 1282
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1283
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    goto :goto_0

    .line 1284
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1285
    .local v0, e:Ljava/lang/SecurityException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Operation not allowed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runInstall()V
    .locals 30

    .prologue
    .line 768
    const/16 v16, 0x40

    .line 769
    .local v16, installFlags:I
    const/16 v17, 0x0

    .line 773
    .local v17, installerPackageName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 774
    .local v2, algo:Ljava/lang/String;
    const/16 v23, 0x0

    .line 775
    .local v23, iv:[B
    const/16 v24, 0x0

    .line 777
    .local v24, key:[B
    const/4 v5, 0x0

    .line 778
    .local v5, macAlgo:Ljava/lang/String;
    const/16 v25, 0x0

    .line 779
    .local v25, macKey:[B
    const/4 v8, 0x0

    .line 780
    .local v8, tag:[B
    const/16 v27, 0x0

    .line 781
    .local v27, originatingUriString:Ljava/lang/String;
    const/16 v28, 0x0

    .line 783
    .local v28, referrer:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    move-result-object v26

    .local v26, opt:Ljava/lang/String;
    if-eqz v26, :cond_10

    .line 784
    const-string v3, "-l"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 785
    or-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 786
    :cond_1
    const-string v3, "-r"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 787
    or-int/lit8 v16, v16, 0x2

    goto :goto_0

    .line 788
    :cond_2
    const-string v3, "-i"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 789
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v17

    .line 790
    if-nez v17, :cond_0

    .line 791
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: no value specified for -i"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 957
    :goto_1
    return-void

    .line 794
    :cond_3
    const-string v3, "-t"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 795
    or-int/lit8 v16, v16, 0x4

    goto :goto_0

    .line 796
    :cond_4
    const-string v3, "-s"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 798
    or-int/lit8 v16, v16, 0x8

    goto :goto_0

    .line 799
    :cond_5
    const-string v3, "-f"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 801
    or-int/lit8 v16, v16, 0x10

    goto :goto_0

    .line 802
    :cond_6
    const-string v3, "-d"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 803
    move/from16 v0, v16

    or-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    goto :goto_0

    .line 804
    :cond_7
    const-string v3, "--algo"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 805
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v2

    .line 806
    if-nez v2, :cond_0

    .line 807
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: must supply argument for --algo"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 810
    :cond_8
    const-string v3, "--iv"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 811
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/commands/pm/Pm;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v23

    .line 812
    if-nez v23, :cond_0

    .line 813
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: must supply argument for --iv"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 816
    :cond_9
    const-string v3, "--key"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 817
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/commands/pm/Pm;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v24

    .line 818
    if-nez v24, :cond_0

    .line 819
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: must supply argument for --key"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 822
    :cond_a
    const-string v3, "--macalgo"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 823
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v5

    .line 824
    if-nez v5, :cond_0

    .line 825
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: must supply argument for --macalgo"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 828
    :cond_b
    const-string v3, "--mackey"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 829
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/commands/pm/Pm;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v25

    .line 830
    if-nez v25, :cond_0

    .line 831
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: must supply argument for --mackey"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 834
    :cond_c
    const-string v3, "--tag"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 835
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/commands/pm/Pm;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 836
    if-nez v8, :cond_0

    .line 837
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: must supply argument for --tag"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 840
    :cond_d
    const-string v3, "--originating-uri"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 841
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v27

    .line 842
    if-nez v27, :cond_0

    .line 843
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: must supply argument for --originating-uri"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 846
    :cond_e
    const-string v3, "--referrer"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 847
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v28

    .line 848
    if-nez v28, :cond_0

    .line 849
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: must supply argument for --referrer"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 853
    :cond_f
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error: Unknown option: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 859
    :cond_10
    if-nez v2, :cond_11

    if-nez v23, :cond_11

    if-nez v24, :cond_11

    if-nez v5, :cond_11

    if-nez v25, :cond_11

    if-eqz v8, :cond_19

    .line 861
    :cond_11
    if-eqz v2, :cond_12

    if-eqz v23, :cond_12

    if-nez v24, :cond_13

    .line 862
    :cond_12
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: all of --algo, --iv, and --key must be specified"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 866
    :cond_13
    if-nez v5, :cond_14

    if-nez v25, :cond_14

    if-eqz v8, :cond_16

    .line 867
    :cond_14
    if-eqz v5, :cond_15

    if-eqz v25, :cond_15

    if-nez v8, :cond_16

    .line 868
    :cond_15
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: all of --macalgo, --mackey, and --tag must be specified"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 875
    :cond_16
    :try_start_0
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "RAW"

    move-object/from16 v0, v24

    invoke-direct {v4, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 878
    .local v4, encKey:Ljavax/crypto/SecretKey;
    if-eqz v25, :cond_17

    move-object/from16 v0, v25

    array-length v3, v0

    if-nez v3, :cond_18

    .line 879
    :cond_17
    const/4 v7, 0x0

    .line 884
    .local v7, macSecretKey:Ljavax/crypto/SecretKey;
    :goto_2
    new-instance v1, Landroid/content/pm/ContainerEncryptionParams;

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v6, 0x0

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const-wide/16 v13, -0x1

    invoke-direct/range {v1 .. v14}, Landroid/content/pm/ContainerEncryptionParams;-><init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;[BJJJ)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 899
    .end local v4           #encKey:Ljavax/crypto/SecretKey;
    .end local v7           #macSecretKey:Ljavax/crypto/SecretKey;
    .local v1, encryptionParams:Landroid/content/pm/ContainerEncryptionParams;
    :goto_3
    if-eqz v27, :cond_1a

    .line 900
    invoke-static/range {v27 .. v27}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 905
    .local v11, originatingURI:Landroid/net/Uri;
    :goto_4
    if-eqz v28, :cond_1b

    .line 906
    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 912
    .local v12, referrerURI:Landroid/net/Uri;
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v20

    .line 913
    .local v20, apkFilePath:Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\tpkg: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 914
    if-eqz v20, :cond_1c

    .line 915
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v21

    .line 922
    .local v21, apkURI:Landroid/net/Uri;
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v29

    .line 923
    .local v29, verificationFilePath:Ljava/lang/String;
    if-eqz v29, :cond_1d

    .line 924
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\tver: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 925
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v29

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 930
    .local v10, verificationURI:Landroid/net/Uri;
    :goto_6
    new-instance v15, Lcom/android/commands/pm/Pm$PackageInstallObserver;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/commands/pm/Pm$PackageInstallObserver;-><init>(Lcom/android/commands/pm/Pm;)V

    .line 932
    .local v15, obs:Lcom/android/commands/pm/Pm$PackageInstallObserver;
    :try_start_1
    new-instance v9, Landroid/content/pm/VerificationParams;

    const/4 v13, -0x1

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Landroid/content/pm/VerificationParams;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ILandroid/content/pm/ManifestDigest;)V

    .line 935
    .local v9, verificationParams:Landroid/content/pm/VerificationParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    move-object/from16 v14, v21

    move-object/from16 v18, v9

    move-object/from16 v19, v1

    invoke-interface/range {v13 .. v19}, Landroid/content/pm/IPackageManager;->installPackageWithVerificationAndEncryption(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V

    .line 938
    monitor-enter v15
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 939
    :goto_7
    :try_start_2
    iget-boolean v3, v15, Lcom/android/commands/pm/Pm$PackageInstallObserver;->finished:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_1e

    .line 941
    :try_start_3
    invoke-virtual {v15}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    .line 942
    :catch_0
    move-exception v3

    goto :goto_7

    .line 881
    .end local v1           #encryptionParams:Landroid/content/pm/ContainerEncryptionParams;
    .end local v9           #verificationParams:Landroid/content/pm/VerificationParams;
    .end local v10           #verificationURI:Landroid/net/Uri;
    .end local v11           #originatingURI:Landroid/net/Uri;
    .end local v12           #referrerURI:Landroid/net/Uri;
    .end local v15           #obs:Lcom/android/commands/pm/Pm$PackageInstallObserver;
    .end local v20           #apkFilePath:Ljava/lang/String;
    .end local v21           #apkURI:Landroid/net/Uri;
    .end local v29           #verificationFilePath:Ljava/lang/String;
    .restart local v4       #encKey:Ljavax/crypto/SecretKey;
    :cond_18
    :try_start_4
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "RAW"

    move-object/from16 v0, v25

    invoke-direct {v7, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_1

    .restart local v7       #macSecretKey:Ljavax/crypto/SecretKey;
    goto/16 :goto_2

    .line 886
    .end local v4           #encKey:Ljavax/crypto/SecretKey;
    .end local v7           #macSecretKey:Ljavax/crypto/SecretKey;
    :catch_1
    move-exception v22

    .line 887
    .local v22, e:Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual/range {v22 .. v22}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto/16 :goto_1

    .line 891
    .end local v22           #e:Ljava/security/InvalidAlgorithmParameterException;
    :cond_19
    const/4 v1, 0x0

    .restart local v1       #encryptionParams:Landroid/content/pm/ContainerEncryptionParams;
    goto/16 :goto_3

    .line 902
    :cond_1a
    const/4 v11, 0x0

    .restart local v11       #originatingURI:Landroid/net/Uri;
    goto/16 :goto_4

    .line 908
    :cond_1b
    const/4 v12, 0x0

    .restart local v12       #referrerURI:Landroid/net/Uri;
    goto/16 :goto_5

    .line 917
    .restart local v20       #apkFilePath:Ljava/lang/String;
    :cond_1c
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: no package specified"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 927
    .restart local v21       #apkURI:Landroid/net/Uri;
    .restart local v29       #verificationFilePath:Ljava/lang/String;
    :cond_1d
    const/4 v10, 0x0

    .restart local v10       #verificationURI:Landroid/net/Uri;
    goto :goto_6

    .line 945
    .restart local v9       #verificationParams:Landroid/content/pm/VerificationParams;
    .restart local v15       #obs:Lcom/android/commands/pm/Pm$PackageInstallObserver;
    :cond_1e
    :try_start_5
    iget v3, v15, Lcom/android/commands/pm/Pm$PackageInstallObserver;->result:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1f

    .line 946
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Success"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 952
    :goto_8
    monitor-exit v15

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 953
    .end local v9           #verificationParams:Landroid/content/pm/VerificationParams;
    :catch_2
    move-exception v22

    .line 954
    .local v22, e:Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual/range {v22 .. v22}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 955
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 948
    .end local v22           #e:Landroid/os/RemoteException;
    .restart local v9       #verificationParams:Landroid/content/pm/VerificationParams;
    :cond_1f
    :try_start_7
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failure ["

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v13, v15, Lcom/android/commands/pm/Pm$PackageInstallObserver;->result:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/commands/pm/Pm;->installFailureToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, "]"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_8
.end method

.method private runList()V
    .locals 4

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, type:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 221
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: didn\'t specify type of data to list"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 241
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string v1, "package"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "packages"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/commands/pm/Pm;->runListPackages(Z)V

    goto :goto_0

    .line 226
    :cond_2
    const-string v1, "permission-groups"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 227
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runListPermissionGroups()V

    goto :goto_0

    .line 228
    :cond_3
    const-string v1, "permissions"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 229
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runListPermissions()V

    goto :goto_0

    .line 230
    :cond_4
    const-string v1, "features"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 231
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runListFeatures()V

    goto :goto_0

    .line 232
    :cond_5
    const-string v1, "libraries"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 233
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runListLibraries()V

    goto :goto_0

    .line 234
    :cond_6
    const-string v1, "instrumentation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 235
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runListInstrumentation()V

    goto :goto_0

    .line 236
    :cond_7
    const-string v1, "users"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 237
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm;->runListUsers()V

    goto :goto_0

    .line 239
    :cond_8
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown list type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runListFeatures()V
    .locals 10

    .prologue
    .line 344
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/FeatureInfo;>;"
    iget-object v7, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v7}, Landroid/content/pm/IPackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v6

    .line 346
    .local v6, rawList:[Landroid/content/pm/FeatureInfo;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_0

    .line 347
    aget-object v7, v6, v3

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 352
    :cond_0
    new-instance v7, Lcom/android/commands/pm/Pm$1;

    invoke-direct {v7, p0}, Lcom/android/commands/pm/Pm$1;-><init>(Lcom/android/commands/pm/Pm;)V

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 361
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 362
    .local v0, count:I
    :goto_1
    const/4 v5, 0x0

    .local v5, p:I
    :goto_2
    if-ge v5, v0, :cond_3

    .line 363
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/FeatureInfo;

    .line 364
    .local v2, fi:Landroid/content/pm/FeatureInfo;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "feature:"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 365
    iget-object v7, v2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v7, :cond_2

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v8, v2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 362
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 361
    .end local v0           #count:I
    .end local v2           #fi:Landroid/content/pm/FeatureInfo;
    .end local v5           #p:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 366
    .restart local v0       #count:I
    .restart local v2       #fi:Landroid/content/pm/FeatureInfo;
    .restart local v5       #p:I
    :cond_2
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reqGlEsVersion=0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 369
    .end local v0           #count:I
    .end local v2           #fi:Landroid/content/pm/FeatureInfo;
    .end local v3           #i:I
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/FeatureInfo;>;"
    .end local v5           #p:I
    .end local v6           #rawList:[Landroid/content/pm/FeatureInfo;
    :catch_0
    move-exception v1

    .line 370
    .local v1, e:Landroid/os/RemoteException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 371
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    return-void
.end method

.method private runListInstrumentation()V
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 417
    const/4 v4, 0x0

    .line 418
    .local v4, flags:I
    const/4 v9, 0x0

    .line 419
    .local v9, showPackage:Z
    const/4 v10, 0x0

    .line 423
    .local v10, targetPackage:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v7

    .local v7, opt:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 424
    const-string v11, "-f"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 425
    const/4 v9, 0x1

    goto :goto_0

    .line 426
    :cond_0
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-eq v11, v12, :cond_1

    .line 427
    move-object v10, v7

    goto :goto_0

    .line 429
    :cond_1
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error: Unknown option: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    .end local v7           #opt:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 433
    :catch_0
    move-exception v3

    .line 434
    .local v3, ex:Ljava/lang/RuntimeException;
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 439
    .end local v3           #ex:Ljava/lang/RuntimeException;
    .restart local v7       #opt:Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v11, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v11, v10, v4}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 442
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    new-instance v11, Lcom/android/commands/pm/Pm$3;

    invoke-direct {v11, p0}, Lcom/android/commands/pm/Pm$3;-><init>(Lcom/android/commands/pm/Pm;)V

    invoke-static {v6, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 448
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 449
    .local v1, count:I
    :cond_4
    const/4 v8, 0x0

    .local v8, p:I
    :goto_2
    if-ge v8, v1, :cond_2

    .line 450
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/InstrumentationInfo;

    .line 451
    .local v5, ii:Landroid/content/pm/InstrumentationInfo;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "instrumentation:"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 452
    if-eqz v9, :cond_5

    .line 453
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v12, v5, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 454
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 456
    :cond_5
    new-instance v0, Landroid/content/ComponentName;

    iget-object v11, v5, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v5, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .local v0, cn:Landroid/content/ComponentName;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 458
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, " (target="

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 459
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v12, v5, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 460
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 449
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 462
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #count:I
    .end local v5           #ii:Landroid/content/pm/InstrumentationInfo;
    .end local v6           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    .end local v8           #p:I
    :catch_1
    move-exception v2

    .line 463
    .local v2, e:Landroid/os/RemoteException;
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 464
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v12, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private runListLibraries()V
    .locals 9

    .prologue
    .line 382
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v7}, Landroid/content/pm/IPackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v6

    .line 384
    .local v6, rawList:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v7, v6

    if-ge v2, v7, :cond_0

    .line 385
    aget-object v7, v6, v2

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 390
    :cond_0
    new-instance v7, Lcom/android/commands/pm/Pm$2;

    invoke-direct {v7, p0}, Lcom/android/commands/pm/Pm$2;-><init>(Lcom/android/commands/pm/Pm;)V

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 399
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 400
    .local v0, count:I
    :goto_1
    const/4 v5, 0x0

    .local v5, p:I
    :goto_2
    if-ge v5, v0, :cond_2

    .line 401
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 402
    .local v3, lib:Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "library:"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 403
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 399
    .end local v0           #count:I
    .end local v3           #lib:Ljava/lang/String;
    .end local v5           #p:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 405
    .end local v2           #i:I
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #rawList:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 406
    .local v1, e:Landroid/os/RemoteException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 407
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 409
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    return-void
.end method

.method private runListPackages(Z)V
    .locals 22
    .parameter "showApplicationPackage"

    .prologue
    .line 247
    const/4 v7, 0x0

    .line 248
    .local v7, getFlags:I
    const/4 v10, 0x0

    .local v10, listDisabled:Z
    const/4 v11, 0x0

    .line 249
    .local v11, listEnabled:Z
    const/4 v13, 0x0

    .local v13, listSystem:Z
    const/4 v14, 0x0

    .line 250
    .local v14, listThirdParty:Z
    const/4 v12, 0x0

    .line 251
    .local v12, listInstaller:Z
    const/16 v18, 0x0

    .line 254
    .local v18, userId:I
    :cond_0
    :goto_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    move-result-object v15

    .local v15, opt:Ljava/lang/String;
    if-eqz v15, :cond_b

    .line 255
    const-string v19, "-l"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 257
    const-string v19, "-lf"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 258
    const/16 p1, 0x1

    goto :goto_0

    .line 259
    :cond_1
    const-string v19, "-f"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 260
    const/16 p1, 0x1

    goto :goto_0

    .line 261
    :cond_2
    const-string v19, "-d"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 262
    const/4 v10, 0x1

    goto :goto_0

    .line 263
    :cond_3
    const-string v19, "-e"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 264
    const/4 v11, 0x1

    goto :goto_0

    .line 265
    :cond_4
    const-string v19, "-s"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 266
    const/4 v13, 0x1

    goto :goto_0

    .line 267
    :cond_5
    const-string v19, "-3"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 268
    const/4 v14, 0x1

    goto :goto_0

    .line 269
    :cond_6
    const-string v19, "-i"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 270
    const/4 v12, 0x1

    goto :goto_0

    .line 271
    :cond_7
    const-string v19, "--user"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 272
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    goto :goto_0

    .line 273
    :cond_8
    const-string v19, "-u"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 274
    or-int/lit16 v7, v7, 0x2000

    goto/16 :goto_0

    .line 276
    :cond_9
    sget-object v19, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error: Unknown option: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v15           #opt:Ljava/lang/String;
    :cond_a
    :goto_1
    return-void

    .line 280
    :catch_0
    move-exception v5

    .line 281
    .local v5, ex:Ljava/lang/RuntimeException;
    sget-object v19, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 285
    .end local v5           #ex:Ljava/lang/RuntimeException;
    .restart local v15       #opt:Ljava/lang/String;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v6

    .line 288
    .local v6, filter:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v7, v2}, Lcom/android/commands/pm/Pm;->getInstalledPackages(Landroid/content/pm/IPackageManager;II)Ljava/util/List;

    move-result-object v17

    .line 290
    .local v17, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    .line 291
    .local v3, count:I
    const/16 v16, 0x0

    .local v16, p:I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v3, :cond_a

    .line 292
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 293
    .local v8, info:Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_d

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_d

    .line 291
    :cond_c
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 296
    :cond_d
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_14

    const/4 v9, 0x1

    .line 298
    .local v9, isSystem:Z
    :goto_4
    if-eqz v10, :cond_e

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_c

    :cond_e
    if-eqz v11, :cond_f

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    :cond_f
    if-eqz v13, :cond_10

    if-eqz v9, :cond_c

    :cond_10
    if-eqz v14, :cond_11

    if-nez v9, :cond_c

    .line 302
    :cond_11
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "package:"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 303
    if-eqz p1, :cond_12

    .line 304
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 305
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "="

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 307
    :cond_12
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 308
    if-eqz v12, :cond_13

    .line 309
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "  installer="

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 310
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    move-object/from16 v20, v0

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 312
    :cond_13
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v19 .. v19}, Ljava/io/PrintStream;->println()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 315
    .end local v3           #count:I
    .end local v8           #info:Landroid/content/pm/PackageInfo;
    .end local v9           #isSystem:Z
    .end local v16           #p:I
    .end local v17           #packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_1
    move-exception v4

    .line 316
    .local v4, e:Landroid/os/RemoteException;
    sget-object v19, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 317
    sget-object v19, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v20, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 296
    .end local v4           #e:Landroid/os/RemoteException;
    .restart local v3       #count:I
    .restart local v8       #info:Landroid/content/pm/PackageInfo;
    .restart local v16       #p:I
    .restart local v17       #packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_4
.end method

.method private runListPermissionGroups()V
    .locals 7

    .prologue
    .line 473
    :try_start_0
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v4

    .line 475
    .local v4, pgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 476
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, p:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 477
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionGroupInfo;

    .line 478
    .local v3, pgi:Landroid/content/pm/PermissionGroupInfo;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "permission group:"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 479
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v6, v3, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    .end local v0           #count:I
    .end local v2           #p:I
    .end local v3           #pgi:Landroid/content/pm/PermissionGroupInfo;
    .end local v4           #pgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :catch_0
    move-exception v1

    .line 482
    .local v1, e:Landroid/os/RemoteException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 483
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 485
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private runListPermissions()V
    .locals 14

    .prologue
    .line 505
    const/4 v3, 0x0

    .line 506
    .local v3, labels:Z
    const/4 v2, 0x0

    .line 507
    .local v2, groups:Z
    const/4 v13, 0x0

    .line 508
    .local v13, userOnly:Z
    const/4 v4, 0x0

    .line 509
    .local v4, summary:Z
    const/4 v7, 0x0

    .line 511
    .local v7, dangerousOnly:Z
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    move-result-object v12

    .local v12, opt:Ljava/lang/String;
    if-eqz v12, :cond_6

    .line 512
    const-string v0, "-f"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    const/4 v3, 0x1

    goto :goto_0

    .line 514
    :cond_0
    const-string v0, "-g"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    const/4 v2, 0x1

    goto :goto_0

    .line 516
    :cond_1
    const-string v0, "-s"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 517
    const/4 v2, 0x1

    .line 518
    const/4 v3, 0x1

    .line 519
    const/4 v4, 0x1

    goto :goto_0

    .line 520
    :cond_2
    const-string v0, "-u"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 521
    const/4 v13, 0x1

    goto :goto_0

    .line 522
    :cond_3
    const-string v0, "-d"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 523
    const/4 v7, 0x1

    goto :goto_0

    .line 525
    :cond_4
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 572
    .end local v12           #opt:Ljava/lang/String;
    :cond_5
    :goto_1
    return-void

    .line 530
    .restart local v12       #opt:Ljava/lang/String;
    :cond_6
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    move-result-object v9

    .line 531
    .local v9, grp:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v1, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_8

    .line 533
    iget-object v0, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v11

    .line 535
    .local v11, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_7

    .line 536
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionGroupInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 538
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    .end local v10           #i:I
    .end local v11           #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :goto_3
    if-eqz v7, :cond_9

    .line 544
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Dangerous Permissions:"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 545
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 546
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/commands/pm/Pm;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    .line 549
    if-eqz v13, :cond_5

    .line 550
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Normal Permissions:"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 551
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 552
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/commands/pm/Pm;->doListPermissions(Ljava/util/ArrayList;ZZZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 568
    .end local v1           #groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #grp:Ljava/lang/String;
    .end local v12           #opt:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 569
    .local v8, e:Landroid/os/RemoteException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 570
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 540
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v1       #groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9       #grp:Ljava/lang/String;
    .restart local v12       #opt:Ljava/lang/String;
    :cond_8
    :try_start_1
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 556
    :cond_9
    if-eqz v13, :cond_a

    .line 557
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Dangerous and Normal Permissions:"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 558
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 559
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/commands/pm/Pm;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    goto/16 :goto_1

    .line 563
    :cond_a
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "All Permissions:"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 564
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 565
    const/16 v5, -0x2710

    const/16 v6, 0x2710

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/commands/pm/Pm;->doListPermissions(Ljava/util/ArrayList;ZZZII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private runPath()V
    .locals 3

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, pkg:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 673
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: no package specified"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 677
    :goto_0
    return-void

    .line 676
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/commands/pm/Pm;->displayPackageFilePath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runSetEnabledSetting(I)V
    .locals 9
    .parameter "state"

    .prologue
    .line 1216
    const/4 v5, 0x0

    .line 1217
    .local v5, userId:I
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    move-result-object v2

    .line 1218
    .local v2, option:Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v6, "--user"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1219
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v3

    .line 1220
    .local v3, optionData:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/android/commands/pm/Pm;->isNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1221
    :cond_0
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Error: no USER_ID specified"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1222
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    .line 1257
    .end local v3           #optionData:Ljava/lang/String;
    :goto_0
    return-void

    .line 1225
    .restart local v3       #optionData:Ljava/lang/String;
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1229
    .end local v3           #optionData:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v4

    .line 1230
    .local v4, pkg:Ljava/lang/String;
    if-nez v4, :cond_3

    .line 1231
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Error: no package or component specified"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1232
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    goto :goto_0

    .line 1235
    :cond_3
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1236
    .local v0, cn:Landroid/content/ComponentName;
    if-nez v0, :cond_4

    .line 1238
    :try_start_0
    iget-object v6, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v7, 0x0

    invoke-interface {v6, v4, p1, v7, v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;III)V

    .line 1239
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " new state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v8, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Lcom/android/commands/pm/Pm;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1242
    :catch_0
    move-exception v1

    .line 1243
    .local v1, e:Landroid/os/RemoteException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1244
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1248
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v7, 0x0

    invoke-interface {v6, v0, p1, v7, v5}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    .line 1249
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Component "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " new state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v8, v0, v5}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v8

    invoke-static {v8}, Lcom/android/commands/pm/Pm;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1252
    :catch_1
    move-exception v1

    .line 1253
    .restart local v1       #e:Landroid/os/RemoteException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1254
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private runSetInstallLocation()V
    .locals 5

    .prologue
    .line 728
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, arg:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 730
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: no install location specified."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 740
    .local v2, loc:I
    :try_start_1
    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v2}, Landroid/content/pm/IPackageManager;->setInstallLocation(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 741
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: install location has to be a number."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 743
    :catch_0
    move-exception v1

    .line 744
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 745
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 735
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #loc:I
    :catch_1
    move-exception v1

    .line 736
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: install location has to be a number."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runSetPermissionEnforced()V
    .locals 7

    .prologue
    .line 1290
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v3

    .line 1291
    .local v3, permission:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1292
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Error: no permission specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1293
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    .line 1314
    :goto_0
    return-void

    .line 1296
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v2

    .line 1297
    .local v2, enforcedRaw:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1298
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Error: no enforcement specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1299
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    goto :goto_0

    .line 1302
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1304
    .local v1, enforced:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v3, v1}, Landroid/content/pm/IPackageManager;->setPermissionEnforced(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1305
    :catch_0
    move-exception v0

    .line 1306
    .local v0, e:Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1307
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1308
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1309
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad argument: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1310
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    goto :goto_0

    .line 1311
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1312
    .local v0, e:Ljava/lang/SecurityException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Operation not allowed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runTrimCaches()V
    .locals 12

    .prologue
    .line 1332
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v6

    .line 1333
    .local v6, size:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1334
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "Error: no size specified"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1335
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    .line 1383
    :goto_0
    return-void

    .line 1338
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 1339
    .local v2, len:I
    const-wide/16 v3, 0x1

    .line 1340
    .local v3, multiplier:J
    const/4 v9, 0x1

    if-le v2, v9, :cond_2

    .line 1341
    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1342
    .local v0, c:C
    const/16 v9, 0x4b

    if-eq v0, v9, :cond_1

    const/16 v9, 0x6b

    if-ne v0, v9, :cond_3

    .line 1343
    :cond_1
    const-wide/16 v3, 0x400

    .line 1353
    :goto_1
    const/4 v9, 0x0

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1357
    .end local v0           #c:C
    :cond_2
    :try_start_0
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v9

    mul-long v7, v9, v3

    .line 1363
    .local v7, sizeVal:J
    new-instance v5, Lcom/android/commands/pm/Pm$ClearDataObserver;

    invoke-direct {v5}, Lcom/android/commands/pm/Pm$ClearDataObserver;-><init>()V

    .line 1365
    .local v5, obs:Lcom/android/commands/pm/Pm$ClearDataObserver;
    :try_start_1
    iget-object v9, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v9, v7, v8, v5}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V

    .line 1366
    monitor-enter v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1367
    :goto_2
    :try_start_2
    iget-boolean v9, v5, Lcom/android/commands/pm/Pm$ClearDataObserver;->finished:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v9, :cond_8

    .line 1369
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1370
    :catch_0
    move-exception v9

    goto :goto_2

    .line 1344
    .end local v5           #obs:Lcom/android/commands/pm/Pm$ClearDataObserver;
    .end local v7           #sizeVal:J
    .restart local v0       #c:C
    :cond_3
    const/16 v9, 0x4d

    if-eq v0, v9, :cond_4

    const/16 v9, 0x6d

    if-ne v0, v9, :cond_5

    .line 1345
    :cond_4
    const-wide/32 v3, 0x100000

    goto :goto_1

    .line 1346
    :cond_5
    const/16 v9, 0x47

    if-eq v0, v9, :cond_6

    const/16 v9, 0x67

    if-ne v0, v9, :cond_7

    .line 1347
    :cond_6
    const-wide/32 v3, 0x40000000

    goto :goto_1

    .line 1349
    :cond_7
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid suffix: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1350
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    goto :goto_0

    .line 1358
    .end local v0           #c:C
    :catch_1
    move-exception v1

    .line 1359
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: expected number at: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1360
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    goto/16 :goto_0

    .line 1373
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v5       #obs:Lcom/android/commands/pm/Pm$ClearDataObserver;
    .restart local v7       #sizeVal:J
    :cond_8
    :try_start_4
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v9
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1374
    :catch_2
    move-exception v1

    .line 1375
    .local v1, e:Landroid/os/RemoteException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1376
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1377
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v1

    .line 1378
    .local v1, e:Ljava/lang/IllegalArgumentException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad argument: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1379
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    goto/16 :goto_0

    .line 1380
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    .line 1381
    .local v1, e:Ljava/lang/SecurityException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Operation not allowed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private runUninstall()V
    .locals 9

    .prologue
    .line 1072
    const/4 v5, 0x2

    .line 1075
    .local v5, unInstallFlags:I
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    move-result-object v2

    .local v2, opt:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1076
    const-string v6, "-k"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1077
    or-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1079
    :cond_0
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Unknown option: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1108
    :goto_1
    return-void

    .line 1084
    :cond_1
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v3

    .line 1085
    .local v3, pkg:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 1086
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Error: no package specified"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1087
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    goto :goto_1

    .line 1093
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-interface {v6, v3, v7, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1094
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_3

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v7, 0x4000

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    .line 1095
    and-int/lit8 v5, v5, -0x3

    .line 1102
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :cond_3
    :goto_2
    invoke-direct {p0, v3, v5}, Lcom/android/commands/pm/Pm;->deletePackage(Ljava/lang/String;I)Z

    move-result v4

    .line 1103
    .local v4, result:Z
    if-eqz v4, :cond_4

    .line 1104
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Success"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1097
    .end local v4           #result:Z
    :catch_0
    move-exception v1

    .line 1098
    .local v1, e:Landroid/os/RemoteException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1099
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1106
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v4       #result:Z
    :cond_4
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Failure"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static showUsage()V
    .locals 2

    .prologue
    .line 1467
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: pm list packages [-f] [-d] [-e] [-s] [-3] [-i] [-u] [--user USER_ID] [FILTER]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1468
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm list permission-groups"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1469
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm list permissions [-g] [-f] [-d] [-u] [GROUP]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1470
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm list instrumentation [-f] [TARGET-PACKAGE]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1471
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm list features"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1472
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm list libraries"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1473
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm list users"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1474
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm path PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1475
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm install [-l] [-r] [-t] [-i INSTALLER_PACKAGE_NAME] [-s] [-f]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1476
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "                  [--algo <algorithm name> --key <key-in-hex> --iv <IV-in-hex>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1477
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "                  [--originating-uri <URI>] [--referrer <URI>] PATH"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1478
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm uninstall [-k] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1479
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm clear [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1480
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm enable [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1481
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm disable [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1482
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm disable-user [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1483
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm grant PACKAGE PERMISSION"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1484
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm revoke PACKAGE PERMISSION"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1485
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm set-install-location [0/auto] [1/internal] [2/external]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1486
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm get-install-location"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1487
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm set-permission-enforced PERMISSION [true|false]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1488
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm trim-caches DESIRED_FREE_SPACE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1489
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm create-user USER_NAME"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1490
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm remove-user USER_ID"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1491
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm get-max-users"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1492
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1493
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm list packages: prints all packages, optionally only"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1494
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  those whose package name contains the text in FILTER.  Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1495
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -f: see their associated file."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1496
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -d: filter to only show disbled packages."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1497
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -e: filter to only show enabled packages."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1498
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -s: filter to only show system packages."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1499
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -3: filter to only show third party packages."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1500
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -i: see the installer for the packages."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1501
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -u: also include uninstalled packages."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1502
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1503
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm list permission-groups: prints all known permission groups."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1504
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1505
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm list permissions: prints all known permissions, optionally only"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1506
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  those in GROUP.  Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1507
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -g: organize by group."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1508
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -f: print all information."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1509
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -s: short summary."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1510
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -d: only list dangerous permissions."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1511
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -u: list only the permissions users will see."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1512
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1513
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm list instrumentation: use to list all test packages; optionally"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1514
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  supply <TARGET-PACKAGE> to list the test packages for a particular"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1515
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  application.  Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1516
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -f: list the .apk file for the test package."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1517
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1518
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm list features: prints all features of the system."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1519
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1520
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm list users: prints all users on the system."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1521
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1522
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm path: print the path to the .apk of the given PACKAGE."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1523
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1524
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm install: installs a package to the system.  Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1525
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -l: install the package with FORWARD_LOCK."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1526
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -r: reinstall an exisiting app, keeping its data."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1527
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -t: allow test .apks to be installed."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1528
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -i: specify the installer package name."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1529
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -s: install package on sdcard."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1530
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -f: install package on internal flash."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1531
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -d: allow version code downgrade."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1532
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1533
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm uninstall: removes a package from the system. Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1534
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -k: keep the data and cache directories around after package removal."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1535
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1536
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm clear: deletes all data associated with a package."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1537
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1538
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm enable, disable, disable-user: these commands change the enabled state"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1539
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  of a given package or component (written as \"package/class\")."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1540
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1541
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm grant, revoke: these commands either grant or revoke permissions"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1542
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  to applications.  Only optional permissions the application has"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1543
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  declared can be granted or revoked."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1544
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1545
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm get-install-location: returns the current install location."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1546
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    0 [auto]: Let system decide the best location"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1547
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    1 [internal]: Install on internal device storage"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1548
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    2 [external]: Install on external media"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1549
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1550
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm set-install-location: changes the default install location."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1551
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  NOTE: this is only intended for debugging; using this can cause"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1552
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  applications to break and other undersireable behavior."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1553
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    0 [auto]: Let system decide the best location"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1554
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    1 [internal]: Install on internal device storage"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1555
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    2 [external]: Install on external media"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1556
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1557
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm trim-caches: trim cache files to reach the given free space."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1558
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1559
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm create-user: create a new user with the given USER_NAME,"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1560
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  printing the new user identifier of the user."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1561
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1562
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm remove-user: remove the user with the given USER_IDENTIFIER,"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1563
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  deleting all data associated with that user"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1564
    return-void
.end method


# virtual methods
.method public run([Ljava/lang/String;)V
    .locals 6
    .parameter "args"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, validCommand:Z
    array-length v2, p1

    if-ge v2, v3, :cond_1

    .line 83
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string v2, "user"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/pm/Pm;->mUm:Landroid/os/IUserManager;

    .line 88
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    .line 89
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    if-nez v2, :cond_2

    .line 90
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_2
    iput-object p1, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    .line 95
    aget-object v0, p1, v4

    .line 96
    .local v0, op:Ljava/lang/String;
    iput v3, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    .line 98
    const-string v2, "list"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runList()V

    goto :goto_0

    .line 103
    :cond_3
    const-string v2, "path"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 104
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runPath()V

    goto :goto_0

    .line 108
    :cond_4
    const-string v2, "install"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 109
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runInstall()V

    goto :goto_0

    .line 113
    :cond_5
    const-string v2, "uninstall"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 114
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runUninstall()V

    goto :goto_0

    .line 118
    :cond_6
    const-string v2, "clear"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 119
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runClear()V

    goto :goto_0

    .line 123
    :cond_7
    const-string v2, "enable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 124
    invoke-direct {p0, v3}, Lcom/android/commands/pm/Pm;->runSetEnabledSetting(I)V

    goto :goto_0

    .line 128
    :cond_8
    const-string v2, "disable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 129
    invoke-direct {p0, v5}, Lcom/android/commands/pm/Pm;->runSetEnabledSetting(I)V

    goto :goto_0

    .line 133
    :cond_9
    const-string v2, "disable-user"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 134
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/commands/pm/Pm;->runSetEnabledSetting(I)V

    goto/16 :goto_0

    .line 138
    :cond_a
    const-string v2, "grant"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 139
    invoke-direct {p0, v3}, Lcom/android/commands/pm/Pm;->runGrantRevokePermission(Z)V

    goto/16 :goto_0

    .line 143
    :cond_b
    const-string v2, "revoke"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 144
    invoke-direct {p0, v4}, Lcom/android/commands/pm/Pm;->runGrantRevokePermission(Z)V

    goto/16 :goto_0

    .line 148
    :cond_c
    const-string v2, "set-permission-enforced"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 149
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runSetPermissionEnforced()V

    goto/16 :goto_0

    .line 153
    :cond_d
    const-string v2, "set-install-location"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 154
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runSetInstallLocation()V

    goto/16 :goto_0

    .line 158
    :cond_e
    const-string v2, "get-install-location"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 159
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runGetInstallLocation()V

    goto/16 :goto_0

    .line 163
    :cond_f
    const-string v2, "trim-caches"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 164
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runTrimCaches()V

    goto/16 :goto_0

    .line 168
    :cond_10
    const-string v2, "create-user"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 169
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm;->runCreateUser()V

    goto/16 :goto_0

    .line 173
    :cond_11
    const-string v2, "remove-user"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 174
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm;->runRemoveUser()V

    goto/16 :goto_0

    .line 178
    :cond_12
    const-string v2, "get-max-users"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 179
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm;->runGetMaxUsers()V

    goto/16 :goto_0

    .line 184
    :cond_13
    :try_start_0
    array-length v2, p1

    if-ne v2, v3, :cond_19

    .line 185
    const/4 v2, 0x0

    aget-object v2, p1, v2

    const-string v3, "-l"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 186
    const/4 v1, 0x1

    .line 187
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/commands/pm/Pm;->runListPackages(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_14
    :goto_1
    if-nez v1, :cond_0

    .line 200
    if-eqz v0, :cond_15

    .line 201
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown command \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    :cond_15
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    goto/16 :goto_0

    .line 188
    :cond_16
    const/4 v2, 0x0

    :try_start_1
    aget-object v2, p1, v2

    const-string v3, "-lf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 189
    const/4 v1, 0x1

    .line 190
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/commands/pm/Pm;->runListPackages(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 199
    :catchall_0
    move-exception v2

    if-nez v1, :cond_18

    .line 200
    if-eqz v0, :cond_17

    .line 201
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: unknown command \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    :cond_17
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    :cond_18
    throw v2

    .line 192
    :cond_19
    :try_start_2
    array-length v2, p1

    if-ne v2, v5, :cond_14

    .line 193
    const/4 v2, 0x0

    aget-object v2, p1, v2

    const-string v3, "-p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 194
    const/4 v1, 0x1

    .line 195
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-direct {p0, v2}, Lcom/android/commands/pm/Pm;->displayPackageFilePath(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public runCreateUser()V
    .locals 7

    .prologue
    .line 992
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, arg:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 994
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Error: no user name specified."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1010
    :goto_0
    return-void

    .line 997
    :cond_0
    move-object v3, v0

    .line 999
    .local v3, name:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/commands/pm/Pm;->mUm:Landroid/os/IUserManager;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/os/IUserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1000
    .local v2, info:Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_1

    .line 1001
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Success: created user id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1005
    .end local v2           #info:Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v1

    .line 1006
    .local v1, e:Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1007
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1003
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #info:Landroid/content/pm/UserInfo;
    :cond_1
    :try_start_1
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Error: couldn\'t create User."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public runGetMaxUsers()V
    .locals 3

    .prologue
    .line 1055
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum supported users: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1056
    return-void
.end method

.method public runListUsers()V
    .locals 6

    .prologue
    .line 1039
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mUm:Landroid/os/IUserManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 1040
    .local v2, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v2, :cond_1

    .line 1041
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: couldn\'t get users"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1052
    .end local v2           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    :goto_0
    return-void

    .line 1043
    .restart local v2       #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Users:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1044
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1045
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1048
    .end local v1           #i:I
    .end local v2           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v0

    .line 1049
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1050
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public runRemoveUser()V
    .locals 6

    .prologue
    .line 1014
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 1015
    .local v0, arg:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1016
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: no user id specified."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1035
    :goto_0
    return-void

    .line 1020
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1026
    .local v2, userId:I
    :try_start_1
    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mUm:Landroid/os/IUserManager;

    invoke-interface {v3, v2}, Landroid/os/IUserManager;->removeUser(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1027
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Success: removed user"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1031
    :catch_0
    move-exception v1

    .line 1032
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1033
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1021
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #userId:I
    :catch_1
    move-exception v1

    .line 1022
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: user id \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is not a number."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1029
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #userId:I
    :cond_1
    :try_start_2
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: couldn\'t remove user id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
