.class public Lcom/mediatek/op/telephony/cat/CatOpAppInterfaceImp;
.super Ljava/lang/Object;
.source "CatOpAppInterfaceImp.java"


# static fields
.field static final STK_TITLE_KEY:Ljava/lang/String; = "gsm.setupmenu.title"

.field static final STK_TITLE_KEY2:Ljava/lang/String; = "gsm.setupmenu.title2"

.field private static mCatService:Lcom/android/internal/telephony/cat/CatService;

.field private static mInstance:Lcom/mediatek/op/telephony/cat/CatOpAppInterfaceImp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    sput-object v0, Lcom/mediatek/op/telephony/cat/CatOpAppInterfaceImp;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 64
    sput-object v0, Lcom/mediatek/op/telephony/cat/CatOpAppInterfaceImp;->mInstance:Lcom/mediatek/op/telephony/cat/CatOpAppInterfaceImp;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0
    .parameter "cat"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sput-object p1, Lcom/mediatek/op/telephony/cat/CatOpAppInterfaceImp;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 68
    sput-object p0, Lcom/mediatek/op/telephony/cat/CatOpAppInterfaceImp;->mInstance:Lcom/mediatek/op/telephony/cat/CatOpAppInterfaceImp;

    .line 69
    return-void
.end method

.method public static getInstance()Lcom/mediatek/op/telephony/cat/CatOpAppInterfaceImp;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/mediatek/op/telephony/cat/CatOpAppInterfaceImp;->mInstance:Lcom/mediatek/op/telephony/cat/CatOpAppInterfaceImp;

    return-object v0
.end method

.method private getMenuTitleFromEf()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, title:Ljava/lang/String;
    const/4 v0, 0x0

    .line 90
    .local v0, ic:Lcom/android/internal/telephony/IccRecords;
    sget-object v2, Lcom/mediatek/op/telephony/cat/CatOpAppInterfaceImp;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v2, :cond_0

    .line 91
    sget-object v2, Lcom/mediatek/op/telephony/cat/CatOpAppInterfaceImp;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatService;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 93
    :cond_0
    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getMenuTitleFromEf()Ljava/lang/String;

    move-result-object v1

    .line 96
    :cond_1
    const-string v5, "[OP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCatService: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v2, Lcom/mediatek/op/telephony/cat/CatOpAppInterfaceImp;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", ic: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Title: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_4

    move-object v2, v1

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-object v1

    :cond_2
    move v2, v4

    .line 96
    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    const-string v2, "title is null"

    goto :goto_2
.end method

.method private isOrangeSupport()Z
    .locals 2

    .prologue
    .line 107
    const-string v1, "ro.operator.optr"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, optr:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "OP03"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "isOrangeSupport is true"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    const/4 v1, 0x1

    .line 113
    :goto_0
    return v1

    .line 112
    :cond_0
    const-string v1, "isOrangeSupport is false"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateAppName(Ljava/lang/String;)V
    .locals 2
    .parameter "appName"

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set menu title in SystemProperties to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    const-string v0, "gsm.setupmenu.title"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method


# virtual methods
.method public updateMenuTitleFromEf(Ljava/lang/String;)V
    .locals 3
    .parameter "appName"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/mediatek/op/telephony/cat/CatOpAppInterfaceImp;->isOrangeSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    move-object v0, p1

    .line 74
    .local v0, newAppName:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 75
    :cond_0
    const-string v1, "appName is invalid valule"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lcom/mediatek/op/telephony/cat/CatOpAppInterfaceImp;->getMenuTitleFromEf()Ljava/lang/String;

    move-result-object v0

    .line 81
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update appName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, v0}, Lcom/mediatek/op/telephony/cat/CatOpAppInterfaceImp;->updateAppName(Ljava/lang/String;)V

    .line 86
    .end local v0           #newAppName:Ljava/lang/String;
    :cond_2
    return-void
.end method
