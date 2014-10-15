.class public Lcom/mediatek/audioprofile/AudioProfileState$Builder;
.super Ljava/lang/Object;
.source "AudioProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAlarmVolume:I

.field private mDtmfToneEnabled:Z

.field private mHapticFeedbackEnabled:Z

.field private mLockScreenSoundEnabled:Z

.field private mNoficationUseRingVolume:Z

.field private mNotificationStream:Landroid/net/Uri;

.field private mNotificationVolume:I

.field private final mProfileKey:Ljava/lang/String;

.field private mRingerStream:Landroid/net/Uri;

.field private mRingerVolume:I

.field private mSIPCallStream:Landroid/net/Uri;

.field private mSimId:J

.field private mSoundEffectEnbled:Z

.field private mVibrationEnabled:Z

.field private mVideoCallStream:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "profileKey"

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerStream:Landroid/net/Uri;

    .line 96
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationStream:Landroid/net/Uri;

    .line 97
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVideoCallStream:Landroid/net/Uri;

    .line 98
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_SIP_STREAM_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mSIPCallStream:Landroid/net/Uri;

    .line 99
    iput v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerVolume:I

    .line 100
    iput v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationVolume:I

    .line 101
    iput v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mAlarmVolume:I

    .line 102
    iput-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVibrationEnabled:Z

    .line 103
    iput-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mDtmfToneEnabled:Z

    .line 104
    iput-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mSoundEffectEnbled:Z

    .line 105
    iput-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mLockScreenSoundEnabled:Z

    .line 106
    iput-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mHapticFeedbackEnabled:Z

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNoficationUseRingVolume:Z

    .line 108
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mSimId:J

    .line 117
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mProfileKey:Ljava/lang/String;

    .line 118
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mProfileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mSoundEffectEnbled:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mDtmfToneEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mHapticFeedbackEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mLockScreenSoundEnabled:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNoficationUseRingVolume:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mSimId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerStream:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationStream:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVideoCallStream:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mSIPCallStream:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerVolume:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mAlarmVolume:I

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationVolume:I

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVibrationEnabled:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Lcom/mediatek/audioprofile/AudioProfileState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/audioprofile/AudioProfileState;-><init>(Lcom/mediatek/audioprofile/AudioProfileState$Builder;Lcom/mediatek/audioprofile/AudioProfileState$1;)V

    return-object v0
.end method

.method public dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mDtmfToneEnabled:Z

    .line 185
    return-object p0
.end method

.method public hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mHapticFeedbackEnabled:Z

    .line 221
    return-object p0
.end method

.method public lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mLockScreenSoundEnabled:Z

    .line 209
    return-object p0
.end method

.method public ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "voiceCallUri"
    .parameter "notificationUri"
    .parameter "videoCallUri"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerStream:Landroid/net/Uri;

    .line 133
    iput-object p2, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationStream:Landroid/net/Uri;

    .line 134
    iput-object p3, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVideoCallStream:Landroid/net/Uri;

    .line 135
    return-object p0
.end method

.method public ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "voiceCallUri"
    .parameter "notificationUri"
    .parameter "videoCallUri"
    .parameter "sipCallUri"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerStream:Landroid/net/Uri;

    .line 140
    iput-object p2, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationStream:Landroid/net/Uri;

    .line 141
    iput-object p3, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVideoCallStream:Landroid/net/Uri;

    .line 142
    iput-object p4, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mSIPCallStream:Landroid/net/Uri;

    .line 143
    return-object p0
.end method

.method public simId(J)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "simId"

    .prologue
    .line 232
    iput-wide p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mSimId:J

    .line 233
    return-object p0
.end method

.method public soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mSoundEffectEnbled:Z

    .line 197
    return-object p0
.end method

.method public vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVibrationEnabled:Z

    .line 173
    return-object p0
.end method

.method public volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "ringerVolume"
    .parameter "notificationVolume"
    .parameter "alarmVolume"

    .prologue
    .line 158
    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerVolume:I

    .line 159
    iput p2, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationVolume:I

    .line 160
    iput p3, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mAlarmVolume:I

    .line 161
    return-object p0
.end method
