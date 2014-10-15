.class public Lcom/mediatek/telephony/InternationalRoamingController;
.super Landroid/os/Handler;
.source "InternationalRoamingController.java"

# interfaces
.implements Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;,
        Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;
    }
.end annotation


# static fields
.field private static final CURRENT_NETWORK_MODE:Ljava/lang/String; = "ct.internationalcard.network.mode"

.field private static final DEBUG:Z = true

.field private static final EVENT_CDMA_PLMN_CHANGED:I = 0x3

.field private static final EVENT_DUAL_PHONE_AVAILABLE:I = 0x1

.field private static final EVENT_DUAL_PHONE_POWER_ON:I = 0x2

.field private static final EVENT_EMPTY_CDMA_AVOID_NETWORK_LIST:I = 0x8

.field private static final EVENT_GSM_PLMN_CHANGED:I = 0x5

.field private static final EVENT_GSM_SUSPENDED:I = 0x4

.field private static final EVENT_ICC_CHANGED:I = 0xc8

.field private static final EVENT_RADIO_NO_SERVICE:I = 0x7

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x6

.field private static final EVENT_SIM_START_SWITCH:I = 0x64

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = "N/A"

.field private static final INTENT_ACTION_START_SWITCH_PHONE:Ljava/lang/String; = "com.mediatek.intent.action.START_RADIO_TECHNOLOGY"

.field private static final KEY_INTERNATIONAL_CDMA_IMSI:Ljava/lang/String; = "com.mediatek.internationalcard.cdma.imsi"

.field private static final KEY_INTERNATIONAL_GSM_IMSI:Ljava/lang/String; = "com.mediatek.internationalcard.gsm.imsi"

.field private static final KEY_INTERNATIONAL_LAST_NETWORK_MCC:Ljava/lang/String; = "last.network.mcc"

.field private static final KEY_INTERNATIONAL_LAST_PHONE_TYPE:Ljava/lang/String; = "last.phone.type"

.field private static final KEY_INTERNATIONAL_SIM_ICCID:Ljava/lang/String; = "com.mediatek.internationalcard.iccid"

.field private static final KEY_INTERNATIONAL_SIM_TYPE:Ljava/lang/String; = "com.mediatek.internationalcard.type"

.field private static final KEY_TEST_HOME_NETWORK_MCC:Ljava/lang/String; = "test.home.network.mcc"

.field private static final KEY_TEST_SWITCH_PHONE_DELAY:Ljava/lang/String; = "test.switch.phone.delay"

.field private static final LOG_TAG_PHONE:Ljava/lang/String; = "PHONE"

.field private static final OPERATOR_MCC_LENGTH:I = 0x3

.field private static final PREF_INTERNATIONAL_NETWORK_INFO:Ljava/lang/String; = "international_network_info"

.field private static final PREF_INTERNATIONAL_SIM_INFO:Ljava/lang/String; = "mediatek_internationalcard_info"

.field private static final PROP_INTERNATIONAL_CARD_TYPE:Ljava/lang/String; = "gsm.internationalcard.type"

.field private static final RADIO_NO_SERVICE_SCREENOFF_TIMEOUT:I = 0x2bf20

.field private static final RADIO_NO_SERVICE_SCREENON_TIMEOUT:I = 0x4e20

.field private static final SIM_INSERTED_STATUS_NEW:I = 0x2

.field private static final SIM_INSERTED_STATUS_NONE:I = 0x0

.field private static final SIM_INSERTED_STATUS_OLD:I = 0x1

.field private static final SIM_INSERTED_STATUS_UNKNOWN:I = -0x1

.field private static final SPEED_UP_SWITCH_DURATION:I = 0x15f90

.field private static final TAG_PREFIX:Ljava/lang/String; = "[IRC]"


# instance fields
.field private final mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private mCardStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/ICardStrategy;

.field private mCardType:I

.field private final mCardTypeHandler:Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;

.field private mCdmaImsi:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/IDataStrategy;

.field private mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;

.field private mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

.field private mDualModePhoneCM:Lcom/android/internal/telephony/CommandsInterface;

.field private mDualSimId:I

.field private mFinishSwitchPoneMsg:Landroid/os/Message;

.field private mGeminiPhoneHandler:Landroid/os/Handler;

.field private mGeneralStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/IGeneralStrategy;

.field private mGsmActivePhone:Lcom/android/internal/telephony/PhoneBase;

.field private mGsmImsi:Ljava/lang/String;

.field private mGsmPhone:Lcom/android/internal/telephony/PhoneProxy;

.field private mGsmPlmnStrings:[Ljava/lang/String;

.field private mHasSearchedOnCdma:Z

.field private mHasSearchedOnGsm:Z

.field private mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field private mIgnoreSearchedState:Z

.field private mImsiLoaded:Z

.field private mIsFirstRegistration:Z

.field private mNetworkSelectionStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;

.field private mNoServiceQueued:Z

.field private mPrevOpNumeric:Ljava/lang/String;

.field private mPrevRegState:I

.field private mRadioOnFromAirplaneMode:Z

.field private mRadioOnFromSimSwitch:Z

.field private mRadioRebootTime:J

.field private mRegisterSuspend:Z

.field private mSimInserted:Z

.field private mSimInsertedStatus:I

.field private final mSimSwithHandler:Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;

.field private mStartSwitchPoneMsg:Landroid/os/Message;

.field private mUiccCard:Lcom/android/internal/telephony/UiccCard;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUnderSimSwitching:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 5
    .parameter "context"
    .parameter "dualModePhone"
    .parameter "gsmPhone"
    .parameter "handler"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 213
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 199
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mSimInsertedStatus:I

    .line 207
    iput v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCardType:I

    .line 209
    iput v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mPrevRegState:I

    .line 210
    const-string v1, "00000"

    iput-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mPrevOpNumeric:Ljava/lang/String;

    .line 1049
    new-instance v1, Lcom/mediatek/telephony/InternationalRoamingController$1;

    invoke-direct {v1, p0}, Lcom/mediatek/telephony/InternationalRoamingController$1;-><init>(Lcom/mediatek/telephony/InternationalRoamingController;)V

    iput-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    .line 214
    iput-object p1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mContext:Landroid/content/Context;

    .line 215
    check-cast p2, Lcom/android/internal/telephony/PhoneProxy;

    .end local p2
    iput-object p2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    .line 216
    check-cast p3, Lcom/android/internal/telephony/PhoneProxy;

    .end local p3
    iput-object p3, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmPhone:Lcom/android/internal/telephony/PhoneProxy;

    .line 217
    iput-object p4, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGeminiPhoneHandler:Landroid/os/Handler;

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InternationalRoamingController mContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDualModePhone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mGsmPhone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmPhone:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mGeminiPhoneHandler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGeminiPhoneHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iput-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 223
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmPhone:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iput-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmActivePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 224
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getMySimId()I

    move-result v1

    iput v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualSimId:I

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mRadioRebootTime:J

    .line 226
    iput-boolean v4, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mIsFirstRegistration:Z

    .line 228
    invoke-direct {p0}, Lcom/mediatek/telephony/InternationalRoamingController;->initStrategies()V

    .line 231
    new-instance v1, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;-><init>(Lcom/mediatek/telephony/InternationalRoamingController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mSimSwithHandler:Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;

    .line 232
    new-instance v1, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;-><init>(Lcom/mediatek/telephony/InternationalRoamingController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCardTypeHandler:Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;

    .line 235
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhoneCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 236
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhoneCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 237
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhoneCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 238
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhoneCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x5

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 239
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhoneCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x4

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnGSMSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 241
    iget v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualSimId:I

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 242
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 243
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/telephony/InternationalRoamingController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCdmaImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCdmaImsi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/telephony/InternationalRoamingController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmImsi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/mediatek/telephony/InternationalRoamingController;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/telephony/InternationalRoamingController;->loadDualPhoneImsiCompleted(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/mediatek/telephony/InternationalRoamingController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mRadioOnFromAirplaneMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/telephony/InternationalRoamingController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/telephony/InternationalRoamingController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualSimId:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/telephony/InternationalRoamingController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mRadioOnFromSimSwitch:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/telephony/InternationalRoamingController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/mediatek/telephony/InternationalRoamingController;->finishToSwitchPhone()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmActivePhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/UiccCard;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/telephony/InternationalRoamingController;Lcom/android/internal/telephony/UiccCard;)Lcom/android/internal/telephony/UiccCard;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    return-object v0
.end method

.method private calcSwitchPhoneDelayedTime()I
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 598
    iget-object v4, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mContext:Landroid/content/Context;

    const-string v5, "international_network_info"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 599
    .local v2, preference:Landroid/content/SharedPreferences;
    const-string v4, "test.switch.phone.delay"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 600
    .local v3, testDelayTime:I
    if-eq v3, v7, :cond_0

    .line 601
    move v0, v3

    .line 610
    .local v0, delayedTime:I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calcSwitchPhoneDelayedTime: testDelayTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", delayedTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 611
    return v0

    .line 602
    .end local v0           #delayedTime:I
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mRadioRebootTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x15f90

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 604
    const/4 v0, 0x0

    .restart local v0       #delayedTime:I
    goto :goto_0

    .line 606
    .end local v0           #delayedTime:I
    :cond_1
    iget-object v4, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 608
    .local v1, powerManager:Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v0, 0x4e20

    .restart local v0       #delayedTime:I
    :goto_1
    goto :goto_0

    .end local v0           #delayedTime:I
    :cond_2
    const v0, 0x2bf20

    goto :goto_1
.end method

.method private checkSimInsertedStatus(Ljava/lang/String;)I
    .locals 5
    .parameter "iccid"

    .prologue
    const/4 v2, 0x0

    .line 699
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "N/A"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 708
    :cond_0
    :goto_0
    return v2

    .line 702
    :cond_1
    iget-object v3, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mContext:Landroid/content/Context;

    const-string v4, "mediatek_internationalcard_info"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 704
    .local v1, preference:Landroid/content/SharedPreferences;
    const-string v2, "com.mediatek.internationalcard.iccid"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, oldIccid:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 706
    const/4 v2, 0x2

    goto :goto_0

    .line 708
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private clearSavedNetworkInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 855
    const-string v2, "clearSavedNetworkInfo..."

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 856
    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mContext:Landroid/content/Context;

    const-string v3, "international_network_info"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 858
    .local v1, preference:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 859
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "last.phone.type"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 860
    const-string v2, "last.network.mcc"

    const-string v3, "000"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 861
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 862
    return-void
.end method

.method private finishToSwitchPhone()V
    .locals 2

    .prologue
    .line 679
    const-string v0, "finishToSwitchPhone..."

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 680
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mUnderSimSwitching:Z

    .line 681
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mFinishSwitchPoneMsg:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGeminiPhoneHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mFinishSwitchPoneMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iput-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 687
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmPhone:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iput-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmActivePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 689
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mNetworkSelectionStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;->onPostSwitchPhone()V

    .line 690
    return-void
.end method

.method private initStrategies()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 579
    const-class v0, Lcom/mediatek/common/telephony/internationalroaming/strategy/ICardStrategy;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v3

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mContext:Landroid/content/Context;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmPhone:Lcom/android/internal/telephony/PhoneProxy;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/strategy/ICardStrategy;

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/strategy/ICardStrategy;

    iput-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCardStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/ICardStrategy;

    .line 581
    const-class v0, Lcom/mediatek/common/telephony/internationalroaming/strategy/IDataStrategy;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v3

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mContext:Landroid/content/Context;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmPhone:Lcom/android/internal/telephony/PhoneProxy;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/strategy/IDataStrategy;

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/strategy/IDataStrategy;

    iput-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDataStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/IDataStrategy;

    .line 583
    const-class v0, Lcom/mediatek/common/telephony/internationalroaming/strategy/IGeneralStrategy;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v3

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mContext:Landroid/content/Context;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmPhone:Lcom/android/internal/telephony/PhoneProxy;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/strategy/IGeneralStrategy;

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/strategy/IGeneralStrategy;

    iput-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGeneralStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/IGeneralStrategy;

    .line 585
    const-class v0, Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v3

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mContext:Landroid/content/Context;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmPhone:Lcom/android/internal/telephony/PhoneProxy;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;

    iput-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mNetworkSelectionStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;

    .line 588
    return-void
.end method

.method private loadDualPhoneImsiCompleted(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "dualSimId"
    .parameter "cdmaImsi"
    .parameter "gsmImsi"

    .prologue
    .line 794
    iget-boolean v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mImsiLoaded:Z

    if-eqz v2, :cond_0

    .line 795
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMSI has already loaded: mCardType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCardType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCdmaImsi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mGsmImsi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 819
    :goto_0
    return-void

    .line 800
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mImsiLoaded:Z

    .line 801
    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCardStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/ICardStrategy;

    invoke-interface {v2, p2, p3}, Lcom/mediatek/common/telephony/internationalroaming/strategy/ICardStrategy;->parseCardType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCardType:I

    .line 802
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadDualPhoneImsiCompleted: mCardType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCardType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCdmaImsi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mGsmImsi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mRegisterSuspend = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mRegisterSuspend:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 806
    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mContext:Landroid/content/Context;

    const-string v3, "mediatek_internationalcard_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 808
    .local v1, preference:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 809
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "com.mediatek.internationalcard.type"

    iget v3, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCardType:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 810
    const-string v2, "com.mediatek.internationalcard.cdma.imsi"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 811
    const-string v2, "com.mediatek.internationalcard.gsm.imsi"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 812
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 815
    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gsm.internationalcard.type"

    iget v4, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCardType:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 818
    invoke-direct {p0, p2, p3}, Lcom/mediatek/telephony/InternationalRoamingController;->notifySimImsiLoaded(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 865
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IRC]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return-void
.end method

.method private notifySimImsiLoaded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "cdmaImsi"
    .parameter "gsmImsi"

    .prologue
    .line 829
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCardStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/ICardStrategy;

    iget v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualSimId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/mediatek/common/telephony/internationalroaming/strategy/ICardStrategy;->onSimImsiLoaded(ILjava/lang/String;Ljava/lang/String;)V

    .line 830
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDataStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/IDataStrategy;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/common/telephony/internationalroaming/strategy/IDataStrategy;->onSimImsiLoaded(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    return-void
.end method

.method private notifySwitchPhoneStarted()V
    .locals 3

    .prologue
    .line 639
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.intent.action.START_RADIO_TECHNOLOGY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 640
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 641
    const-string v1, "simId"

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getMySimId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 642
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 643
    return-void
.end method

.method private removeNoServiceMessage()V
    .locals 1

    .prologue
    .line 628
    iget-boolean v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mNoServiceQueued:Z

    if-eqz v0, :cond_0

    .line 629
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/InternationalRoamingController;->removeMessages(I)V

    .line 630
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mNoServiceQueued:Z

    .line 632
    :cond_0
    return-void
.end method

.method private saveCurrentNetworkInfo(Ljava/lang/String;)V
    .locals 6
    .parameter "operatorNumeric"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 839
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveCurrentNetworkInfo: operatorNumeric = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 840
    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mContext:Landroid/content/Context;

    const-string v3, "international_network_info"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 842
    .local v1, preference:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 843
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "last.phone.type"

    iget-object v3, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneType()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 844
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_0

    .line 845
    const-string v2, "last.network.mcc"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 848
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 849
    return-void
.end method

.method private sendNoServiceMessage(I)V
    .locals 3
    .parameter "delayedTime"

    .prologue
    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mNoServiceQueued:Z

    .line 621
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/InternationalRoamingController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 622
    return-void
.end method

.method private startToSwitchPhone()V
    .locals 3

    .prologue
    .line 651
    const-string v0, "startToSwitchPhone, notify application and set GSM radio off."

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mUnderSimSwitching:Z

    .line 653
    invoke-direct {p0}, Lcom/mediatek/telephony/InternationalRoamingController;->notifySwitchPhoneStarted()V

    .line 657
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGeminiPhoneHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mStartSwitchPoneMsg:Landroid/os/Message;

    .line 659
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGeminiPhoneHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mFinishSwitchPoneMsg:Landroid/os/Message;

    .line 662
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mStartSwitchPoneMsg:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGeminiPhoneHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mStartSwitchPoneMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mSimSwithHandler:Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 667
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmActivePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mSimSwithHandler:Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPowerOff(Landroid/os/Message;)V

    .line 669
    return-void
.end method

.method private updateSimCardInfoIfNeeded(ILjava/lang/String;)V
    .locals 8
    .parameter "status"
    .parameter "iccid"

    .prologue
    const/16 v7, 0xc8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 720
    iget v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mSimInsertedStatus:I

    if-ne v2, p1, :cond_0

    .line 721
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSimCardInfoIfNeeded with same status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 783
    :goto_0
    return-void

    .line 725
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSimCardInfoIfNeeded: status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iccid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSimInsertedStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mSimInsertedStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 727
    iput p1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mSimInsertedStatus:I

    .line 728
    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mContext:Landroid/content/Context;

    const-string v3, "mediatek_internationalcard_info"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 730
    .local v1, preference:Landroid/content/SharedPreferences;
    packed-switch p1, :pswitch_data_0

    .line 780
    const-string v2, "Should never run into this case."

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 732
    :pswitch_0
    iput-boolean v4, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mSimInserted:Z

    .line 733
    iput-boolean v6, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mImsiLoaded:Z

    .line 736
    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v3, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCardTypeHandler:Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 737
    iput-object v5, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCdmaImsi:Ljava/lang/String;

    .line 738
    iput-object v5, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmImsi:Ljava/lang/String;

    .line 739
    iput v4, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCardType:I

    .line 741
    const-string v2, "updateSimCardInfoIfNeeded with no sim inserted."

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 745
    :pswitch_1
    iput-boolean v6, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mSimInserted:Z

    .line 746
    iput-boolean v4, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mImsiLoaded:Z

    .line 748
    invoke-direct {p0}, Lcom/mediatek/telephony/InternationalRoamingController;->clearSavedNetworkInfo()V

    .line 749
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 750
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "com.mediatek.internationalcard.iccid"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 751
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 753
    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v3, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCardTypeHandler:Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;

    invoke-virtual {v2, v3, v7, v5}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 754
    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGeneralStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/IGeneralStrategy;

    iget v3, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualSimId:I

    invoke-interface {v2, v3}, Lcom/mediatek/common/telephony/internationalroaming/strategy/IGeneralStrategy;->onNewSimInserted(I)V

    goto :goto_0

    .line 758
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :pswitch_2
    iput-boolean v6, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mSimInserted:Z

    .line 761
    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v3, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCardTypeHandler:Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 762
    const-string v2, "com.mediatek.internationalcard.type"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCardType:I

    .line 764
    const-string v2, "com.mediatek.internationalcard.cdma.imsi"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCdmaImsi:Ljava/lang/String;

    .line 765
    const-string v2, "com.mediatek.internationalcard.gsm.imsi"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmImsi:Ljava/lang/String;

    .line 766
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSimCardInfoIfNeeded: mCardType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCardType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCdmaImsi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mGsmImsi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 768
    iget v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCardType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCdmaImsi:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCardType:I

    if-ne v2, v6, :cond_3

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCdmaImsi:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmImsi:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 771
    :cond_2
    iput-boolean v6, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mImsiLoaded:Z

    .line 772
    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCdmaImsi:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmImsi:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/mediatek/telephony/InternationalRoamingController;->notifySimImsiLoaded(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 774
    :cond_3
    iput-boolean v4, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mImsiLoaded:Z

    .line 775
    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v3, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCardTypeHandler:Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;

    invoke-virtual {v2, v3, v7, v5}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 730
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clearCdmaAvoidNetworkList()V
    .locals 3

    .prologue
    .line 395
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 396
    const-string v1, "Start to clear CMDA avoid network list."

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 398
    .local v0, phone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setAvoidSYS(ZLandroid/os/Message;)V

    .line 402
    .end local v0           #phone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    :goto_0
    return-void

    .line 400
    :cond_0
    const-string v1, "Fail to clear avoid network list because it is GSM phone"

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCardStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/ICardStrategy;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/internationalroaming/strategy/ICardStrategy;->dispose()V

    .line 407
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDataStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/IDataStrategy;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/internationalroaming/strategy/IDataStrategy;->dispose()V

    .line 408
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGeneralStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/IGeneralStrategy;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/internationalroaming/strategy/IGeneralStrategy;->dispose()V

    .line 409
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mNetworkSelectionStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;->dispose()V

    .line 411
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhoneCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 412
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhoneCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 413
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhoneCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnPlmnChangeNotification(Landroid/os/Handler;)V

    .line 414
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhoneCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnGSMSuspended(Landroid/os/Handler;)V

    .line 416
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 419
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCardTypeHandler:Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 421
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 422
    return-void
.end method

.method public getDualModePhoneCardType()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCardType:I

    return v0
.end method

.method public getLastNetworkMcc()Ljava/lang/String;
    .locals 4

    .prologue
    .line 379
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mContext:Landroid/content/Context;

    const-string v2, "international_network_info"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 380
    .local v0, preference:Landroid/content/SharedPreferences;
    const-string v1, "last.network.mcc"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLastPhoneType()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 385
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mContext:Landroid/content/Context;

    const-string v2, "international_network_info"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 386
    .local v0, preference:Landroid/content/SharedPreferences;
    const-string v1, "last.phone.type"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 426
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage: msg.what = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 427
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 429
    .local v0, ar:Landroid/os/AsyncResult;
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 569
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Should never run into this case: msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 431
    :pswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_DUAL_PHONE_AVAILABLE: phone type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 432
    invoke-direct {p0}, Lcom/mediatek/telephony/InternationalRoamingController;->removeNoServiceMessage()V

    .line 434
    iget-object v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 435
    iget-object v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object v3, v8

    check-cast v3, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 436
    .local v3, phone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForMccMncChange(Landroid/os/Handler;)V

    .line 437
    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {v3, p0, v8, v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForMccMncChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 440
    .end local v3           #phone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    :cond_1
    iget-object v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGeneralStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/IGeneralStrategy;

    invoke-interface {v8}, Lcom/mediatek/common/telephony/internationalroaming/strategy/IGeneralStrategy;->onDualPhoneRadioAvailable()V

    goto :goto_0

    .line 444
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/telephony/InternationalRoamingController;->removeNoServiceMessage()V

    .line 445
    iget-object v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v8, p0, v9, v10}, Lcom/android/internal/telephony/PhoneProxy;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 447
    const/4 v4, 0x0

    .line 450
    .local v4, radioOnReason:I
    iget-boolean v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mRadioOnFromAirplaneMode:Z

    if-eqz v8, :cond_3

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mRadioRebootTime:J

    .line 452
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mHasSearchedOnGsm:Z

    .line 453
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mHasSearchedOnCdma:Z

    .line 454
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mIgnoreSearchedState:Z

    .line 455
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mIsFirstRegistration:Z

    .line 456
    const/4 v4, 0x1

    .line 457
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mRadioOnFromAirplaneMode:Z

    .line 462
    :cond_2
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_DUAL_PHONE_POWER_ON: radioOnReason = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 463
    iget-object v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGeneralStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/IGeneralStrategy;

    invoke-interface {v8, v4}, Lcom/mediatek/common/telephony/internationalroaming/strategy/IGeneralStrategy;->onDualPhoneRadioOn(I)V

    goto/16 :goto_0

    .line 458
    :cond_3
    iget-boolean v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mRadioOnFromSimSwitch:Z

    if-eqz v8, :cond_2

    .line 459
    const/4 v4, 0x2

    .line 460
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mRadioOnFromSimSwitch:Z

    goto :goto_1

    .line 468
    .end local v4           #radioOnReason:I
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/telephony/InternationalRoamingController;->removeNoServiceMessage()V

    .line 469
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mHasSearchedOnCdma:Z

    .line 470
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mRegisterSuspend:Z

    .line 474
    iget-boolean v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mSimInserted:Z

    if-eqz v8, :cond_4

    .line 475
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 476
    .local v2, mccMnc:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_CDMA_PLMN_CHANGED: mccMnc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 477
    iget-object v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mNetworkSelectionStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;

    invoke-interface {v8, v2}, Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;->onCdmaPlmnChanged(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 479
    .end local v2           #mccMnc:Ljava/lang/String;
    :cond_4
    const-string v8, "Fake EVENT_CDMA_PLMN_CHANGED, no SIM inserted."

    invoke-direct {p0, v8}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 480
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/mediatek/telephony/InternationalRoamingController;->resumeRegistration(II)V

    goto/16 :goto_0

    .line 485
    :pswitch_3
    const-string v8, "EVENT_GSM_PLMN_CHANGED"

    invoke-direct {p0, v8}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 487
    invoke-direct {p0}, Lcom/mediatek/telephony/InternationalRoamingController;->removeNoServiceMessage()V

    .line 488
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mHasSearchedOnGsm:Z

    .line 489
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mRegisterSuspend:Z

    .line 491
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_0

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_0

    .line 492
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/String;

    check-cast v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmPlmnStrings:[Ljava/lang/String;

    .line 493
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmPlmnStrings:[Ljava/lang/String;

    array-length v8, v8

    if-ge v1, v8, :cond_0

    .line 494
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_GSM_PLMN_CHANGED: i = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mGsmPlmnStrings="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmPlmnStrings:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 501
    .end local v1           #i:I
    :pswitch_4
    const-string v8, "EVENT_GSM_SUSPENDED"

    invoke-direct {p0, v8}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 502
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_0

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_0

    .line 503
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    check-cast v8, [I

    const/4 v9, 0x0

    aget v7, v8, v9

    .line 504
    .local v7, suspendedSession:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_GSM_SUSPENDED: suspendedSession = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 505
    iget-object v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mNetworkSelectionStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;

    iget-object v9, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmPlmnStrings:[Ljava/lang/String;

    invoke-interface {v8, v9, v7}, Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;->onGsmSuspend([Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 510
    .end local v7           #suspendedSession:I
    :pswitch_5
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Landroid/telephony/ServiceState;

    .line 511
    .local v6, serviceState:Landroid/telephony/ServiceState;
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v5

    .line 512
    .local v5, regState:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_SERVICE_STATE_CHANGED: regState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 514
    const/4 v8, 0x1

    if-eq v5, v8, :cond_5

    const/4 v8, 0x5

    if-ne v5, v8, :cond_9

    .line 517
    :cond_5
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mHasSearchedOnGsm:Z

    .line 518
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mHasSearchedOnCdma:Z

    .line 519
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mIgnoreSearchedState:Z

    .line 520
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mIsFirstRegistration:Z

    .line 523
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/telephony/InternationalRoamingController;->saveCurrentNetworkInfo(Ljava/lang/String;)V

    .line 524
    invoke-direct {p0}, Lcom/mediatek/telephony/InternationalRoamingController;->removeNoServiceMessage()V

    .line 526
    iget v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mPrevRegState:I

    if-ne v5, v8, :cond_6

    iget-object v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mPrevOpNumeric:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 528
    :cond_6
    const/4 v8, 0x5

    if-ne v5, v8, :cond_8

    .line 529
    iget-object v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDataStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/IDataStrategy;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/mediatek/common/telephony/internationalroaming/strategy/IDataStrategy;->onRegisterRoamingNetwork(Ljava/lang/String;)V

    .line 552
    :cond_7
    :goto_3
    iput v5, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mPrevRegState:I

    .line 553
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mPrevOpNumeric:Ljava/lang/String;

    goto/16 :goto_0

    .line 532
    :cond_8
    iget-object v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDataStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/IDataStrategy;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/mediatek/common/telephony/internationalroaming/strategy/IDataStrategy;->onRegisterHomeNetwork(Ljava/lang/String;)V

    goto :goto_3

    .line 536
    :cond_9
    iget-object v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    .line 537
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mHasSearchedOnGsm:Z

    .line 542
    :cond_a
    :goto_4
    if-nez v5, :cond_7

    iget-object v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneProxy;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_7

    iget-object v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v8, v9, :cond_7

    .line 545
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No service: mNoServiceQueued = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mNoServiceQueued:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 546
    iget-boolean v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mNoServiceQueued:Z

    if-nez v8, :cond_7

    .line 547
    invoke-direct {p0}, Lcom/mediatek/telephony/InternationalRoamingController;->calcSwitchPhoneDelayedTime()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/mediatek/telephony/InternationalRoamingController;->sendNoServiceMessage(I)V

    goto :goto_3

    .line 538
    :cond_b
    iget-object v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_a

    .line 539
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mHasSearchedOnCdma:Z

    goto :goto_4

    .line 557
    .end local v5           #regState:I
    .end local v6           #serviceState:Landroid/telephony/ServiceState;
    :pswitch_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_RADIO_NO_SERVICE: mIgnoreSearchedState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mIgnoreSearchedState:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 558
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mIgnoreSearchedState:Z

    .line 559
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mIsFirstRegistration:Z

    .line 560
    iget-object v8, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mNetworkSelectionStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;

    iget-object v9, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneType()I

    move-result v9

    invoke-interface {v8, v9}, Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;->onNoService(I)V

    goto/16 :goto_0

    .line 565
    :pswitch_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Empty cdma network list: exception = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public hasSearchedOnCdma()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mHasSearchedOnCdma:Z

    return v0
.end method

.method public hasSearchedOnGsm()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mHasSearchedOnGsm:Z

    return v0
.end method

.method public ignoreSearchedState()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mIgnoreSearchedState:Z

    return v0
.end method

.method public isFirstRegistration()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mIsFirstRegistration:Z

    return v0
.end method

.method public isHomeNetwork(Ljava/lang/String;)Z
    .locals 5
    .parameter "mcc"

    .prologue
    .line 336
    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mContext:Landroid/content/Context;

    const-string v3, "international_network_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 337
    .local v0, preference:Landroid/content/SharedPreferences;
    const-string v2, "test.home.network.mcc"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, testMcc:Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHomeNetwork: testMcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 343
    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGeneralStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/IGeneralStrategy;

    invoke-interface {v2, p1}, Lcom/mediatek/common/telephony/internationalroaming/strategy/IGeneralStrategy;->isHomeNetwork(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public isUnderSimSwitching()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mUnderSimSwitching:Z

    return v0
.end method

.method public needToBootOnCDMA(Ljava/lang/String;)Z
    .locals 3
    .parameter "iccid"

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/InternationalRoamingController;->checkSimInsertedStatus(Ljava/lang/String;)I

    move-result v0

    .line 358
    .local v0, simInsertedStatus:I
    invoke-direct {p0, v0, p1}, Lcom/mediatek/telephony/InternationalRoamingController;->updateSimCardInfoIfNeeded(ILjava/lang/String;)V

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needToBootOnCDMA: iccid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",simInsertedStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 361
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mNetworkSelectionStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;->needToBootOnCdma()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public needToBootOnGsm(Ljava/lang/String;)Z
    .locals 3
    .parameter "iccid"

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/InternationalRoamingController;->checkSimInsertedStatus(Ljava/lang/String;)I

    move-result v0

    .line 349
    .local v0, simInsertedStatus:I
    invoke-direct {p0, v0, p1}, Lcom/mediatek/telephony/InternationalRoamingController;->updateSimCardInfoIfNeeded(ILjava/lang/String;)V

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needToBootOnGsm: iccid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",simInsertedStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mNetworkSelectionStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;->needToBootOnGsm()Z

    move-result v1

    return v1
.end method

.method public resumeRegistration(II)V
    .locals 3
    .parameter "networkMode"
    .parameter "suspendedSession"

    .prologue
    const/4 v2, 0x0

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeRegistration: networkMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", suspendedSession = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRegisterSuspend = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mRegisterSuspend:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 369
    if-nez p1, :cond_0

    .line 370
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhoneCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    .line 374
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mRegisterSuspend:Z

    .line 375
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneBase;->resumeCdmaRegister(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public switchPhone(IZ)I
    .locals 8
    .parameter "mode"
    .parameter "fromUser"

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x2

    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchPhone: mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fromUser = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", phone type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 252
    if-eqz p2, :cond_0

    .line 253
    iput-boolean v3, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mHasSearchedOnGsm:Z

    .line 254
    iput-boolean v3, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mHasSearchedOnCdma:Z

    .line 255
    iput-boolean v7, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mIgnoreSearchedState:Z

    .line 258
    :cond_0
    iget-boolean v4, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mUnderSimSwitching:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mGsmActivePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_3

    .line 259
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchPhone error, mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mUnderSimSwitching = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mUnderSimSwitching:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 261
    const/4 v1, -0x2

    .line 300
    :cond_2
    :goto_0
    return v1

    .line 264
    :cond_3
    iget-boolean v4, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mSimInserted:Z

    if-nez v4, :cond_4

    .line 265
    const-string v3, "switchPhone failed because there is no SIM inserted."

    invoke-direct {p0, v3}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 266
    const/4 v1, -0x4

    goto :goto_0

    .line 271
    :cond_4
    iget-object v4, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneType()I

    move-result v0

    .line 272
    .local v0, phoneType:I
    iget v4, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mCardType:I

    if-ne v4, v6, :cond_5

    if-ne v0, v6, :cond_5

    .line 274
    const-string v3, "switchPhone failed because card type is single CDMA."

    invoke-direct {p0, v3}, Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V

    .line 275
    const/4 v1, -0x6

    goto :goto_0

    .line 278
    :cond_5
    move v2, p1

    .line 279
    .local v2, targetMode:I
    if-ne p1, v6, :cond_6

    .line 280
    if-ne v0, v6, :cond_9

    .line 281
    const/4 v2, 0x0

    .line 287
    :cond_6
    :goto_1
    if-ne v0, v6, :cond_7

    if-eq v2, v7, :cond_8

    :cond_7
    if-ne v0, v7, :cond_a

    if-nez v2, :cond_a

    .line 289
    :cond_8
    const/4 v1, -0x3

    goto :goto_0

    .line 283
    :cond_9
    const/4 v2, 0x1

    goto :goto_1

    .line 294
    :cond_a
    iget-object v4, p0, Lcom/mediatek/telephony/InternationalRoamingController;->mNetworkSelectionStrategy:Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;

    invoke-interface {v4}, Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;->onPreSwitchPhone()I

    move-result v1

    .line 295
    .local v1, preCheck:I
    if-nez v1, :cond_2

    .line 299
    invoke-direct {p0}, Lcom/mediatek/telephony/InternationalRoamingController;->startToSwitchPhone()V

    move v1, v3

    .line 300
    goto :goto_0
.end method
