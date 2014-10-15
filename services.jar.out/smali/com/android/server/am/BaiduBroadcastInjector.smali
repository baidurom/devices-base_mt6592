.class public Lcom/android/server/am/BaiduBroadcastInjector;
.super Ljava/lang/Object;
.source "BaiduBroadcastInjector.java"


# static fields
.field static final SPECIAL_SMS_PACKAGE:[Ljava/lang/String;

.field static final SPECIAL_SMS_PACKAGE_LEN:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.baidu.trafficmonitor"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.baidu.antidisturbance"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE:[Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE_LEN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hookMessageBroadcast(Landroid/content/Context;Lcom/android/server/am/BroadcastRecord;)V
    .locals 14
    .parameter "context"
    .parameter "record"

    .prologue
    const/4 v13, 0x0

    .line 67
    iget-object v10, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, action:Ljava/lang/String;
    const-string v10, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 72
    :cond_0
    sget v10, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE_LEN:I

    new-array v9, v10, [Ljava/util/ArrayList;

    .line 73
    .local v9, specialPackageIndex:[Ljava/util/ArrayList;
    sget v10, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE_LEN:I

    new-array v1, v10, [Z

    .line 74
    .local v1, containsSpecial:[Z
    sget v10, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE_LEN:I

    add-int/lit8 v2, v10, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 75
    aput-boolean v13, v1, v2

    .line 74
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 77
    :cond_1
    iget-object v10, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-nez v10, :cond_3

    .line 126
    .end local v1           #containsSpecial:[Z
    .end local v2           #i:I
    .end local v9           #specialPackageIndex:[Ljava/util/ArrayList;
    :cond_2
    return-void

    .line 80
    .restart local v1       #containsSpecial:[Z
    .restart local v2       #i:I
    .restart local v9       #specialPackageIndex:[Ljava/util/ArrayList;
    :cond_3
    iget-object v10, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    .line 81
    .local v5, len:I
    const/4 v3, -0x1

    .line 82
    .local v3, index:I
    add-int/lit8 v2, v5, -0x1

    :goto_1
    if-ltz v2, :cond_9

    .line 83
    const/4 v3, -0x1

    .line 84
    iget-object v10, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 85
    .local v8, r:Ljava/lang/Object;
    instance-of v10, v8, Lcom/android/server/am/BroadcastFilter;

    if-eqz v10, :cond_7

    move-object v4, v8

    .line 86
    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    .line 87
    .local v4, info:Lcom/android/server/am/BroadcastFilter;
    iget-object v10, v4, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-static {p0, v10}, Lcom/android/server/am/BaiduBroadcastInjector;->isSpecialPackage(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 95
    .end local v4           #info:Lcom/android/server/am/BroadcastFilter;
    :cond_4
    :goto_2
    const/4 v10, -0x1

    if-le v3, v10, :cond_6

    .line 96
    const/4 v10, 0x1

    aput-boolean v10, v1, v3

    .line 97
    iget-object v10, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 98
    aget-object v6, v9, v3

    .line 99
    .local v6, list:Ljava/util/ArrayList;
    if-nez v6, :cond_5

    .line 100
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #list:Ljava/util/ArrayList;
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .restart local v6       #list:Ljava/util/ArrayList;
    aput-object v6, v9, v3

    .line 103
    :cond_5
    aget-object v10, v9, v3

    invoke-virtual {v10, v13, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 82
    .end local v6           #list:Ljava/util/ArrayList;
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 88
    :cond_7
    instance-of v10, v8, Landroid/content/pm/ResolveInfo;

    if-eqz v10, :cond_4

    move-object v4, v8

    .line 89
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 90
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v10, :cond_8

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 92
    .local v7, packageName:Ljava/lang/String;
    :goto_3
    invoke-static {p0, v7}, Lcom/android/server/am/BaiduBroadcastInjector;->isSpecialPackage(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    .line 90
    .end local v7           #packageName:Ljava/lang/String;
    :cond_8
    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    goto :goto_3

    .line 107
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v8           #r:Ljava/lang/Object;
    :cond_9
    const-string v10, "com.baidu.antidisturbance"

    invoke-static {p0, v10}, Lcom/android/server/am/BaiduBroadcastInjector;->isSpecialPackage(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    aget-boolean v10, v1, v10

    if-nez v10, :cond_a

    .line 108
    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.baidu.antidisturbance"

    const-string v12, "com.baidu.antidisturbance.receiver.DisturbReceiver"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v9, v0, v10}, Lcom/android/server/am/BaiduBroadcastInjector;->tryAddSpecial(Landroid/content/Context;[Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 112
    :cond_a
    const-string v10, "com.baidu.trafficmonitor"

    invoke-static {p0, v10}, Lcom/android/server/am/BaiduBroadcastInjector;->isSpecialPackage(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    aget-boolean v10, v1, v10

    if-nez v10, :cond_b

    .line 113
    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.baidu.trafficmonitor"

    const-string v12, "com.baidu.trafficmonitor.receiver.TrafficMonitorReceiver"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v9, v0, v10}, Lcom/android/server/am/BaiduBroadcastInjector;->tryAddSpecial(Landroid/content/Context;[Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 117
    :cond_b
    sget v5, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE_LEN:I

    .line 118
    add-int/lit8 v2, v5, -0x1

    :goto_4
    if-ltz v2, :cond_2

    .line 119
    aget-object v6, v9, v2

    .line 120
    .restart local v6       #list:Ljava/util/ArrayList;
    if-eqz v6, :cond_c

    .line 121
    iget-object v10, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v10, v13, v6}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 122
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 118
    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_4
.end method

.method static isSpecialPackage(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 44
    sget v1, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE_LEN:I

    .line 45
    .local v1, len:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_4

    .line 46
    sget-object v4, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 47
    const-string v4, "com.android.contacts"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "system.mms"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 49
    .local v2, mmsHasPriority:Z
    :cond_0
    if-eqz v2, :cond_2

    .line 59
    .end local v0           #i:I
    .end local v2           #mmsHasPriority:Z
    :cond_1
    :goto_1
    return v0

    .restart local v0       #i:I
    .restart local v2       #mmsHasPriority:Z
    :cond_2
    move v0, v3

    .line 52
    goto :goto_1

    .line 45
    .end local v2           #mmsHasPriority:Z
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    move v0, v3

    .line 59
    goto :goto_1
.end method

.method private static tryAddSpecial(Landroid/content/Context;[Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 10
    .parameter "context"
    .parameter "specialPackageIndex"
    .parameter "action"
    .parameter "component"

    .prologue
    .line 129
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v2, intent:Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 132
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 134
    :cond_0
    const/4 v1, -0x1

    .line 137
    .local v1, index:I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x400

    const/4 v9, 0x0

    invoke-interface {v6, v2, v7, v8, v9}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    .line 141
    .local v4, resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 142
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 143
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/android/server/am/BaiduBroadcastInjector;->isSpecialPackage(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 144
    aget-object v3, p1, v1

    .line 145
    .local v3, list:Ljava/util/ArrayList;
    if-nez v3, :cond_2

    .line 146
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #list:Ljava/util/ArrayList;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .restart local v3       #list:Ljava/util/ArrayList;
    aput-object v3, p1, v1

    .line 149
    :cond_2
    aget-object v6, p1, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #list:Ljava/util/ArrayList;
    .end local v4           #resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v6

    .line 154
    :cond_3
    return-void
.end method

.method public static tryHookMessageBroadcast(Landroid/content/Context;Lcom/android/server/am/BroadcastRecord;)V
    .locals 0
    .parameter "context"
    .parameter "record"

    .prologue
    .line 63
    invoke-static {p0, p1}, Lcom/android/server/am/BaiduBroadcastInjector;->hookMessageBroadcast(Landroid/content/Context;Lcom/android/server/am/BroadcastRecord;)V

    .line 64
    return-void
.end method
