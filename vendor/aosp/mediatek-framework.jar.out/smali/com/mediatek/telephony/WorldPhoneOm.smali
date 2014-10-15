.class public Lcom/mediatek/telephony/WorldPhoneOm;
.super Landroid/os/Handler;
.source "WorldPhoneOm.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IWorldPhone;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/telephony/WorldPhoneOm$NetworkCompare;
    }
.end annotation


# static fields
.field private static final EVENT_GET_PLMN_PREFER_LIST_1:I = 0x3e8

.field private static final EVENT_GET_PLMN_PREFER_LIST_2:I = 0x3e9

.field private static final MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

.field private static final MCCMNC_TABLE_TYPE3:[Ljava/lang/String;

.field private static final MCC_TABLE_DOMESTIC:[Ljava/lang/String;

.field private static m3gSimSlot:I

.field private static mCM:[Lcom/android/internal/telephony/CommandsInterface;

.field private static mContext:Landroid/content/Context;

.field private static mDenyReason:I

.field private static mFirstSelect:[Z

.field private static mGsmPlmnStrings:[Ljava/lang/String;

.field private static mIccRecordsInstance:[Lcom/android/internal/telephony/IccRecords;

.field private static mImsi:[Ljava/lang/String;

.field private static mLock:Ljava/lang/Object;

.field private static mModemSwitchHandler:Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

.field private static mOperatorSpec:Ljava/lang/String;

.field private static mPhone:[Lcom/android/internal/telephony/Phone;

.field private static mPlmnSs:Ljava/lang/String;

.field private static mRegState:I

.field private static mRegion:I

.field private static mRilRadioTechnology:I

.field private static mState:I

.field private static mSuspendId:I

.field private static mSuspendWaitImsi:[Z

.field private static mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

.field private static mUserType:I

.field private static mWaitForDesignateService:Z

.field private static sAllowSwitchModem:Z

.field private static sNeedGetPlmnPreferList:[Z

.field private static sNeedQueryModemType:Z


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mLock:Ljava/lang/Object;

    .line 108
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "46000"

    aput-object v1, v0, v3

    const-string v1, "46002"

    aput-object v1, v0, v4

    const-string v1, "46007"

    aput-object v1, v0, v2

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

    .line 111
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "46001"

    aput-object v1, v0, v3

    const-string v1, "46006"

    aput-object v1, v0, v4

    const-string v1, "45407"

    aput-object v1, v0, v2

    const-string v1, "46003"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "46005"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "45502"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCCMNC_TABLE_TYPE3:[Ljava/lang/String;

    .line 114
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "460"

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "op"
    .parameter "context"
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 165
    invoke-direct {p0, p2}, Lcom/mediatek/telephony/WorldPhoneOm;-><init>(Landroid/content/Context;)V

    .line 166
    const-string v0, "Single Card Project"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 167
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mPhone:[Lcom/android/internal/telephony/Phone;

    aput-object p3, v0, v2

    .line 168
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    check-cast p3, Lcom/android/internal/telephony/PhoneBase;

    .end local p3
    iget-object v1, p3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v1, v0, v2

    .line 169
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v2

    invoke-interface {v0, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 170
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v2

    const/16 v1, 0xa

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnGSMSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 171
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v2

    const/16 v1, 0x1e

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 172
    new-instance v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mModemSwitchHandler:Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

    .line 173
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;[Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "op"
    .parameter "context"
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    .line 152
    invoke-direct {p0, p2}, Lcom/mediatek/telephony/WorldPhoneOm;-><init>(Landroid/content/Context;)V

    .line 153
    const-string v1, "Gemini Project"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 155
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, p3, v0

    aput-object v2, v1, v0

    .line 156
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, p3, v0

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v1, v2, v0

    .line 157
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 158
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0xa

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnGSMSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 159
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x1e

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mModemSwitchHandler:Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 118
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 486
    new-instance v1, Lcom/mediatek/telephony/WorldPhoneOm$1;

    invoke-direct {v1, p0}, Lcom/mediatek/telephony/WorldPhoneOm$1;-><init>(Lcom/mediatek/telephony/WorldPhoneOm;)V

    iput-object v1, p0, Lcom/mediatek/telephony/WorldPhoneOm;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    const-string v1, "Constructor invoked"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 120
    sput-object p1, Lcom/mediatek/telephony/WorldPhoneOm;->mContext:Landroid/content/Context;

    .line 121
    sput-boolean v3, Lcom/mediatek/telephony/WorldPhoneOm;->sNeedQueryModemType:Z

    .line 122
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    .line 123
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/Phone;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 124
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/uicc/UiccController;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    .line 125
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/IccRecords;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mIccRecordsInstance:[Lcom/android/internal/telephony/IccRecords;

    .line 126
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mImsi:[Ljava/lang/String;

    .line 127
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Z

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->sNeedGetPlmnPreferList:[Z

    .line 128
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Z

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendWaitImsi:[Z

    .line 129
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Z

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mFirstSelect:[Z

    .line 130
    const-string v1, "ro.operator.optr"

    const-string v2, "OM"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mOperatorSpec:Ljava/lang/String;

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operator Spec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->resetAllProperties()V

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "3G Switch Supported"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 138
    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/telephony/WorldPhoneOm;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "world_phone_auto_select_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 144
    const-string v1, "Auto select disable"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 145
    const/16 v1, -0x62

    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    const-string v1, "Auto select enable"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-static {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()[Lcom/android/internal/telephony/uicc/UiccController;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    return-object v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput-boolean p0, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    return p0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/telephony/WorldPhoneOm;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    return-void
.end method

.method static synthetic access$1300()[Z
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendWaitImsi:[Z

    return-object v0
.end method

.method static synthetic access$1400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendId:I

    return v0
.end method

.method static synthetic access$1600(Lcom/mediatek/telephony/WorldPhoneOm;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOm;->resumeCampingProcedure(I)V

    return-void
.end method

.method static synthetic access$1702(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    return p0
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/mediatek/telephony/WorldPhoneOm;->sAllowSwitchModem:Z

    return v0
.end method

.method static synthetic access$1802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput-boolean p0, Lcom/mediatek/telephony/WorldPhoneOm;->sAllowSwitchModem:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/mediatek/telephony/WorldPhoneOm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->handle3gSwitched()V

    return-void
.end method

.method static synthetic access$200()[Lcom/android/internal/telephony/IccRecords;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mIccRecordsInstance:[Lcom/android/internal/telephony/IccRecords;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mPlmnSs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput-object p0, Lcom/mediatek/telephony/WorldPhoneOm;->mPlmnSs:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mRilRadioTechnology:I

    return v0
.end method

.method static synthetic access$2102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->mRilRadioTechnology:I

    return p0
.end method

.method static synthetic access$2200()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mRegState:I

    return v0
.end method

.method static synthetic access$2202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->mRegState:I

    return p0
.end method

.method static synthetic access$2300()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mState:I

    return v0
.end method

.method static synthetic access$2302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->mState:I

    return p0
.end method

.method static synthetic access$2400(Lcom/mediatek/telephony/WorldPhoneOm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->handleNoService()V

    return-void
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mImsi:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()[Z
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sNeedGetPlmnPreferList:[Z

    return-object v0
.end method

.method static synthetic access$500()[Lcom/android/internal/telephony/CommandsInterface;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    return p0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    return p0
.end method

.method static synthetic access$800(Lcom/mediatek/telephony/WorldPhoneOm;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900()[Z
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mFirstSelect:[Z

    return-object v0
.end method

.method private get3gCapabilitySim()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 690
    const-string v2, "gsm.baseband.capability"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 691
    .local v0, capability:I
    const-string v2, "gsm.baseband.capability2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 692
    .local v1, capability2:I
    if-gt v0, v3, :cond_0

    if-le v1, v3, :cond_1

    .line 693
    :cond_0
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->get3GCapabilitySIM()I

    move-result v2

    .line 696
    :goto_0
    return v2

    .line 695
    :cond_1
    const-string v2, "3G turn off"

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 696
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getRegion(Ljava/lang/String;)I
    .locals 7
    .parameter "srcMccOrPlmn"

    .prologue
    const/4 v5, 0x0

    .line 783
    if-nez p1, :cond_0

    .line 784
    const-string v6, "[getRegion] null source"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 795
    :goto_0
    return v5

    .line 787
    :cond_0
    const/4 v6, 0x3

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 788
    .local v1, currentMcc:Ljava/lang/String;
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 789
    .local v4, mcc:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 790
    const-string v5, "[getRegion] REGION_DOMESTIC"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 791
    const/4 v5, 0x1

    goto :goto_0

    .line 788
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 794
    .end local v4           #mcc:Ljava/lang/String;
    :cond_2
    const-string v5, "[getRegion] REGION_FOREIGN"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 795
    const/4 v5, 0x2

    goto :goto_0
.end method

.method private getUserType(Ljava/lang/String;)I
    .locals 6
    .parameter "simImsi"

    .prologue
    const/4 v4, 0x0

    .line 759
    if-eqz p1, :cond_4

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 760
    const/4 v5, 0x5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 761
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getUserType] simPlmn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 762
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 763
    .local v3, mccmnc:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 764
    const-string v4, "[getUserType] Type1 user"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 765
    const/4 v4, 0x1

    .line 778
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #mccmnc:Ljava/lang/String;
    :goto_1
    return v4

    .line 762
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #mccmnc:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 768
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCCMNC_TABLE_TYPE3:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 769
    .restart local v3       #mccmnc:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 770
    const-string v4, "[getUserType] Type3 user"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 771
    const/4 v4, 0x3

    goto :goto_1

    .line 768
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 774
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_3
    const-string v4, "[getUserType] Type2 user"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 775
    const/4 v4, 0x2

    goto :goto_1

    .line 777
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_4
    const-string v5, "[getUserType] null simImsi"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handle3gSwitched()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 592
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 593
    const-string v0, "3G capability turned off"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 594
    sput v2, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    const/16 v1, -0x62

    if-ne v0, v1, :cond_2

    .line 596
    const-string v0, "Auto Network Selection Disabled"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 598
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3G capability in slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 599
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mImsi:[Ljava/lang/String;

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 601
    const-string v0, "3G slot IMSI not ready"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 602
    sput v2, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    goto :goto_0

    .line 605
    :cond_3
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mImsi:[Ljava/lang/String;

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    .line 606
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-ne v0, v3, :cond_5

    .line 607
    sput-boolean v3, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    .line 613
    :goto_1
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 614
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    .line 616
    :cond_4
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    if-eqz v0, :cond_0

    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-eqz v0, :cond_0

    .line 617
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mFirstSelect:[Z

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    aput-boolean v2, v0, v1

    .line 618
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-ne v0, v4, :cond_8

    .line 619
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    if-ne v0, v4, :cond_0

    .line 620
    invoke-direct {p0, v5}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    goto :goto_0

    .line 608
    :cond_5
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-eq v0, v4, :cond_6

    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-ne v0, v5, :cond_7

    .line 609
    :cond_6
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    goto :goto_1

    .line 611
    :cond_7
    const-string v0, "Unknown user type"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 622
    :cond_8
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-ne v0, v3, :cond_9

    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    if-ne v0, v3, :cond_9

    .line 623
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    goto/16 :goto_0

    .line 625
    :cond_9
    invoke-direct {p0, v5}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    goto/16 :goto_0
.end method

.method private handleGetPlmnPreferList(Landroid/os/AsyncResult;I)V
    .locals 5
    .parameter "ar"
    .parameter "slotId"

    .prologue
    .line 425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 426
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 427
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 428
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    new-instance v3, Lcom/mediatek/telephony/WorldPhoneOm$NetworkCompare;

    invoke-direct {v3, p0}, Lcom/mediatek/telephony/WorldPhoneOm$NetworkCompare;-><init>(Lcom/mediatek/telephony/WorldPhoneOm;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 429
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .line 430
    .local v2, network:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getOperatorAlphaName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 432
    .end local v2           #network:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    :cond_0
    const-string v3, "<PLMN Prefer List End>"

    invoke-static {v3}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 436
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    :goto_1
    return-void

    .line 434
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleNoService()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x3

    .line 286
    const-string v0, "[handleNoService]+ Can not find service"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 288
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneUtil;->regionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 289
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-ne v0, v3, :cond_1

    .line 290
    sput-boolean v3, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    .line 291
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 292
    const-string v0, "TDD modem -> switch to FDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 293
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    .line 308
    :goto_0
    const-string v0, "[handleNoService]-"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 309
    return-void

    .line 295
    :cond_0
    const-string v0, "FDD modem, expecting Type1 service"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_1
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-ne v0, v2, :cond_4

    .line 298
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    .line 299
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 300
    const-string v0, "TDD modem -> switch to FDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 301
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    goto :goto_0

    .line 303
    :cond_3
    const-string v0, "FDD modem -> keep trying in FDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_4
    const-string v0, "Unknow user type"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handlePlmnChange(Landroid/os/AsyncResult;I)V
    .locals 5
    .parameter "ar"
    .parameter "slotId"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 440
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 441
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    .line 442
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGsmPlmnStrings["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    :cond_0
    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    if-ne v1, p2, :cond_1

    sget-boolean v1, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    if-eq v1, v4, :cond_1

    .line 447
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOm;->searchForDesignateService(Ljava/lang/String;)V

    .line 451
    :cond_1
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    .line 452
    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    const/16 v2, -0x62

    if-eq v1, v2, :cond_2

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    if-ne v1, v4, :cond_2

    .line 454
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    .line 459
    .end local v0           #i:I
    :cond_2
    :goto_1
    return-void

    .line 457
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncResult is wrong "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handlePlmnSuspend(Landroid/os/AsyncResult;I)V
    .locals 3
    .parameter "ar"
    .parameter "slotId"

    .prologue
    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 463
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 464
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendId:I

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suspending with Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 466
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    if-ne v0, p2, :cond_1

    .line 467
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-eqz v0, :cond_0

    .line 468
    invoke-direct {p0, p2}, Lcom/mediatek/telephony/WorldPhoneOm;->resumeCampingProcedure(I)V

    .line 484
    :goto_0
    return-void

    .line 470
    :cond_0
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendWaitImsi:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 471
    const-string v0, "User type unknown, wait for IMSI"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :cond_1
    const-string v0, "Not 3G slot, camp on OK"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 475
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 476
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_0

    .line 478
    :cond_2
    const-string v0, "Radio off or unavailable, can not send EMSR"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 482
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult is wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleQueryModemType(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 414
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    aget v0, v1, v3

    .line 416
    .local v0, modemType:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modemType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 417
    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->setModem(I)V

    .line 418
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v3

    const/16 v2, 0x3c

    invoke-virtual {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    .line 422
    .end local v0           #modemType:I
    :goto_0
    return-void

    .line 420
    :cond_0
    const-string v1, "Query modem type fail"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleRadioOn(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 402
    sget-boolean v0, Lcom/mediatek/telephony/WorldPhoneOm;->sNeedQueryModemType:Z

    if-eqz v0, :cond_0

    .line 403
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOm;->sNeedQueryModemType:Z

    .line 404
    const-string v0, "Query modem type"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 405
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v2

    const/16 v1, 0x46

    invoke-virtual {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOm;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryModemType(Landroid/os/Message;)V

    .line 407
    :cond_0
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    const/16 v1, -0x63

    if-ne v0, v1, :cond_1

    .line 408
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->get3gCapabilitySim()I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3G slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 411
    :cond_1
    return-void
.end method

.method private handleSwitchModem(I)V
    .locals 5
    .parameter "toModem"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 645
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 646
    if-ne p1, v4, :cond_0

    .line 647
    const-string v1, "Already in TDD modem"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 668
    :goto_0
    return-void

    .line 649
    :cond_0
    const-string v1, "Already in FDD modem"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 653
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_3

    .line 654
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_2

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not idle, modem switch not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 653
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 659
    :cond_3
    if-ne p1, v3, :cond_4

    .line 660
    const-string v1, "Switching to FDD modem"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 661
    invoke-static {v3}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->switchModem(I)V

    .line 666
    :goto_2
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->resetNetworkProperties()V

    goto :goto_0

    .line 663
    :cond_4
    const-string v1, "Switching to TDD modem"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 664
    invoke-static {v4}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->switchModem(I)V

    goto :goto_2
.end method

.method private isAllowCampOn(Ljava/lang/String;I)Z
    .locals 12
    .parameter "plmnString"
    .parameter "slotId"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 176
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isAllowCampOn]+ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Slot"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is 3G SIM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 178
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 179
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    .line 180
    sget v7, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-ne v7, v5, :cond_3

    .line 181
    sput-boolean v5, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    .line 182
    sget v7, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    if-ne v7, v5, :cond_1

    .line 183
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v7

    if-ne v7, v10, :cond_0

    .line 184
    sput-boolean v6, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    .line 185
    sput v6, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 186
    const-string v6, "In TDD modem -> stay in TDD modem"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 187
    const-string v6, "[isAllowCampOn]- Camp on OK"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 282
    :goto_0
    return v5

    .line 190
    :cond_0
    sput v11, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 191
    const-string v5, "In FDD modem -> switch to TDD modem"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 192
    const-string v5, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 193
    goto :goto_0

    .line 195
    :cond_1
    sget v7, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    if-ne v7, v9, :cond_f

    .line 196
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v7

    if-ne v7, v10, :cond_2

    .line 197
    sput v9, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 198
    const-string v5, "In TDD modem -> switch to FDD modem"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 199
    const-string v5, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 200
    goto :goto_0

    .line 202
    :cond_2
    sput v6, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 203
    const-string v6, "In FDD modem -> stay in FDD modem"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 204
    const-string v6, "[isAllowCampOn]- Camp on OK"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_3
    sget v7, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-ne v7, v9, :cond_c

    .line 209
    sput-boolean v6, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    .line 210
    sget v7, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    if-ne v7, v9, :cond_5

    .line 211
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v7

    if-ne v7, v10, :cond_4

    .line 212
    sput v9, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 213
    const-string v5, "In TDD modem -> switch to FDD modem"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 214
    const-string v5, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 215
    goto :goto_0

    .line 217
    :cond_4
    sput v6, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 218
    const-string v6, "In FDD modem -> stay in FDD modem"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 219
    const-string v6, "[isAllowCampOn]- Camp on OK"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_5
    sget-boolean v7, Lcom/mediatek/telephony/WorldPhoneOm;->sAllowSwitchModem:Z

    if-nez v7, :cond_6

    .line 224
    sput v6, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 225
    const-string v6, "Not allow to switch modem"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 226
    const-string v6, "[isAllowCampOn]- Camp on OK"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_6
    const/4 v4, 0x0

    .line 230
    .local v4, nwType:I
    const/4 v7, 0x5

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 231
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .line 232
    .local v3, mccmnc:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 233
    const/4 v4, 0x1

    .line 237
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_7
    if-ne v4, v5, :cond_a

    .line 238
    const-string v7, "In CMCC network"

    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v7

    if-ne v7, v10, :cond_9

    .line 240
    sput v6, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 241
    const-string v6, "In TDD modem -> stay in TDD modem"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 242
    const-string v6, "[isAllowCampOn]- Camp on OK"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 231
    .restart local v3       #mccmnc:Ljava/lang/String;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 245
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_9
    sput v11, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 246
    const-string v5, "In FDD modem -> switch to TDD modem"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 247
    const-string v5, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 248
    goto/16 :goto_0

    .line 251
    :cond_a
    const-string v7, "Not in CMCC network"

    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v7

    if-ne v7, v10, :cond_b

    .line 253
    sput v9, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 254
    const-string v5, "In TDD modem -> switch to FDD modem"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 255
    const-string v5, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 256
    goto/16 :goto_0

    .line 258
    :cond_b
    sput v6, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 259
    const-string v6, "In FDD modem -> stay in FDD modem"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 260
    const-string v6, "[isAllowCampOn]- Camp on OK"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #nwType:I
    :cond_c
    sget v7, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-ne v7, v11, :cond_e

    .line 265
    sput-boolean v6, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    .line 266
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v7

    if-ne v7, v10, :cond_d

    .line 267
    sput v9, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 268
    const-string v5, "In TDD modem -> switch to FDD modem"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 269
    const-string v5, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 270
    goto/16 :goto_0

    .line 272
    :cond_d
    sput v6, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 273
    const-string v6, "In FDD modem -> stay in FDD modem"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 274
    const-string v6, "[isAllowCampOn]- Camp on OK"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 278
    :cond_e
    const-string v7, "Unknown user type"

    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 280
    :cond_f
    sput v5, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 281
    const-string v5, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 282
    goto/16 :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 814
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WPOM]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-void
.end method

.method private resetNetworkProperties()V
    .locals 4

    .prologue
    .line 727
    const-string v1, "[resetNetworkProperties]"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 728
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 729
    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    .line 730
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 731
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendWaitImsi:[Z

    const/4 v3, 0x0

    aput-boolean v3, v1, v0

    .line 730
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 733
    :cond_0
    monitor-exit v2

    .line 734
    return-void

    .line 733
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetSimProperties()V
    .locals 4

    .prologue
    .line 737
    const-string v1, "[resetSimProperties]"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 738
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 739
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 740
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mImsi:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v0

    .line 739
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 742
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    .line 744
    const/16 v1, -0x63

    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    .line 748
    monitor-exit v2

    .line 749
    return-void

    .line 748
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private restartSelection(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 753
    const-string v0, "[restartSelection] Restarting from TDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->resetAllProperties()V

    .line 756
    return-void
.end method

.method private resumeCampingProcedure(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v2, 0x3

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resume camping slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSuspendId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 672
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/telephony/WorldPhoneOm;->isAllowCampOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 673
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 674
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    const-string v0, "Radio off or unavailable, can not send EMSR"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 679
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Because: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneUtil;->denyReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 680
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 681
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    goto :goto_0

    .line 682
    :cond_3
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    if-ne v0, v2, :cond_0

    .line 683
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    goto :goto_0
.end method

.method private searchForDesignateService(Ljava/lang/String;)V
    .locals 6
    .parameter "strPlmn"

    .prologue
    .line 313
    const-string v4, "[searchForDesignateService]+ Search for TD srvice"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 314
    if-nez p1, :cond_0

    .line 315
    const-string v4, "[searchForDesignateService]- null source"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 329
    :goto_0
    return-void

    .line 318
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 319
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 320
    .local v3, mccmnc:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUserType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mRegion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " modem:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 323
    const-string v4, "Find TD service"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 324
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    .line 328
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_1
    const-string v4, "[searchForDesignateService]-"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    .restart local v3       #mccmnc:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public disposeWorldPhone()V
    .locals 3

    .prologue
    .line 799
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/telephony/WorldPhoneOm;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 800
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 801
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnPlmnChangeNotification(Landroid/os/Handler;)V

    .line 802
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnGSMSuspended(Landroid/os/Handler;)V

    .line 803
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 800
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 805
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 333
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 334
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 398
    :goto_0
    return-void

    .line 336
    :sswitch_0
    const-string v1, "handleMessage : <EVENT_GSM_PLMN_CHANGED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 337
    invoke-direct {p0, v0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 340
    :sswitch_1
    const-string v1, "handleMessage : <EVENT_GSM_SUSPENDED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 341
    invoke-direct {p0, v0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->handlePlmnSuspend(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 344
    :sswitch_2
    const-string v1, "handleMessage : <EVENT_RADIO_ON>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 345
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->handleRadioOn(I)V

    goto :goto_0

    .line 348
    :sswitch_3
    const-string v1, "handleMessage : <EVENT_GSM_PLMN_CHANGED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 349
    invoke-direct {p0, v0, v3}, Lcom/mediatek/telephony/WorldPhoneOm;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 352
    :sswitch_4
    const-string v1, "handleMessage : <EVENT_GSM_SUSPENDED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 353
    invoke-direct {p0, v0, v3}, Lcom/mediatek/telephony/WorldPhoneOm;->handlePlmnSuspend(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 356
    :sswitch_5
    const-string v1, "handleMessage : <EVENT_RADIO_ON>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 357
    invoke-direct {p0, v3}, Lcom/mediatek/telephony/WorldPhoneOm;->handleRadioOn(I)V

    goto :goto_0

    .line 360
    :sswitch_6
    const-string v1, "handleMessage : <EVENT_QUERY_MODEM_TYPE>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 361
    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->handleQueryModemType(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 364
    :sswitch_7
    const-string v1, "handleMessage : <EVENT_SET_RAT_GSM_ONLY>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 365
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 366
    const-string v1, "Set RAT=2g ok"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set RAT=2g fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :sswitch_8
    const-string v1, "handleMessage : <EVENT_SET_RAT_WCDMA_PREF>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 373
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 374
    const-string v1, "Set RAT=auto ok"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set RAT=auto fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 380
    :sswitch_9
    const-string v1, "handleMessage : <EVENT_STORE_MODEM_TYPE>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 381
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 382
    const-string v1, "Store modem type success"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 384
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Store modem type fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 388
    :sswitch_a
    const-string v1, "handleMessage : <EVENT_GET_PLMN_PREFER_LIST>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 389
    invoke-direct {p0, v0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->handleGetPlmnPreferList(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 392
    :sswitch_b
    const-string v1, "handleMessage : <EVENT_GET_PLMN_PREFER_LIST>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 393
    invoke-direct {p0, v0, v3}, Lcom/mediatek/telephony/WorldPhoneOm;->handleGetPlmnPreferList(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 334
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_3
        0xa -> :sswitch_1
        0xb -> :sswitch_4
        0x1e -> :sswitch_2
        0x1f -> :sswitch_5
        0x28 -> :sswitch_7
        0x32 -> :sswitch_8
        0x3c -> :sswitch_9
        0x46 -> :sswitch_6
        0x3e8 -> :sswitch_a
        0x3e9 -> :sswitch_b
    .end sparse-switch
.end method

.method public resetAllProperties()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 713
    const-string v1, "Reseting all properties"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 714
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    .line 715
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 716
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mFirstSelect:[Z

    aput-boolean v2, v1, v0

    .line 717
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->sNeedGetPlmnPreferList:[Z

    aput-boolean v2, v1, v0

    .line 715
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 719
    :cond_0
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOm;->sAllowSwitchModem:Z

    .line 720
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    .line 721
    sput v2, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 722
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->resetSimProperties()V

    .line 723
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->resetNetworkProperties()V

    .line 724
    return-void
.end method

.method public setNetworkSelectionMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 632
    if-nez p1, :cond_0

    .line 633
    const-string v0, "Network Selection <AUTO>"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 634
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "world_phone_auto_select_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 635
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->get3gCapabilitySim()I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    .line 641
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->handle3gSwitched()V

    .line 642
    return-void

    .line 637
    :cond_0
    const-string v0, "Network Selection <MANUAL>"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 638
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "world_phone_auto_select_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 639
    const/16 v0, -0x62

    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    goto :goto_0
.end method

.method public setRatMode(II)V
    .locals 3
    .parameter "ratMode"
    .parameter "slotId"

    .prologue
    const/4 v2, 0x1

    .line 701
    if-ne p1, v2, :cond_0

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setRatMode] Setting slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RAT=auto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 703
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    const/16 v2, 0x32

    invoke-virtual {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 710
    :goto_0
    return-void

    .line 706
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setRatMode] Setting slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RAT=2G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 707
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOm;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method
